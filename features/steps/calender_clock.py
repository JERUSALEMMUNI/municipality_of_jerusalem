from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('pick date and time "{date}" and "{time}" in "{widget_name}"')
def date_select_time(context, date, time, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.select_time(date, time)


@when('pick "{date}" from second type of calendar of "{widget_name}"')
def date_select(context, date, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.with_time(date)

