from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('pick "{date}" from calendar of "{widget_name}"')
def date_select(context, date, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.select_all_date(date)


@when('write date "{date}" in "{widget_name}"')
def date_write(context, date, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.initial_widgets()
    widget.date_by_write(date)


@Then('validate picked date of "{widget_name}" is "{date}"')
def search_in_select(context, widget_name, date):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_date(date), "Error, Date is not correct!"


@then('checking on dialog alert in "{widget_name}"')
def special_needs_button(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.dialog_alert(), "Error, There is problem with date"
