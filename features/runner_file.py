#!/usr/bin/env python
import json
import os
import sys
import traceback
from argparse import ArgumentParser
from pathlib import Path
from behave import runner
from behave.configuration import Configuration

script_folder = os.path.dirname(__file__)
project_folder = os.path.abspath(os.path.join(script_folder, os.pardir))

sys.path.append(os.path.abspath(os.path.join(script_folder, os.pardir, 'packages')))
sys.path.append(os.path.abspath(os.path.join(script_folder, os.pardir, 'features')))

from infra import versions, logger, reporter, config
from screens.screens_factory import ScreensFactory
from utils import misc_utils, sub_process, files_utils

__author__ = 'Amr Shaloudi'
__version__ = versions.get_version('BDD')

log = logger.get_logger(__name__)
rep = reporter.get_reporter()

exit_code = 0


def setup():
    # Read run options from command
    opt_dict = set_opt_dict()
    runner.Context.opt_dict = opt_dict

    global feature_path
    feature_path = opt_dict['feature_file_path'].replace('\\', '/')
    runner.Context.feature_file_path = feature_path
    runner.Context.feature_file_name = Path(runner.Context.feature_file_path).stem
    runner.Context.result_folder_path = runner.Context.opt_dict['results_path']

    # Create or clear results path
    files_utils.clear_or_create_folder(runner.Context.result_folder_path)

    # Init logger and report
    init_logger_reporter(opt_dict)

    # Init ScreensFactory
    runner.Context.screens_manager = ScreensFactory()

    # context._config.driver = None


def init_logger_reporter(opt_dict):
    # Init log
    log_files = [
        {'levelname': 'DEBUG',
         'path': os.path.join(runner.Context.result_folder_path, f'{runner.Context.feature_file_name}_debug.txt'),
         'summary': False},
        {'levelname': 'INFO',
         'path': os.path.join(runner.Context.result_folder_path, f'{runner.Context.feature_file_name}_info.txt'),
         'summary': False, 'use_for_collect': True},
        {'levelname': 'ERROR',
         'path': os.path.join(runner.Context.result_folder_path, f'{runner.Context.feature_file_name}_error.txt'),
         'tempfile': True, 'log_same_level': True},
        {'levelname': 'WARNING',
         'path': os.path.join(runner.Context.result_folder_path, f'{runner.Context.feature_file_name}_warning.txt'),
         'tempfile': True, 'log_same_level': True},
        {'levelname': 'CRITICAL',
         'path': os.path.join(runner.Context.result_folder_path, f'{runner.Context.feature_file_name}_critical.txt'),
         'tempfile': True, 'log_same_level': True}]

    logger.set_logger(log_files, debug_to_stdout=opt_dict.get('verbose', False))
    log.info('Starting - Logger created - start logging...')
    runner.Context.log_files = log_files

    rep.set_hdlr(runner.Context.result_folder_path, runner.Context.feature_file_name, create_fail_report=True)
    rep.set_headers_title(runner.Context.feature_file_name)


def test():
    global exit_code
    log.info(
        f'*** Starting Test: {runner.Context.opt_dict.get("browser", "chrome")} {runner.Context.feature_file_name} ***')
    f = feature_path.replace('\\', '/')
    failed = True
    try:
        f = os.path.join(Path(__file__).parent, f)
        args = f"'{f}' -f allure_behave.formatter:AllureFormatter -o '{runner.Context.result_folder_path}'"
        log.debug('^^^^^^^ before calling Configuration(args) ^^^^^^^^')
        runner_config = Configuration(args)
        log.debug('^^^^^^^ after calling Configuration(args) ^^^^^^^^')
        r = runner.Runner(runner_config)
        log.debug('^^^^^^^^ calling runner.run() ^^^^^^^^')
        failed = r.run()
    except Exception as e:
        log.debug("*** Exception: %s" % e)
        log.debug('Traceback: %s' % traceback.print_exc())

    exit_code = 0
    if failed:
        exit_code = 4


