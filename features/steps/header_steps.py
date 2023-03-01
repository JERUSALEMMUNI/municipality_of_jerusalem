from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@then('Validate Municiplity logo is displayed in header')
def validate_header_logo_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_logo(), "header logo is not displayed"


@then('Validate Header Title is default')
def validate_header_title_is_default(context):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_title_with_default(), "header default title is not displayed or changed"


@then('Validate Header language option is displayed')
def validate_languages_buttons_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_is_languages_buttons_is_displayed(), "header language buttons (arabic , hebrew) are not displayed "


@then('Validate Form Title is "{form_title}"')
def validate_header_title_is_default(context, form_title):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_title_text(form_title), f"header title text are not equal to {form_title}"


@then('Validate current step is "{current_step}"')
def validate_current_step_number(context, current_step):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_current_page_number(current_step), f"the current step is not equal to {current_step}"


@then('Validate steps count is "{step_count}"')
def validate_current_page_count(context, step_count):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_number_of_pages(step_count), f"number of forms in pages are not {step_count} "


@then('Validate Form explanation contains "{explanation_text}"')
def validate_header_explanation_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_explanation_text(
        explanation_text), f"header explanation test not equal to {explanation_text}"


@then('Validate Form explanation exists and contains/ at least "{chars_count}" chars')
def validate_header_explanation_contains_text(context, chars_count):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_explanation_is_displayed() and widget.validate_header_explanation_contains_at_least_chars(
        chars_count), f"explanation text is not displayed or it doesnt contains at least {chars_count} chars"


@then('Validate Municiplity Logo is displayed in old header')
def validate_header_logo_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_logo(), "old header logo is not displayed"


@then('Validate old Header Title is default')
def validate_header_title_is_default(context):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_title_with_default(), "old header title is not same as default title"


@then('Validate Form Title in old header is "{form_title}"')
def validate_header_title_is_default(context, form_title):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_title_text(form_title), f"old header title not euqal to {form_title}"


@then('Validate Form explanation in old header contains "{explanation_text}"')
def validate_header_explanation_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_explanation_text(
        explanation_text), f"old header explanation text doesnt contain {explanation_text}"


@then('Validate Form explanation in old header exists and contains/ at least "{count_chars}" chars')
def validate_header_explanation_contains_text(context, count_chars):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_header_explanation_area_is_displayed() and widget.validate_header_explanation_contains_at_least_chars(
        count_chars), f"old header explanation is not displayed or it doesnt contain at least {count_chars} chars"


@When('click on "{button_name}" icon')
def click_button(context, button_name):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_header_button(button_name)


@then('Validate information dialog is opened')
def validate_information_dialog_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_info_dialog_is_opened(),"old header information dialog in not opened"


@then('Validate information dialog contains "{explanation_text}"')
def validate_information_dialog_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_info_dialog_contains_text(explanation_text),f"old header information text doesnt contain {explanation_text}"


@then('Validate information dialog is closed')
def validate_information_dialog_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_info_dialog_is_closed(),"old header information dialog in not closed"


@then('Validate information dialog text in old header exists and contains/ at least "{count_chars}" chars')
def validate_header_explanation_contains_text(context, count_chars):
    widget = context._config.current_page.widgets["header"]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.validate_info_dialog_is_opened() and widget.validate_info_dialog_text_contains_at_least_chars(
        count_chars), f"old header info dialog is not displayed or it doesnt contain at least {count_chars} chars"
