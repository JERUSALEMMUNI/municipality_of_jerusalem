from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('write a valid number "{number}" in "{widget_name}"')
def write_into_field(context, number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.clear()
    widget.set_text(number)
    if not widget.is_valid:
        log.info(f"This value {number} at field {widget_name} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason", f"This value {number} at field {widget_name} is considered "
                                                f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from parent "{parent}" write a valid number "{number}" in "{widget_name}"')
def write_into_field_valid_value(context, parent, number, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.clear()
    widget.set_text(number)
    if not widget.is_valid:
        log.info(f"This value {number} from parent {parent} at field {widget_name} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from parent {parent} at field {widget_name} is considered "
                              f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from parent "{parent}" write an invalid number "{number}" in "{widget_name}"')
def write_into_field_invalid_value(context, parent, number, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.clear()
    widget.set_text(number)
    if not widget.is_invalid:
        log.info(f"This value {number} from parent {parent} at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from parent {parent} at field {widget_name} is considered "
                              f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@when('write an invalid number "{number}" in "{widget_name}"')
def write_into_field(context, number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.clear()
    widget.set_text(number)
    if not widget.is_invalid:
        log.info(f"This value {number} at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason", f"This value {number} at field {widget_name} is considered "
                                                f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")



@Then('validate if "{widget_name}" number is "{number}"')
def append_text_number_field(context, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.validate_text(number):
        log.info(f"This value {number} at field {widget_name} is not "
                 f" the same written value")
        rep.add_label_to_step("failure reason", f"This value {number} at field {widget_name} is not "
                                                " the same written value")
        raise AssertionError("Written correctly but appeared incorrectly")
