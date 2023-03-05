from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('write "{text}" into "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.clear()
    widget.set_text(text)


@when('write a valid value "{text}" in "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.clear()
    widget.set_text(text)
    assert widget.is_valid, "This value is invalid"


@when('write a valid value "{text}" in textarea of "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.clear()
    widget.set_text(text)
    assert widget.is_valid, "This value is invalid"


@when('write an invalid value "{text}" in "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.clear()
    widget.set_text(text)
    assert widget.is_invalid, "This value is valid"


@when('clear "{widget_name}"')
def clear_field(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.clear()


@when('append "{text}" to "{widget_name}"')
def append_text_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.set_text(' ' + text)


@Then('validate if "{widget_name}" text is "{text}"')
def append_text_field(context, widget_name, text):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.validate_text(text)
