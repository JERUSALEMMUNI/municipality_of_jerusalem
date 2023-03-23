from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('fill "{phone_number}" as valid value in "{widget_name}"')
def write_phone_number(context, phone_number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_full_phone(phone_number)
    phone = phone_number.split("-")
    prefix = phone[0]
    suffix = phone[1]
    try:
        if not widget.is_valid[1]:
            log.info(f"Couldn't find this value {prefix} is not a valid option to select")
            rep.add_label_to_step("wrong_value", f"This value {prefix} at field not a valid value to select")
            raise KeyError("This is not a valid value to select from list")
        if not widget.is_valid[0]:
            log.info(f"This value {suffix} at field {widget_name} is considered "
                     f"a valid value but it appeared as invalid")
            rep.add_label_to_step("wrong_value", f"This value {suffix} at field {widget_name} is considered "
                                                 f" a valid value but it appeared as invalid")
            raise AssertionError("valid value and considered as invalid")
    finally:
        widget.close()
        pass


@when('fill "{phone_number}" as invalid value in "{widget_name}"')
def write_phone_number_invalid_value(context, phone_number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_full_phone(phone_number)
    phone = phone_number.split("-")
    prefix = phone[0]
    suffix = phone[1]
    try:
        if not widget.is_invalid[1]:
            log.info(f"Couldn't find this value {prefix} is not a valid option to select")
            rep.add_label_to_step("wrong_value", f"This value {prefix} at field not a valid value to select")
            raise KeyError("This is not a valid value to select from list")
        if not widget.is_invalid[0]:
            log.info(f"This value {suffix} at field {widget_name} is considered "
                     f"as invalid")
            rep.add_label_to_step("wrong_value", f"This value {suffix} at field {widget_name} is considered "
                                                 f" an invalid value but it appeared as valid")
            raise AssertionError("valid value and considered as invalid")
    finally:
        widget.close()
        pass


@when('from parent "{parent}" fill "{phone_number}" as valid value in "{widget_name}"')
def write_phone_number(context, parent, phone_number, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.set_full_phone(phone_number)
    if not widget.is_valid:
        log.info(f"This value {phone_number} from parent {parent} at field {widget_name} is considered "
                 f"a valid value but it appeared as invalid")
        rep.add_label_to_step("wrong_value",
                              f"This value {phone_number} from parent {parent} at field {widget_name} is considered "
                              f"a valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from parent "{parent}" fill "{phone_number}" as invalid value in "{widget_name}"')
def write_phone_number(context, parent, phone_number, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    widget.set_full_phone(phone_number)
    if not widget.is_invalid:
        log.info(f"This value {phone_number} from parent {parent} at field {widget_name} is considered "
                 f"an invalid value but it appeared as valid")
        rep.add_label_to_step("wrong_value",
                              f"This value {phone_number} from parent {parent} at field {widget_name} is considered "
                              f"an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@when('fill prefix "{three_digits}" in "{widget_name}"')
def write_prefix_phone_number_valid(context, three_digits, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        widget.set_prefix_number(three_digits)
        if not widget.is_invalid_prefix():
            log.info(f"This value {three_digits} at field {widget_name} can't to select it")
            rep.add_label_to_step("wrong_value", f"This value {three_digits} at field {widget_name} can't to select it")
            raise KeyError(f"This value {three_digits} at field {widget_name} can't be selected")
    finally:
        widget.close()


@when('from parent "{parent}" fill prefix "{three_digits}" in "{widget_name}"')
def write_prefix_phone_number_valid(context, parent, three_digits, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        widget.set_prefix_number(three_digits)
        if not widget.is_invalid_prefix():
            log.info(f"This value {three_digits} at field {widget_name} can't to select it")
            rep.add_label_to_step("wrong_value", f"This value {three_digits} at field {widget_name} can't to select it")
            raise KeyError(f"This value {three_digits} at field {widget_name} can't be selected")
    finally:
        widget.close()


@when('fill number "{phone_number}" as valid value in "{widget_name}"')
def write_phone_number_valid(context, phone_number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_phone_number(phone_number)
    if not widget.is_valid_number():
        log.info(f"This value {phone_number} at field {widget_name} is considered "
                 f" a valid value but it appeared as invalid")
        rep.add_label_to_step("wrong_value", f"This value {phone_number} at field {widget_name} is considered "
                                             f" a valid value but it appeared as invalid")
        raise AssertionError(
            f"This value {phone_number} at field {widget_name} is considered a valid value but it is invalid")


@when('fill number "{phone_number}" as invalid value in "{widget_name}"')
def write_phone_number_invalid(context, phone_number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_phone_number(phone_number)
    if not widget.is_invalid_number():
        log.info(f"This value {phone_number} at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("wrong_value", f"This value {phone_number} at field {widget_name} is considered "
                                             f" an invalid value but it appeared as valid")
        raise AssertionError(
            f"This value {phone_number} at field {widget_name} is considered an invalid value but it is valid")


@when('from parent "{parent}" fill number "{phone_number}" as valid value in "{widget_name}"')
def write_phone_number_valid(context, parent, phone_number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_phone_number(phone_number)
    if not widget.is_valid_number():
        log.info(f"This value {phone_number} at field {widget_name} is considered "
                 f" a valid value but it appeared as invalid")
        rep.add_label_to_step("wrong_value", f"This value {phone_number} at field {widget_name} is considered "
                                             f" a valid value but it appeared as invalid")
        raise AssertionError(
            f"This value {phone_number} at field {widget_name} is considered a valid value but it is invalid")


@when('from parent "{parent}" fill number "{phone_number}" as invalid value in "{widget_name}"')
def write_phone_number_invalid(context, parent, phone_number, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_phone_number(phone_number)
    if not widget.is_invalid_number():
        log.info(f"This value {phone_number} at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("wrong_value", f"This value {phone_number} at field {widget_name} is considered "
                                             f" an invalid value but it appeared as valid")
        raise AssertionError(
            f"This value {phone_number} at field {widget_name} is considered an invalid value but it is valid")
