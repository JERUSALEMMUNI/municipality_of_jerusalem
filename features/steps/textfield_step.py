from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('write "{text}" into "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.clear()
        widget.set_text(text)
    except Exception as e:
        log.debug(e)


@when('write a valid value "{text}" in "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.clear()
        widget.set_text(text)
        assert widget.is_valid, "This value is invalid"
    except Exception as e:
        log.debug(e)


@when('write a valid value "{text}" in textarea of "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.clear()
        widget.set_text(text)
        assert widget.is_valid, "This value is invalid"
    except Exception as e:
        log.debug(e)


@when('write an invalid value "{text}" in "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.clear()
        widget.set_text(text)
        assert widget.is_invalid, "This value is valid"
    except Exception as e:
        log.debug(e)


@when('clear "{widget_name}"')
def clear_field(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.clear()
    except Exception as e:
        log.debug(e)


@when('append "{text}" to "{widget_name}"')
def append_text_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.set_text(' ' + text)
    except Exception as e:
        log.debug(e)


@Then('validate if "{widget_name}" text is "{text}"')
def append_text_field(context, widget_name, text):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.validate_text(text)
    except Exception as e:
        log.debug(e)
