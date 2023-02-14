from behave import *
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from infra import logger, reporter, config


rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@given('I navigate to "{screen_name}" page')
def navigate_to_screen(context, screen_name):
    #create a screen
    current_page = context.screens_manager.create_screen([screen_name], driver=context.driver)
    #check if we opened the browser and if yes check if the tittle we need is the one who opened , or if there is
    # no tittle opened then go to the url
    if (context._config.current_page and context._config.current_page.page_title != current_page.page_title) or context._config.current_page is None:
        context._config.current_page = current_page
        current_page.navigate_to_page_url()
        driver = current_page.driver
        for element in current_page.main_elements_to_wait_when_load:
            # wait method to wait the element
            WebDriverWait(driver, 30).until(EC.presence_of_element_located((element.locator['By'], element.locator['Value'])))


@when('I write "{text}" in "{widget_name}"')
def write_into_text_field(context, text, widget_name):

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.set_text(text)


@when('I checked if "{text}" is the text of "{widget_name}"')
def check_text_field(context, text, widget_name):

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_text(text, False)


@then('field "{widget_name}" has invalid value')
def field_has_invalid_value(context, widget_name):

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.is_invalid is True and widget.is_valid is False, "Field considered as valid"


@then('field "{widget_name}" has valid value')
def field_has_valid_value(context, widget_name):

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.is_invalid is False and widget.is_valid is True, "Field considered as invalid"


@when('Am I in the "{expected_page_number}" page')
def page_number_checker(context, expected_page_number):
    widget_name = "pages"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    page_number = context._config.current_page.get_page_number()
    assert widget.expanded_checker(expected_page_number), f'Incorrect page number, we are in {page_number}'

@when('We have "{expected_pages_amount:d}" pages in this screen')
def page_amount_checker(context, expected_pages_amount):
    widget_name = "pages"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    pages_amount = context._config.current_page.get_amount_of_pages()
    assert pages_amount == expected_pages_amount, f'Incorrect we have {pages_amount} pages in this screen'


@when('there is a "{widget_name}" in the page')
def header_check(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.header_checker is True


@then('I click on "{widget_name}" button')
def click_button(context, widget_name):

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.clickBtn()


@then('check if "{widget_name}" error is "{error_expectation}"')
def error_msg(context, widget_name, error_expectation):
    if widget_name == "טלפון נייד":
        type = "phone"
    elif widget_name == "טלפון קווי":
        type = "phone"
    else:
        type = "text"

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_error_text(config.field_error[error_expectation], type), "Incorrect error expectation message"


@when('open disabled list')
def open_special_list(context):
    context._config.current_page.open_disabled_list()


@when('close disabled list')
def close_special_list(context):
    context._config.current_page.close_disabled_list()


@when('check if the application tittle is "{tittle_expectation}"')
def header_tittle_check(context, tittle_expectation):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_header_tittle(tittle_expectation), "Error, Incorrect expectation tittle"


@when('check if  "{language_expectation}" language is in the application')
def header_lang_check(context, language_expectation):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_header_language(language_expectation), "Error, Incorrect  language expectation "


@when('check if the application pic is available')
def header_pic_check(context):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_header_picture(), "The application logo is not available"


@when('check if the application name is "{application_name}"')
def header_application_name_check(context, application_name):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_header_application_name(application_name), "Error, Incorrect  application name"


@when('check if the application steps is available')
def check_header_steps_check(context):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_header_steps(), "The application steps are not available"


@when('check if the application explanation is available')
def check_header_explanation_check(context):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_header_explanation(), "The application explanation are not available"


@when('check if the application rules are "{application_rules}"')
def check_header_rules_check(context, application_rules):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_header_rules(application_rules), "Error, Incorrect  application rules"


@when('check if the application call us is available')
def footer_call_us_check(context):
    widget_name = "footer"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_call_us_is_displayed(), "The application call us footer is not available"


@when('check if the application privacy policy is available')
def footer_privacy_policy_check(context):
    widget_name = "footer"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_privacy_policy_is_displayed(), "The application privacy policy footer is not available"


@when('I select "{selected_id}" in "{widget_name}"')
def write_id_type(context, selected_id, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.set_text(selected_id)


@when('I change page language to "{wanted_language}"')
def change_language(context, wanted_language):
    widget_name = "header"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.change_page_language(wanted_language)


@when('Is "{selected_language}" language  is selected')
def is_lang_selected(context, selected_language):
    widget_name = "header"

    if selected_language == "עברית":
        lang = 1
    elif selected_language == "العربية":
        lang = 2
    else:
        raise AssertionError("Error, The selected language is not provided")

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.is_language_selected(lang), f'Error, The selected language is not {selected_language}'


@when('I entered "{phone_number}" in "{widget_name}"')
def write_phone_number(context, phone_number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.set_text(phone_number)


@when('I write address as "{selected_input}" in "{widget_name}"')
def write_in_select(context, selected_input, widget_name):

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    address = widget.select_input_after_writing(selected_input)
    assert address == selected_input, "Error, the selected address is not available"


@when('I search address as "{selected_input}" in "{widget_name}"')
def search_in_select(context, selected_input, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.select_input_without_writing(selected_input), "Error, the selected address is not available"



