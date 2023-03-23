import time

import allure
from behave import *
from bs4 import BeautifulSoup
from selenium.webdriver import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from features.steps.steps_locators.general_locators import GeneralLocators
from infra import logger, reporter

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
            if type(widget) is dict:
                widget = list(widget.values())[0]
            driver.wait_medium_for_presence_of_element(widget.locator['By'], widget.locator['Value'])
    allure.dynamic.link(f'{context._config.current_page.driver.current_url}', "Step link",
                        "click here to see the link of tested step")

    # try:
    #     #Todo: it takes a long time in pages that doesn't have dialog
    #     driver.find_element(By.XPATH, "//span[contains(text(),'X')]").click()
    # except:
    #     pass


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
    current_page.fill_form_to_reach_step(dst_step, context.mailbox,context._config.driver,context._config.current_page)


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


@when('click on "{widget_name}" option')
def click_email_option(context, widget_name):
    time.sleep(4)
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    widget.click_email_option(driver)


@when('close "{widget_name}" dialog')
def close_email_option(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    widget.close(driver)


@When('set pin code "{widget_name}"')
def set_pin_code(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    current_page = context._config.current_page
    if not widget.set_pin(driver, current_page):
        rep.add_label_to_step('alert message appeared','pin code is correct but alert message appeared and '
                                                       'couldnt reach the next step')
        raise AssertionError('pin code is correct but alert message appeared and '
                                                       'couldnt reach the next step')


@then('check if "{widget_name}" error is "{error_expectation}"')
def error_msg(context, widget_name, error_expectation):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.is_invalid:
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_error_message(error_expectation):
        log.info(f"The error value at field is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              "incorrect or missing error value and considered as valid")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@then('from parent "{parent}" check if "{widget_name}" error is "{error_expectation}"')
def error_msg(context, parent, widget_name, error_expectation):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    if not widget.is_invalid:
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_error_message(error_expectation):
        log.info(f"The error value at field is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              "incorrect or missing error value and considered as valid")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


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


@Then('Validate current page is "{page_name}"')
def back_to_prev_page(context, page_name):
    assert page_name in context._config.driver.current_url, "Error, Wrong page url"


@When('1st wait for "{widget_name}" that contains pin code and link')
def check_email(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    mailbox = context.mailbox
    widget.wait_for_email(mailbox)


@When('close ')
@when('2nd click on link and fill email "{email}" pin code index "{index}"')
def fill_pincode_and_click_link(context, email, index):
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


@when('2nda click on link and fill "{widget_name}" "{email}" pin code index "{index:d}"')
def fill_pincode_and_click_link(context, widget_name, email, index):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    mailbox = context.mailbox
    widget.fill_and_click_link(driver, email, index)


@when('3rd wait for second "{widget_name}" to get "קוד האימות" index "{index:d}"')
def get_second_pin_code(context, widget_name, index):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    mailbox = context.mailbox
    current_page = context._config.current_page
    widget.wait_for_second_email(driver, mailbox, current_page, index)


@when('4th close all tabs "{widget_name}" at index "{index:d}"')
def close_tabs(context, widget_name, index):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    widget.close_all_tabs(driver, index)


@Then('5th Validate if went back to expected "{widget_name}" form')
def validate_form_email(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    current_page = context._config.current_page
    assert widget.vlidate_form(current_page), 'The form number is not the same'


@When('Navigate to original url')
def return_to_original_url(context):
    context._config.current_page.navigate_to_page_url()


# def wait_for_new_email(context, count_of_emails):
#     start_time = time.time()
#     time_for_total_wait = 0
#     for i in range(15):
#         start_step = time.time()
#         if len(context.mailbox.get_messages()) == count_of_emails + 1:
#             break
#         time.sleep(3)
#         end_step = time.time()
#         waiting_time = (end_step - start_step)
#         time_diff_rounded = round(waiting_time, 2)
#         time_for_total_wait = time_diff_rounded + time_for_total_wait
#         log.info(f'wait for email, {time_for_total_wait} seconds passed')
#     else:
#         end_time = time.time()
#         difference = end_time - start_time
#         rep.add_label_to_step("e-mail is not received", f"{difference} seconds passed without receiving an E-mail")
#         # raise ce.MJTimeOutError('no new email received')

@When('clear fields')
def clear_fields(context):
    widgets = context._config.current_page.widgets
    for widget_name, widget_obj in widgets.items():
        try:
            if widget_obj.get_web_element() is not None:
                widget_obj.clear()
                log.info(f"the field {widget_name} is cleared")

        except Exception as e:
            log.exception(e)
            log.info(f"the field {widget_name} is empty")
