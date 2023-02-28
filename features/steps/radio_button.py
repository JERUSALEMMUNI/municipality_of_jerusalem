from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@When('choose "{value_name}" from "{widget_name}"')
def choose_value(context, value_name, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.choose_value(value_name)


@Then('validate chosen choice of "{widget_name}" is "{value_name}"')
def validate_choosen(context, widget_name, value_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    selected_one = widget.get_choosen_value()
    assert widget.is_choosen(value_name), f'Error, {value_name} is not selected, {selected_one} is selected'


@Then('validate amount of unchoosen values are {"numer"}')
def valdiate_amount_unchoosen(context, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.inactive_count() == number, f"Error, in counter {widget.inactive_count()}"


@Then('validate "{widget_name}" has error "{ERROR_MESSAGE}"')
def validate_choosen(context, widget_name, ERROR_MESSAGE):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.get_error_message(ERROR_MESSAGE), f'Error, {ERROR_MESSAGE} is not right error'
