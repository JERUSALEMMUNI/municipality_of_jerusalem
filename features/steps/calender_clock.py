from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('pick date and time "{date}" and "{time}" in "{widget_name}"')
def date_select_time(context, date, time, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.select_time(date, time)
    except Exception as e:
        log.debug(e)
