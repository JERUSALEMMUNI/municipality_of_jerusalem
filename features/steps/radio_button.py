from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@When('choose "{value_name}" from "{widget_name}"')
@When('choose "{value_name}" from "{widget_name}" in "{index:d}"')
def choose_value(context, value_name, widget_name, index=0):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.choose_value(value_name, index)
    except Exception as e:
        log.debug(e)


@Then('validate chosen choice of "{widget_name}" is "{value_name}"')
def validate_choosen(context, widget_name, value_name):
    widget = context._config.current_page.widgets[widget_name]

    assert widget.is_valid(), "Invalid radio button"
    assert widget.is_chosen(value_name), "Incorrect choice"


@Then('validate count of not chosen values of "{widget_name}" are "{number:d}"')
def valdiate_count_unchosen(context, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]

    assert widget.inactive_count() == number, "Incorrect count"


@Then('validate "{widget_name}" has error "{error_message}"')
def validate_choosen(context, widget_name, error_message):
    widget = context._config.current_page.widgets[widget_name]

    assert widget.get_error_message(error_message), "Error message s not displayed"
