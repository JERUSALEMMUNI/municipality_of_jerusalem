from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('check the box of "{widget_name}"')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    try:
        widget.check_box()
    except Exception as e:
        log.debug(e)


@when('uncheck the box of "{widget_name}"')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    try:
        widget.uncheck_box()
    except Exception as e:
        log.debug(e)


@Then('validate checkbox of "{widget_name}" is checked')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_box_is_checked(), "Error this checkbox is not checked!"


@Then('validate checkbox of "{widget_name}" is unchecked')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_box_is_unchecked(), "Error this checkbox is not unchecked!"
