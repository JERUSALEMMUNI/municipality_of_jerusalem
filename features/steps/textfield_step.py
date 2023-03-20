from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('write a valid value "{text}" in textarea of "{widget_name}"')
@when('write a valid value "{text}" in "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets.get(widget_name)
    widget.clear()
    widget.set_text(text)
    if not widget.is_valid:
        log.info(f"This value {text} at field {widget_name} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} is considered "
                                             f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from parent "{parent}" write a valid value "{text}" in "{widget_name}"')
def write_into_field_valid_value(context, parent, text, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.clear()
    widget.set_text(text)
    if not widget.is_valid:
        log.info(f"This value {text} from parent {parent} at field {widget_name} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This value {text} from parent {parent} at field {widget_name} is considered "
                              f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from parent "{parent}" write an invalid value "{text}" in "{widget_name}"')
def write_into_field_invalid_value(context,parent, text, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.clear()
    widget.set_text(text)
    if not widget.is_invalid:
        log.info(f"This value {text} from parent {parent} at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason", f"This value {text} from parent {parent} at field {widget_name} is considered "
                                             f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@when('write an invalid value "{text}" in "{widget_name}"')
def write_into_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.clear()
    widget.set_text(text)
    if not widget.is_invalid:
        log.info(f"This value {text} at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} is considered "
                                             f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@when('clear "{widget_name}"')
def clear_field(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.clear()


@when('from parent "{parent}" clear "{widget_name}"')
def write_into_field_invalid_value(context, parent, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.clear()


@when('append "{text}" to "{widget_name}"')
def append_text_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_text(' ' + text)


@Then('validate if "{widget_name}" text is "{text}"')
def append_text_field(context, widget_name, text):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.validate_text(text):
        log.info(f"This value {text} at field {widget_name} is not "
                 f" the same written value")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} is not "
                                             " the same written value")
        raise AssertionError("Written correctly but appeared incorrectly")
