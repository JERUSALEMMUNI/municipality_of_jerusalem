import time
import allure
from behave import *
from bs4 import BeautifulSoup
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from features.steps.steps_locators.general_locators import GeneralLocators
from infra import logger, reporter, custom_exceptions as ce

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@given('Navigate to "{screen_name}" form')
def navigate_to_screen(context, screen_name):
    driver = context._config.driver
    current_page = context.screens_manager.create_screen([screen_name], driver=driver)
    if (context._config.current_page and context._config.current_page.page_title != current_page.page_title) \
            or context._config.current_page is None:
        context._config.current_page = current_page
        current_page.navigate_to_page_url()
        for element in current_page.main_elements_to_wait_when_load:
            # wait method to wait the element
            widget = current_page.widgets.get_without_set_element(element)
            driver.wait_medium_for_presence_of_element(widget.locator['By'], widget.locator['Value'])
    allure.dynamic.link(f'{context._config.current_page.driver.current_url}', "Step link",
                        "click here to see the link of tested step")


@given('Navigate to "{screen_name}" form and reach step "{dst_step}"')
def navigate_to_screen_specific_step(context, screen_name, dst_step):
    driver = context._config.driver
    current_page = context.screens_manager.create_screen([screen_name], driver=driver)

    if context._config.current_page and context._config.current_page.page_title == current_page.page_title:
        widget = context._config.current_page.widgets["page_steps"]
        current_step_name = widget.get_step_name()
        if current_step_name != dst_step:
            navigate_to_step_in_screen(context, current_page, dst_step)
    elif (context._config.current_page and context._config.current_page.page_title != current_page.page_title) \
            or (context._config.current_page is None):
        navigate_to_step_in_screen(context, current_page, dst_step)


def navigate_to_step_in_screen(context, current_page, dst_step):
    context._config.current_page = None
    context.execute_steps(f'''Given Navigate to "{current_page.page_title}" form''')
    current_page.fill_form_to_reach_step(dst_step)


@when('checked if "{text}" is the text of "{widget_name}"')
def check_text_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.check_text(text, False)


