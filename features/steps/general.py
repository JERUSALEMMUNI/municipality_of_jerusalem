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
from infra.enums import WaitInterval

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
    #     driver.find_element(By.XPATH, "//span[contains(text(),'X')]").click()
    # except:
    #     log.info("No dialog appeared")


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
    allure.dynamic.link(f'{driver.current_url}', "Step link",
                        "click here to see the link of tested step")


def navigate_to_step_in_screen(context, current_page, dst_step):
    context._config.current_page = None
    context.execute_steps(f'''Given Navigate to "{current_page.page_title}" form''')
    current_page.fill_form_to_reach_step(context, dst_step, context.mailbox, context._config.driver,
                                         context._config.current_page)


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
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.driver
    if not widget.click_email_option(driver):
        context.user_data['counter_per_scenario'] = 0
        context.user_data['couldnt_reach_next_page'] = True
        rep.add_label_to_step('Didnt click the button', 'Didnt click on email option button')
        raise AssertionError('Didnt click the button')


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
    context.user_data['counter_per_scenario'] = 0
    if not widget.set_pin(driver, current_page):
        context.user_data['couldnt_reach_next_page'] = True
        rep.add_label_to_step('alert message appeared', 'pin code is correct but alert message appeared and '
                                                        'couldnt reach the next step')
        raise AssertionError('pin code is correct but alert message appeared and '
                             'couldnt reach the next step')


@then('validate "{widget_name}" error is "{error_expectation}"')
def error_msg(context, widget_name, error_expectation):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.is_invalid:
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_error_message(error_expectation)[0]:
        log.info(f"Incorrect error message")
        rep.add_label_to_step("incorrect error message",
                              f"expected error message is {error_expectation}, what appeared is {widget.get_error_message}")
        raise AssertionError("incorrect error message")
    if not widget.validate_error_message(error_expectation)[1]:
        log.info(f"error message is incorrect")
        rep.add_label_to_step("More than one error message appeared",
                              f"expected error message is {error_expectation}, what appeared is {widget.get_error_message}")
        raise AssertionError("error message is incorrect")
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
    try:
        driver.find_element(By.XPATH, "//span[contains(text(),'X')]").click()
    except:
        pass
    assert widget.vlidate_form(current_page), 'The form number is not the same'


@When('Navigate to original url')
def return_to_original_url(context):
    context._config.current_page.navigate_to_page_url()


@When('clear fields')
def clear_fields(context, widgets=None):
    widgets = context._config.current_page.widgets if widgets is None else widgets
    context._config.driver.implicitly_wait(WaitInterval.FAST.value)
    for widget_name, widget_obj in widgets.items():
        try:
            if type(widget_obj) is dict:
                clear_fields(context, widget_obj)

            elif widget_obj.get_web_element() is not None:
                widget_obj.clear()
                log.info(f"the field {widget_name} is cleared")

        except Exception as e:
            log.exception(e)
            log.info(f"the field {widget_name} is empty")
    context._config.driver.implicitly_wait(WaitInterval.MEDIUM.value)


@Then('validate if "{widget_name}" is exist')
def validate_item_present(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.is_enable:
        rep.add_label_to_step("Item is not exist", "The item should be exist in one of the pages but its not ")
        raise AssertionError("item is not or will not be exist in any page")


@When('"{widget_name}" Authentication using email address "{email_address}"')
def email_authentication(context, widget_name, email_address):
    widget = context._config.current_page.widgets[widget_name]
    context.execute_steps(f"""
        When click on "שמור" button
        When click on "שמור טיוטה" button tyota
        When 1st wait for "{widget_name}" that contains pin code and link
        When 2nda click on link and fill "{widget_name}" "{email_address}" pin code index "2"
        When click on "{widget_name}" option
        When 3rd wait for second "{widget_name}" to get "קוד האימות" index "2"
        When 4th close all tabs "email" at index "2"
        Then 5th Validate if went back to expected "{widget_name}" form""")


@Then('close the website message dialog')
def navigate_to_screen(context):
    driver = context._config.driver
    try:
        driver.find_element(By.XPATH,
                            "//span[contains(@class,'p-dialog-header-close-icon ng-tns-c56-10 pi pi-times')]").click()
    except:
        log.info("No dialog appeared")


@Then('validate if "{widget_name}" appeared')
def validate_dialog(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.get_main_title().is_displayed()


@When('close "{widget_name}"')
def validate_dialog(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.click_close_button()

@Then('from table "{table_name}" at row "{row}" validate the drop "{widget_name}" is default')
def validate_is_empty(context, table_name, row, widget_name):
    widget = context._config.current_page.widgets[table_name]
    if widget.is_default_drop(row, widget_name):
        log.info(f'its default')
        rep.add_label_to_step("nothing was selected", "(default)")
    else:
        rep.add_label_to_step("there is already value", "(not default)")
        raise AssertionError('its not the default there is element was selected')


@Then('from table "{table_name}" at row "{row}" validate the file "{widget_name}" is default')
def validate_is_default(context, table_name, row, widget_name):
    widget = context._config.current_page.widgets[table_name]
    if widget.is_default_upload(row, widget_name):
        log.info(f'its default')
        rep.add_label_to_step("nothing was selected", "(default)")
    else:
        rep.add_label_to_step("there is already value", "(not default)")
        raise AssertionError('its not the default there is element was selected')
