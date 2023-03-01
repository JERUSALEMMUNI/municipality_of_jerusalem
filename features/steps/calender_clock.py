from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('select date and time "{date}" and "{time}" in "{widget_name}"')
def date_select_time(context, date, time, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.select_time(date, time)
