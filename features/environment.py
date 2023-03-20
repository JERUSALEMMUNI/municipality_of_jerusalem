import copy
import uuid

from behave.model import Scenario
from behave.model_core import Status
from webdriver_manager.chrome import ChromeDriverManager

from infra import reporter, logger
from infra.jm_chrome_webdriver import JMChromeWebDriver

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


def handle_alias_replacement_in_background(context):
    for feature in context._runner.features:
        if feature.background:
            handle_alias_replacement(context, feature.background)


def assign_new_scenarios_list_to_features(context, scenarios_dict):
    for feature in context._runner.features:
        feature.scenarios = scenarios_dict[feature.name]


def before_all(context):
    context._config.current_page = None
    init_webdriver(context)
    scenarios_dict = {}
    get_all_scenarios(context, scenarios_dict)
    duplicate_scenario_for_stability(context, scenarios_dict)
    handle_alias_replacement_in_background(context)
    assign_new_scenarios_list_to_features(context, scenarios_dict)


def handle_alias_replacement(context, scenario):
    scenario.name = scenario.name.replace('@TEMP_EMAIL_ADDRESS', context.mailbox.address)
    for step in scenario.steps:
        step.name = step.name.replace('@TEMP_EMAIL_ADDRESS', context.mailbox.address)


def get_all_scenarios(context, scenarios_dict):
    for feature in context._runner.features:
        temp_list = []
        for scenario in feature.scenarios:
            if hasattr(scenario, 'scenarios'):
                examples_scenarios = scenario.scenarios
                for ex_sc in examples_scenarios:
                    ex_sc.tags = scenario.tags
                temp_list.extend(examples_scenarios)
            else:
                temp_list.append(scenario)
        scenarios_dict[feature.name] = temp_list


def init_webdriver(context):
    browser = context.opt_dict.get('browser', 'chrome')
    if browser == 'chrome':
        driver = JMChromeWebDriver(ChromeDriverManager().install())
        context._config.driver = driver


def duplicate_scenario_for_stability(context, scenarios_dict):
    for feature_name, scenarios in scenarios_dict.items():
        temp_list = []
        for scenario in scenarios:
            handle_alias_replacement(context, scenario)
            steps = copy.deepcopy(scenario.steps)
            new_scenario = Scenario(scenario.filename, scenario.line, scenario.keyword, scenario.name,
                                    tags=scenario.tags, steps=steps)
            new_scenario.feature = scenario.feature
            new_scenario.background = scenario.background
            temp_list.append(scenario)
            temp_list.append(new_scenario)
        scenarios_dict[feature_name] = temp_list


def before_feature(context, feature):
    log.info(f'----- Start Feature - {feature.name} -----')
    context._config.current_feature = feature
    context._config.current_scenario_index = 0


def before_scenario(context, scenario):
    scenario.starting_scenario_msg = f'----- Start Scenario - {scenario.name} -----'
    log.info(scenario.starting_scenario_msg)
    # if there is a failed step in the scenario, the scenario will continue
    scenario.continue_after_failed_step = True
    context._config.current_scenario = scenario


def before_step(context, step):
    log.info(f'----- Start Step - {step.name} -----')


def after_step(context, step):
    if context._config.current_page:
        try:
            context._config.current_page.widgets.current_step = context._config.current_page.widgets.get('page_steps').get_step_name()
        except:
            context._config.current_page.widgets.current_step = ''
    # log.info(f"hellossssssssssssssssssssssss {context._config.current_page.widgets.current_step}")
    step_pass = True
    if step.status == Status.failed:
        step_pass = False
        log.exception(f'Exception type: {type(step.exception)}\n'
                      f'Exception: {step.exception}\n'
                      f'Exc_Traceback: {step.exc_traceback.tb_frame.f_locals["error"]}')

    if not step_pass:
        log.debug(f'Take ScreenShot after failure for step {step.name}')
        screenshot = context.failure_screenshot
        if context.user_data.get('screenshot'):
            screenshot = context.user_data.get('screenshot')
            context.user_data['screenshot'] = None
        else:
            context._config.driver.save_screenshot(screenshot)
        rep.add_image_to_step(screenshot, "ScreenShot After Failure")
    log.info(f'----- End Step - {step.name} -----')


def after_scenario(context, scenario):
    current_feature = context._config.current_feature
    current_scenario = context._config.current_scenario

    current_scenario_index = context._config.current_scenario_index
    scenario_index = current_feature.scenarios.index(current_scenario)
    current_scenario_index = scenario_index if current_scenario_index < scenario_index else current_scenario_index
    if scenario.status.name != 'passed':
        log_debug_file = [f['path'] for f in context.log_files if f['levelname'] == 'DEBUG'][0]
        with open(log_debug_file, 'r', encoding='utf-16') as e:
            scenario_log = e.readlines()
        log_start_index = scenario_log.index(
            [i for i in reversed(scenario_log) if scenario.starting_scenario_msg in i][0])

        scenario_log_file = log_debug_file.replace('.txt', f'{uuid.uuid4().hex}.txt')
        with open(scenario_log_file, 'w', encoding='utf-16') as e:
            e.write('\n'.join(scenario_log[log_start_index:-1]))
        try:
            rep.add_text_file_to_step(scenario_log_file, 'scenario log')
        except PermissionError as e:
            log.warning(f'{scenario_log_file} - {e.args[0]}')

        for step in scenario.steps:
            if step.exception and 'assert' not in str(type(step.exception)):
                context.screens_manager.screens = {}
                context._config.current_page = None
                break
        else:
            if (current_scenario_index + 1) < len(current_feature.scenarios) and current_scenario.name == \
                    current_feature.scenarios[current_scenario_index + 1].name:
                current_feature.scenarios.pop(current_scenario_index + 1)
    else:
        if (current_scenario_index + 1) < len(current_feature.scenarios) \
                and current_scenario.name == current_feature.scenarios[current_scenario_index + 1].name:
            current_feature.scenarios.pop(current_scenario_index + 1)

    context._config.current_scenario_index = current_scenario_index + 1
    log.info(f'----- End Scenario - {scenario.name} -----')


def after_all(context):
    if hasattr(context._config, 'driver'):
        log.info('Close Browser')
        context._config.driver.quit()
