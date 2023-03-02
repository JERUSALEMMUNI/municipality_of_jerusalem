from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@When('choose "{value_name}" from "{widget_name}"')
@When('choose "{value_name}" from "{widget_name}" in "{index:d}"')
def choose_value(context, value_name, widget_name, index=0):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.choose_value(value_name, index)


@Then('validate chosen choice of "{widget_name}" is "{value_name}"')
def validate_choosen(context, widget_name, value_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    selected_one = widget.get_choosen_value()
    assert widget.is_valid(), f"the radio button {selected_one} is invalid"
    assert widget.is_choosen(value_name), "Error, Incorrect choice"


@Then('validate count of not chosen values of "{widget_name}" are "{number:d}"')
def valdiate_count_unchosen(context, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.inactive_count() == number, "Error, incorrect count"


@Then('validate "{widget_name}" has error "{error_message}"')
def validate_choosen(context, widget_name, error_message):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.get_error_message(error_message), "Error, Error message should be displayed"
