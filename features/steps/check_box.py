from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('check the box of "{widget_name}"')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.check_box()
    except Exception as e:
        log.debug(e)


@when('uncheck the box of "{widget_name}"')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        widget.uncheck_box()
    except Exception as e:
        log.debug(e)


@Then('validate checkbox of "{widget_name}" is checked')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    assert widget.validate_box_is_checked(), "This checkbox is not checked!"


@Then('validate checkbox of "{widget_name}" is unchecked')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    assert widget.validate_box_is_unchecked(), "This checkbox is not unchecked!"