@then('field "{widget_name}" has invalid value')
def field_has_invalid_value(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.is_invalid:
        log.info(f"The value at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("wrong_value", f"The value at field {widget_name} is considered "
                                             f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@then('field "{widget_name}" has valid value')
def field_has_valid_value(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    loop = widget.is_invalid
    log.info(loop)
    noop = widget.is_valid
    log.info(noop)
    assert widget.is_invalid is False and widget.is_valid is True, "Field considered as invalid"


@when('test temp')
def click_buttonsdfsdfsd(context):
    emails = context.mailbox.get_messages()
    count_of_emails = len(emails)
    from selenium.webdriver.common.by import By
    context._config.current_page.driver.find_element(By.XPATH,
                                                     '//*[@id="contentToConvert"]/div/div/form/app-first-step/div/lib-identification/div/lib-otp-identification/div/otp-dialog/p-dialog/div/div/div[2]/div[2]/div[2]/button[2]').click()
    while len(context.mailbox.get_messages()) != count_of_emails + 1:
        time.sleep(3)
    email_body = context.mailbox.get_messages()[-1].html_body
    password = email_body.split('סיסמתך לכניסה חד פעמית לשירות הדיגיטלי של עיריית ירושלים היא ')[1].split('</div>')[0]
    time.sleep(3)
    context._config.current_page.driver.find_element(By.XPATH,
                                                     '//*[@id="contentToConvert"]/div/div/form/app-first-step/div/lib-identification/div/lib-otp-identification/div/otp-dialog/p-dialog/div/div/div[2]/div[2]/div[1]/lib-input-text/div/input').send_keys(
        password)
    context._config.current_page.driver.find_element(By.XPATH,
                                                     '//*[@id="contentToConvert"]/div/div/form/app-first-step/div/lib-identification/div/lib-otp-identification/div/otp-dialog/p-dialog/div/div/div[2]/div[2]/div[1]/button').click()
    time.sleep(5)


@then('check if "{widget_name}" error is "{error_expectation}"')
def error_msg(context, widget_name, error_expectation):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.is_invalid:
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.get_error_message(error_expectation):
        log.info(f"The error value at field is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              "incorrect or missing error value and considered as valid")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@then('from parent "{parent}" check if "{widget_name}" error is "{error_expectation}"')
def error_msg(context, parent, widget_name, error_expectation):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    assert widget.get_error_message(error_expectation), "Incorrect error expectation message"


@when('open disabled list')
def open_special_list(context):
    context._config.current_page.open_disabled_list()


@when('close disabled list')
def close_special_list(context):
    context._config.current_page.close_disabled_list()


@Then('Back to previous page')
def back_to_prev_page(context):
    context._config.driver.execute_script("window.history.go(-1)")
    context.screens_manager.screens = {}
    context._config.current_page = None


@Then('Validate current page is "{page_name}"')
def back_to_prev_page(context, page_name):
    assert page_name in context._config.driver.current_url, "Error, Wrong page url"


@When('1st wait for email that contains pin code and link')
def check_email(context):
    emails = context.mailbox.get_messages()
    context.count_of_emails = len(emails)
    wait_for_new_email(context, context.count_of_emails)
    email_body = context.mailbox.get_messages()[0].html_body
    context.user_data['email_body'] = email_body
    if email_body is None:
        rep.add_label_to_step("No email received", "E-mail is not received")
        raise AssertionError('No email received')


@when('2nd click on link and fill email "{email}" pin code')
def fill_pincode_and_click_link(context, email):
    # Open the URL in a new window
    if context.user_data['email_body'] == None:
        rep.add_label_to_step("No email received", "E-mail is not received")
        raise AssertionError('No email received')
    soup = BeautifulSoup(context.user_data['email_body'], 'html.parser')
    value_div = soup.find('div', {
        'style': 'direction: rtl; text-align: right;font-size: 20px;font-weight: bold;color : #ec9f0a;'})
    context.user_data['value'] = value_div.text.strip()
    if context.user_data['value'] is None:
        rep.add_label_to_step("No pin code", "pin code is not received from email")

    context._config.driver.execute_script("window.open('{}', '_blank');".format(GeneralLocators.validation_link))
    context._config.driver.switch_to.window(context._config.driver.window_handles[-1])
    WebDriverWait(context._config.driver, 30).until(EC.presence_of_element_located(GeneralLocators.form_number))
    context._config.driver.find_element(*GeneralLocators.form_number).send_keys(context.user_data['value'])
    context._config.driver.find_element(*GeneralLocators.id_number).send_keys("3327")
    context._config.driver.find_element(*GeneralLocators.email).send_keys(email)
    context._config.driver.find_element(*GeneralLocators.send_message_button).click()


@when('3rd wait for second email to get "קוד האימות"')
def get_second_pin_code(context):
    if context.user_data['email_body'] == None:
        rep.add_label_to_step("No email received", "E-mail is not received")
        raise AssertionError('No email recieved')
    wait_for_new_email(context, context.count_of_emails + 1)
    email_body2 = context.mailbox.get_messages()[0].html_body
    if email_body2 is None:
        rep.add_label_to_step("No email received", "E-mail is not received")
        raise AssertionError('No email received')
    value2 = email_body2.split('קוד האימות שלך הוא: ')[1].split('<br />')[0]
    if value2 is None:
        rep.add_label_to_step("No pin code", "pin code is not received from email")
    WebDriverWait(context._config.driver, 30).until(EC.presence_of_element_located(GeneralLocators.fill_code_field))
    context._config.driver.find_element(*GeneralLocators.fill_code_field).send_keys(value2)
    context._config.driver.find_element(*GeneralLocators.click_link_request).click()
    WebDriverWait(context._config.driver, 30).until(EC.presence_of_element_located(GeneralLocators.see_form))
    context._config.driver.find_element(*GeneralLocators.see_form).click()
    context._config.driver.switch_to.window(context._config.driver.window_handles[-1])
    WebDriverWait(context._config.driver, 30).until(
        EC.presence_of_element_located((By.XPATH, f"//*[contains(text(),'מספר בקשה: {context.user_data['value']}')]")))
    checkId = context._config.driver.find_element(By.XPATH, f"//*[contains(text(),'מספר בקשה: {context.user_data['value']}')]")
    if "ContractorEmpRights?sess" in context._config.driver.current_url:
        rep.add_label_to_step('reached destination',
                              "We have reached our desired url to check the validation process of e-mail")
    else:
        rep.add_label_to_step('failure to reach destination', "didnt reqquired form url destination")
    if context.user_data['email_body'] == None:
        context.validate = False
    else:
        context.validate = checkId.is_displayed()


@when('4th close all tabs')
def close_tabs(context):
    if context.user_data['email_body'] == None:
        rep.add_label_to_step("No email received", "E-mail is not received")
        context.validate = None
    num_tabs = len(context._config.driver.window_handles)
    for i in range(1, num_tabs):
        context._config.driver.close()
        context._config.driver.switch_to.window(context._config.driver.window_handles[-1])
        WebDriverWait(context._config.driver, 30).until(EC.presence_of_element_located((By.XPATH, "//body")))
    context._config.driver.switch_to.window(context._config.driver.window_handles[0])
    WebDriverWait(context._config.driver, 30).until(EC.presence_of_element_located((By.XPATH, "//body")))
    context._config.driver.find_element(*GeneralLocators.click_continue_button).click()
    num_tabs = len(context._config.driver.window_handles)
    if num_tabs == 1:
        rep.add_label_to_step("tabs are closed", "All unused tabs are closed correctly")
    else:
        rep.add_label_to_step(f"{num_tabs - 1} unused tabs still open", "Not all unused tabs are closed")
        raise Exception(f"{num_tabs - 1} unused tabs still open")


@Then('5th Validate if went back to expected form')
def validate_form_email(context):
    if context.validate == None:
        rep.add_label_to_step('No e-mail recieved', 'couldnt reach desiered page to make validation')
        raise ValueError("No email received, couldn't make validation")
    if not context.validate:
        rep.add_label_to_step('failure reason', "We reached the desired url destination but the form number doesn't "
                                                "equal the one we filled at the beginning")
        context._config.current_page.navigate_to_page_url()
        raise AssertionError('The form number is not available')
    else:
        rep.add_label_to_step('Correct verification',
                              "validation done correctly and we are at the desired form number")
    current_page = context._config.current_page
    pass
    current_page = context.screens_manager.create_screen([current_page.page_title], driver=context._config.driver,
                                                         force_create=True)
    pass
    context.screens_manager.screens[current_page.page_title] = current_page
    pass
    current_page.navigate_to_page_url()


def wait_for_new_email(context, count_of_emails):
    start_time = time.time()
    time_for_total_wait = 0
    for i in range(15):
        start_step = time.time()
        if len(context.mailbox.get_messages()) == count_of_emails + 1:
            break
        time.sleep(3)
        end_step = time.time()
        waiting_time = (end_step - start_step)
        time_diff_rounded = round(waiting_time, 2)
        time_for_total_wait = time_diff_rounded + time_for_total_wait
        log.info(f'wait for email, {time_for_total_wait} seconds passed')

    else:
        end_time = time.time()
        difference = end_time - start_time
        rep.add_label_to_step("e-mail is not received",f"{difference} seconds passed without receiving an E-mail")
        # raise ce.MJTimeOutError('no new email received')
