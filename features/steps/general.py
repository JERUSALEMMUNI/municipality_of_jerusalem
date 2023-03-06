import time

import allure
from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@given('Navigate to "{screen_name}" form')
def navigate_to_screen(context, screen_name):
    current_page = context.screens_manager.create_screen([screen_name], driver=context._config.driver)
    if (context._config.current_page and context._config.current_page.page_title != current_page.page_title) \
            or context._config.current_page is None:
        context._config.current_page = current_page
        current_page.navigate_to_page_url()
        driver = current_page.driver
        for element in current_page.main_elements_to_wait_when_load:
            # wait method to wait the element
            driver.wait_long_for_presence_of_element(element.locator['By'], element.locator['Value'])
    allure.dynamic.link(f'{context._config.current_page.driver.current_url}', "Step link",
                        "click here to see the link of tested step")


@when('checked if "{text}" is the text of "{widget_name}"')
def check_text_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    assert widget.check_text(text, False)


@then('field "{widget_name}" has invalid value')
def field_has_invalid_value(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    assert widget.is_invalid is True and widget.is_valid is False, "Field considered as valid"


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
    if widget_name == "טלפון נייד":
        type = "phone"
    elif widget_name == "טלפון קווי":
        type = "phone"
    else:
        type = "text"

    widget = context._config.current_page.widgets[widget_name]

    assert widget.check_error_text(config.field_error[error_expectation], type), "Incorrect error expectation message"


@when('open disabled list')
def open_special_list(context):
    context._config.current_page.open_disabled_list()


@when('close disabled list')
def close_special_list(context):
    context._config.current_page.close_disabled_list()