def teardown():
    global exit_code
    cmd = f'{config.local_allure_executable} generate --clean "{runner.Context.result_folder_path}" -o "{runner.Context.result_folder_path}/report"'
    log.info(f'Local Allure report cmd: {cmd}')
    if config.current_os == 'Mac':
        sub_process.sub_popen('chmod', '+x', config.local_allure_executable)
    create_environment_properties({'Computer': config.client_name}, os.path.join(runner.Context.result_folder_path))
    create_executor_properties(runner.Context.result_folder_path)
    result, error = sub_process.sub_popen(cmd, shell=True, return_err=True)
    if 'successfully generated' not in result:
        log.error(f'Error in generating allure report {result}')
        log.error(f'Error in allure report {error}')
    else:
        update_report_name(os.path.join(runner.Context.result_folder_path), runner.Context.feature_file_name)
        add_support_to_change_iframe_height(os.path.join(runner.Context.result_folder_path))
        cmd_to_open_report = f'{config.local_allure_executable} open "{runner.Context.result_folder_path}/report"'
        log.info(f'Open Report: {cmd_to_open_report}')
        url = f'{runner.Context.result_folder_path}/report/'
        log.info(f'Report Link: {url}')
    log.debug('^^^^^^^ starting teardown() ^^^^^^')


def update_report_name(allure_report_path, name):
    ''' Add to Allure report header the feature file name '''
    summary_file_path = os.path.join(allure_report_path, 'report', 'widgets', 'summary.json')
    if os.path.exists(summary_file_path):
        with open(summary_file_path) as f:
            data = json.load(f)

        data['reportName'] = f'Test Report - feature: {name}'

        with open(summary_file_path, 'w') as outfile:
            json.dump(data, outfile, indent=4, sort_keys=True)


def add_support_to_change_iframe_height(allure_report_path):
    app_js = os.path.join(allure_report_path, 'report', 'app.js')
    if os.path.exists(app_js):
        with open(app_js, encoding="utf8") as f:
            data = f.read()
        data = data.replace('<iframe class', '<iframe  onload = "resizeIframe(this)" class')
        with open(app_js, 'w', encoding="utf8") as outfile:
            outfile.write(data)

    index_html = os.path.join(allure_report_path, 'report', 'index.html')
    if os.path.exists(index_html):
        with open(index_html) as f:
            data = f.read()
        data = data.replace('</head>',
                            "<script>function resizeIframe(obj) {obj.style.height=obj.contentWindow.document.documentElement.scrollHeight + 'px';}</script></head>")
        with open(index_html, 'w') as outfile:
            outfile.write(data)


def create_environment_properties(res_dict, allure_report_path):
    ''' Generate a properties file, to be used by Allure report, with basic info '''
    text_to_file = ''

    for k, v in res_dict.items():
        text_to_file += f'{k}={v}\n'

    env_file = open(os.path.join(allure_report_path, 'environment.properties'), "w")
    env_file.write(text_to_file)
    env_file.close()


def create_executor_properties(allure_report_path):
    ''' Generate an executor info file to be used in allure report '''
    text_to_file = '{ "name" : "%s","type": "jenkins","buildName": "Report Folder","buildUrl": "../" }' % misc_utils.get_host_name()

    with open(os.path.join(allure_report_path, 'executor.json'), "w") as executor:
        executor.write(text_to_file)


def set_opt_dict():
    parser = ArgumentParser()
    # opt_dict with args provided from Listener
    opt_dict, unknown = read_options(parser)
    return opt_dict


def read_options(parser):
    parser.add_argument('--bdd_args', dest='bdd_args', metavar='STRING',
                        help='BDD Args dict', action="store", type=str)
    parser.add_argument('--results_path', dest='results_path', metavar='STRING',
                        help='BDD Args dict', action="store", type=str)

    args, unknown = parser.parse_known_args()
    opt_dict = vars(args)

    try:
        d = eval(opt_dict['bdd_args'])
        for k, v in d.items():
            if type(v) is str:
                opt_dict[k] = misc_utils.str_to_bool_int(v)
            else:
                opt_dict[k] = v
    except KeyError:
        log.error('Missing <bdd_args> in arguments pass to test.')
        raise
    except NameError:
        log.error('Failed to run eval() with <bdd_args>. string is not as dict format.')
        raise
    except SyntaxError:
        log.error(
            'There is something wrong with the arguments. make sure to wrap the bdd_args like this: \"{\'key\':\'value\'}\"')

    return opt_dict, unknown


def main():
    global exit_code
    try:
        exit_code = 0
        setup()
        log.info('*** BDD Setup ended ***')
        log.info('-' * 150)
        test()
        log.info('*** BDD Test ended ***')
        log.info('-' * 150)
    except Exception as e:
        log.exception(f'Test() exited with exception {e}')
        exit_code = 4
    teardown()
    log.info('finished')
    return exit_code


if __name__ == '__main__':
    sys.exit(main())
