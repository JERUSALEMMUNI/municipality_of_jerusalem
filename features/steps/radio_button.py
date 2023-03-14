from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@When('choose "{value_name}" from "{widget_name}"')
def choose_value(context, value_name, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.choose_value(value_name)


@When('from parent "{parent}" choose "{value_name}" from "{widget_name}"')
def choose_value_e(context, parent, value_name, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.choose_value(value_name)


@Then('validate chosen choice of "{widget_name}" is "{value_name}"')
def validate_choosen(context, widget_name, value_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.is_valid(), "Invalid radio button"
    assert widget.is_chosen(value_name), "Incorrect choice"


@Then('from parent "{parent}" validate chosen choice of "{widget_name}" is "{value_name}"')
def validate_choosen(context, parent, widget_name, value_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    assert widget.is_valid(), "Invalid radio button"
    assert widget.is_chosen(value_name), "Incorrect choice"


@Then('validate count of not chosen values of "{widget_name}" are "{number:d}"')
def valdiate_count_unchosen(context, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.inactive_count() == number, "Incorrect count"


@Then('from parent "{parent}" validate count of not chosen values of "{widget_name}" are "{number:d}"')
def valdiate_count_unchosen(context, parent, widget_name, number):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    assert widget.inactive_count() == number, "Incorrect count"


@Then('validate "{widget_name}" has error "{error_message}"')
def validate_choosen(context, widget_name, error_message):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_error_message(error_message), "Error message s not displayed"


@Then('from parent "{parent}" validate "{widget_name}" has error "{error_message}"')
def validate_choosen(context, parent, widget_name, error_message):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    assert widget.validate_error_message(error_message), "Error message s not displayed"
