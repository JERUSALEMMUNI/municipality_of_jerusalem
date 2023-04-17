import os

from behave import *

from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('add "{items}" in widget "{widget_name}"')
def add_items_month_year_list(context, items, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    for item in range(int(items)):
        widget.add_item()


@when('remove "{items}" in widget "{widget_name}"')
def add_items_month_year_list(context, items, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.remove_item(items)


@when('pick year "{year}" in widget "{widget_name}" at index "{number}"')
def add_items_month_year_list(context, year, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if int(year) > 2024 or int(year) < 2018:
            raise ValueError("Year value should be between 2018-2023")
        widget.set_year(year, number)
    finally:
        widget.close()


@when('pick month "{month}" in widget "{widget_name}" at index "{number}"')
def add_items_month_year_list(context, month, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    # widget.init_widget()
    if int(month) > 12 or int(month) < 1:
        raise ValueError("The month value should be between 1-12")
    widget.set_month(month, number)


@when('pick a group of months "{months}" in widget "{widget_name}" at index "{number}"')
def add_items_months_year_list(context, months, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    widget.set_months(months, number, context._config.current_page.driver)


@then('check if the months "{months}" are shown as chosen in widget "{widget_name}" at index "{number}"')
def check_months_are_chosen(context, months, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    if widget.validate_months(months, number):
        rep.add_label_to_step('Month/s selected correctly', f'The desired [{months}] months are selected correctly')
    else:
        rep.add_label_to_step(
            ('Month/s not selected correctly', f'The desired [{months}] months are not selected correctly'))
        raise AssertionError('Month/s not selected correctly')


@then('check if  widget "{widget_name}" list after change is "{number}"')
def check_months_are_chosen(context, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.get_list_length() == int(
        number), f"the widget {widget_name} list length did not change to length {number}"


@when('from table "{table_name}" at row "{row}" write a valid value "{text}" in "{widget_name}"')
def write_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_text_field(row, widget_name, text)
    if widget.validate_text_is_invalid(row, widget_name):
        log.info(f"This value {text} at field {widget_name} from table {table_name} at row {row} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} from table {table_name} at "
                                                f"row {row} is considered"
                                                f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from table "{table_name}" at row "{row}" write an invalid value "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_text_field(row, widget_name, text)
    if not widget.validate_text_is_invalid(row, widget_name):
        log.info(f"This value {text} at field {widget_name} from table {table_name} at row {row} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} from table {table_name} at "
                                                f"row {row} is considered"
                                                f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@when('from table "{table_name}" at row "{row}" write a valid value "{text}" in textarea of "{widget_name}"')
def write_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_textarea_field(row, widget_name, text)
    if widget.validate_textarea_is_invalid(row, widget_name):
        log.info(f"This value {text} at field {widget_name} from table {table_name} at row {row} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} from table {table_name} at "
                                                f"row {row} is considered"
                                                f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from table "{table_name}" at row "{row}" write an invalid value "{text}" in textarea of "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_textarea_field(row, widget_name, text)
    if not widget.validate_textarea_is_invalid(row, widget_name):
        log.info(f"This value {text} at field {widget_name} from table {table_name} at row {row} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} from table {table_name} at "
                                                f"row {row} is considered"
                                                f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@then('from table "{table_name}" at row "{row}" validate "{widget_name}" error is "{error_expectation}"')
def error_msg(context, table_name, row, widget_name, error_expectation):
    widget = context._config.current_page.widgets[table_name]
    if not widget.validate_text_is_invalid(row, widget_name):
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_error_message(row, widget_name, error_expectation):
        log.info(f"The error value in table {table_name} in row {row} at field {widget_name} is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              f"The error value in table {table_name} in row {row} at field {widget_name} is not "
                              f"equal to {error_expectation}")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@then('from table "{table_name}" at row "{row}" validate textarea "{widget_name}" error is "{error_expectation}"')
def error_msg(context, table_name, row, widget_name, error_expectation):
    widget = context._config.current_page.widgets[table_name]
    if not widget.validate_textarea_is_invalid(row, widget_name):
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_textarea_error_message(row, widget_name, error_expectation):
        log.info(f"The error value in table {table_name} in row {row} at field {widget_name} is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              f"The error value in table {table_name} in row {row} at field {widget_name} is not "
                              f"equal to {error_expectation}")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@when('from table "{table_name}" at row "{row}" write a valid time value "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_time_text(row, widget_name, text)


@when('from table "{table_name}" at row "{row}" pick time "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.select_time(row, widget_name, text)


@Then('from table "{table_name}" at row "{row}" validate tab text is same as "{date}"')
def validate_tab_text_from_column(context, table_name, row, date):
    widget = context._config.current_page.widgets[table_name]
    if widget.get_tab_text(row) != date:
        log.info(f"the date text on table {table_name} at row {row} is not equal to {date}")
        rep.add_label_to_step("wrong date or missing",
                              f"the date text on table {table_name} at row {row} is not equal to {date}")
        raise AssertionError("actual text not equal expected text")
    rep.add_label_to_step("wrong date or missing", "actual text not equal expected text")


@When('from table "{table_name}" at row "{row}" choose "{value_name}" in "{widget_name}"')
def choose_button_of_value_from_table(context, table_name, row, value_name, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.choose_button_from_value(row, widget_name, value_name)


@Then('from table "{table_name}" at row "{row}" validate chosen choice of "{widget_name}" is "{value_name}"')
def validate_chosen_button_value_from_table(context, table_name, row, widget_name, value_name):
    widget = context._config.current_page.widgets[table_name]
    if not widget.is_button_valid(row, widget_name):
        log.info(("No button clicked", f"Button should be clicked but its not clicked in table {table_name}"
                                       f"in row {row} at field {widget_name}"))
        rep.add_label_to_step("No button clicked", f"Button should be clicked but its not clicked in table {table_name}"
                                                   f"in row {row} at field {widget_name}")
        raise AssertionError("Button not clicked")
    if not widget.is_value_button_chosen(row, widget_name, value_name):
        log.info(("Chosen button not clicked", f"The chosen button {value_name} in table {table_name} at "
                                               f"row {row} at field {widget_name} should be clicked but "
                                               f"its not clicked"))
        rep.add_label_to_step("Chosen button not clicked", f"The chosen button {value_name} in table {table_name} at "
                                                           f"row {row} at field {widget_name} should be clicked but "
                                                           f"its not clicked")
        raise AssertionError("Chosen button not clicked")


@When('from table "{table_name}" at row "{row}" open tab')
def validate_chosen_button_value_from_table(context, table_name, row):
    widget = context._config.current_page.widgets[table_name]
    if not widget.open_tab_by_row(row):
        log.info(("tab did not open", f"The chosen tab in table {table_name} at row {row} at field did not open"))
        rep.add_label_to_step("tab did not open", f"The chosen tab in table {table_name} at row {row} at field did "
                                                  f"not open")
        raise AssertionError("tab did not open")


@When('from table "{table_name}" at row "{row}" close tab')
def validate_chosen_button_value_from_table(context, table_name, row):
    widget = context._config.current_page.widgets[table_name]
    if not widget.close_tab_by_row(row):
        log.info(("tab did not close", f"The chosen tab in table {table_name} at row {row} at field did not close"))
        rep.add_label_to_step("tab did not open", f"The chosen tab in table {table_name} at row {row} at field did "
                                                  f"not close")
        raise AssertionError("tab did not close")


@when('from table "{table_name}" add "{items}" rows')
def add_items_in_table(context, table_name, items):
    widget = context._config.current_page.widgets[table_name]
    for item in range(int(items)):
        widget.add_item()


@when('from table "{table_name}" remove "{items}" rows')
def remove_item_from_table(context, table_name, items):
    widget = context._config.current_page.widgets[table_name]
    widget.remove_item(items)


@when('from table "{table_name}" at row "{row}" upload "{file_path}" file in "{widget_name}"')
def upload_file_in_table(context, table_name, row, file_path, widget_name):
    widget = context._config.current_page.widgets[table_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{file_path}')
    widget.upload_file(row, widget_name, file)


@then('from table "{table_name}" at row "{row}" validate "{widget_name}" field is valid')
def choose_in_search(context, table_name, row, widget_name):
    widget = context._config.current_page.widgets[table_name]
    assert widget.is_upload_valid(row, widget_name), f"This file from table {table_name} at row {row} is invalid!"


@then('from table "{table_name}" at row "{row}" validate "{widget_name}" field is invalid')
def choose_in_search(context, table_name, row, widget_name):
    widget = context._config.current_page.widgets[table_name]
    assert widget.is_upload_invalid(row, widget_name), f"This file from table {table_name} at row {row} is valid!"


@then('from table "{table_name}" at row "{row}" validate "{file_name}" file is in "{widget_name}" files list')
def check_uploaded_files(context, table_name, row, file_name, widget_name):
    widget = context._config.current_page.widgets[table_name]
    assert widget.validate_if_file_name_exist(row, widget_name,
                                              file_name), f"The file from table {table_name} at row {row} is not in the List"


@then('from table "{table_name}" at row "{row}" validate "{file_name}" file is not in "{widget_name}" files list')
def check_uploaded_files(context, table_name, row, file_name, widget_name):
    widget = context._config.current_page.widgets[table_name]
    assert not widget.validate_if_file_name_exist(row, widget_name,
                                                  file_name), f"The file from table {table_name} at row {row} in the List"


@when('from table "{table_name}" at row "{row}" delete file by name "{wanted_file_index}" in "{widget_name}"')
def choose_in_search(context, table_name, row, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.delete_file_by_name(row, widget_name, wanted_file_index)


# @when('from table "{table_name}" at row "{row}" upload a valid file "{text}" in "{widget_name}"')
# def write_time_in_table_from_column(context, table_name, row, text, widget_name):
#     widget = context._config.current_page.widgets[table_name]
#     file = os.path.join(config.utilities_folder, 'files_to_upload', f'{text}')
#     widget.upload_file(row, widget_name, file)
#     if widget.is_valid(row, widget_name):
#         log.info("we don't have a warning message")
#         rep.add_label_to_step("File type is accepted", "File type is accepted")
#     elif widget.validate_warning_message(row, widget_name):
#         log.info(f"This file is considered a valid file but it appeared as invalid")
#         rep.add_label_to_step("failure reason", f"This file is considered a valid file but it appeared as invalid")
#         raise AssertionError("File type is not accepted")


# @when('from table "{table_name}" at row "{row}" upload an invalid file "{text}" in "{widget_name}"')
# def write_time_in_table_from_column(context, table_name, row, text, widget_name):
#     widget = context._config.current_page.widgets[table_name]
#     file = os.path.join(config.utilities_folder, 'files_to_upload', f'{text}')
#     widget.upload_file(row, widget_name, file)
#     if widget.is_invalid(row, widget_name):
#         log.info(f"This file is considered an invalid file and this correct")
#         rep.add_label_to_step("failure reason", f"This file is considered an invalid file and this correct")
#     elif widget.validate_warning_message(row, widget_name):
#         log.info(f"This file is considered an invalid file but it appeared as valid")
#         rep.add_label_to_step("File type is not accepted", "File type is not accepted")
#         raise AssertionError("File type is not accepted")


@when(
    'from table "{table_name}" at row "{row}" validate name of file "{file_name_index}" is "{file_name}" in "{widget_name}"')
def validate_uploaded_files_name(context, table_name, row, file_name_index, file_name, widget_name):
    widget = context._config.current_page.widgets[table_name]
    if not widget.check_file_name(row, widget_name, file_name_index, file_name)[0]:
        rep.add_label_to_step("File extension is not allowed",
                              "File extension is not accepted, Only two formats are allowed ['png', 'pdf', 'gif', "
                              "'jpg', 'jpeg', 'bmp']")
        raise AssertionError("File extension is not accepted")
    if not widget.check_file_name(row, widget_name, file_name_index, file_name)[1]:
        rep.add_label_to_step("Wrong file name", "File name is not the same one uploaded")


@then(
    'from table "{table_name}" at row "{row}" validate size of file "{file_size_index}" in "{widget_name}" in accepted')
def check_file_size(context, table_name, row, file_size_index, widget_name):
    widget = context._config.current_page.widgets[table_name]
    if not widget.check_file_size(row, widget_name, file_size_index):
        rep.add_label_to_step("Wrong file size", "File size is not accepted, it is bigger than 6MB")
        raise AssertionError("File size is not accepted")


@when('from table "{table_name}" at row "{row}" delete file "{wanted_file_index}" in "{widget_name}"')
def delete_file_from_accordion(context, table_name, row, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.delete_file(row, widget_name, wanted_file_index)


@when('from table "{table_name}" at row "{row}" search valid value and pick "{option_value}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    try:
        if widget.choose_item(row, widget_name, option_value):
            log.info(f'option [{option_value}] is selected correctly')
            rep.add_label_to_step("Chosen option is selected correctly",
                                  f"Chosen option [{option_value}] is selected correctly")
        else:

            rep.add_label_to_step('Option is not selected',
                                  'there was not a selection from list')
            raise AssertionError('not in list')
    finally:
        widget.close_dropdown_search(row, widget_name)


@when('from table "{table_name}" at row "{row}" search invalid value and pick "{option_value}" in "{widget_name}"')
def write_invalid_in_table_from_column(context, table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    try:
        if not widget.choose_item(row, widget_name, option_value):
            log.info(f'option [{option_value}] is not selected')
            rep.add_label_to_step("Chosen option is not in the list",
                                  f"Chosen option [{option_value}] is not selected")
        else:
            rep.add_label_to_step('Option is in the list',
                                  'there was  a selection from list')
            raise AssertionError('the option valid')
    finally:
        widget.close_dropdown_search(row, widget_name)


@when('from table "{table_name}" at row "{row}" pick "{option_value}" from "{widget_name}"')
@when('from table "{table_name}" at row "{row}" pick a valid "{option_value}" from "{widget_name}"')
def pick_element(context, table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    try:
        if widget.select_element(row, widget_name, option_value):
            rep.add_label_to_step("selected Option",
                                  f'from table "{table_name}" at row "{row}"{option_value} is selected')
        else:
            rep.add_label_to_step("Didn't find selected option",
                                  f'from table "{table_name}" at row "{row}" {option_value} is not found in list')
            raise AssertionError("Desired Option is not found in list")
    finally:
        widget.close_dropdown(row, widget_name)


@when('from table "{table_name}" at row "{row}" pick an invalid "{option_value}" from "{widget_name}"')
def pick_invalid_option(context, table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    try:
        if widget.select_element(row, widget_name, option_value):
            rep.add_label_to_step('Option is selected',
                                  'The Option is considered invalid and there was a selection from list')
            raise AssertionError('The Option is considered invalid and there was a selection from list')
        else:
            rep.add_label_to_step("Chosen option is not in list",
                                  f'from table "{table_name}" at row "{row}" [{option_value}] is not found in list')
    finally:
        widget.close_dropdown(row, widget_name)


@Then('from table "{table_name}" at row "{row}" validate if "{widget_name}" text is "{text}"')
def validate_text(context, table_name, row, widget_name, text):
    widget = context._config.current_page.widgets[table_name]
    if not widget.validate_text(row, widget_name, text):
        log.info(f"This value {text} at table {table_name} at row {row} at field {widget_name} is not "
                 f"the same written value")
        rep.add_label_to_step("failure reason",
                              f"This value {text} at table {table_name} at row {row} at field {widget_name} is not "
                              " the same written value")
        raise AssertionError("Written correctly but appeared incorrectly")


@when('from table "{table_name}" at row "{row}" fill a valid number "{phone_number}" in "{widget_name}"')
def write_phone_number_valid_value(context, table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    valid, _ = widget.set_full_phone(row, widget_name, phone_number)
    phone = phone_number.split("-")
    prefix = phone[0]
    suffix = phone[1]
    try:
        if not valid[1]:
            log.info(f"Couldn't find this value {prefix} is not a valid option to select")
            rep.add_label_to_step("wrong_value", f"This value {prefix} at field not a valid value to select")
            raise KeyError("This is not a valid value to select from list")
        if not valid[0]:
            log.info(f"This value {suffix} from table {table_name} at row {row} at field {widget_name} is considered "
                     f"a valid value but it appeared as invalid")
            rep.add_label_to_step("wrong_value",
                                  f"This value {suffix} from table {table_name} at row {row} at field {widget_name} is considered "
                                  f" a valid value but it appeared as invalid")
            raise AssertionError("valid value and considered as invalid")
    finally:
        widget.close_phone_field(row, widget_name)


@when('from table "{table_name}" at row "{row}" fill an invalid number "{phone_number}" in "{widget_name}"')
def write_phone_number_invalid_value(context, table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    _, invalid = widget.set_full_phone(row, widget_name, phone_number)
    phone = phone_number.split("-")
    prefix = phone[0]
    suffix = phone[1]
    try:
        if not invalid[1]:
            log.info(f"Couldn't find this value {prefix} is not a valid option to select")
            rep.add_label_to_step("wrong_value",
                                  f"This value {prefix} rom table {table_name} at row {row} at field not a valid value to select")
            raise KeyError("This is not a valid value to select from list")
        if not invalid[0]:
            log.info(f"This value {suffix} rom table {table_name} at row {row} at field {widget_name} is considered "
                     f"as invalid")
            rep.add_label_to_step("wrong_value",
                                  f"This value {suffix} rom table {table_name} at row {row} at field {widget_name} is considered "
                                  f" an invalid value but it appeared as valid")
            raise AssertionError("valid value and considered as invalid")
    finally:
        widget.close_phone_field(row, widget_name)


@when('from table "{table_name}" at row "{row}" fill prefix number "{three_digits}" in "{widget_name}"')
def write_prefix_phone_number_valid(context, table_name, row, three_digits, widget_name):
    widget = context._config.current_page.widgets[table_name]
    try:
        _, invalid = widget.set_prefix_number(row, widget_name, three_digits)
        if not invalid:
            log.info(
                f"This Option {three_digits} from table {table_name} at row {row} at field {widget_name} not in list")
            rep.add_label_to_step("wrong_value", f"This Option {three_digits} at field {widget_name} not in list")
            raise KeyError(
                f"This Option {three_digits} from table {table_name} at row {row} at field {widget_name} not in list")
    finally:
        widget.close_phone_field(row, widget_name)


@when('from table "{table_name}" at row "{row}" fill number "{phone_number}" as valid value in "{widget_name}"')
def write_phone_number_valid(context, table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_phone_number(row, widget_name, phone_number)
    if not widget.is_valid_phone_text(row, widget_name):
        log.info(f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered "
                 f" a valid value but it appeared as invalid")
        rep.add_label_to_step("wrong_value",
                              f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered "
                              f" a valid value but it appeared as invalid")
        raise AssertionError(
            f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered a valid value but it is invalid")


@when('from table "{table_name}" at row "{row}" fill number "{phone_number}" as invalid value in "{widget_name}"')
def write_phone_number_invalid(context, table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_phone_number(row, widget_name, phone_number)
    if not widget.is_invalid_phone_text(row, widget_name):
        log.info(f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("wrong_value",
                              f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered "
                              f" an invalid value but it appeared as valid")
        raise AssertionError(
            f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered an invalid value but it is valid")


@then(
    'from table "{table_name}" at row "{row}" check if phone number error in "{widget_name}" is "{error_expectation}"')
def error_msg(context, table_name, row, widget_name, error_expectation):
    widget = context._config.current_page.widgets[table_name]
    if not widget.is_invalid_phone_text(row, widget_name):
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_phone_text_error_message(row, widget_name, error_expectation):
        log.info(f"The error value in table {table_name} in row {row} at field {widget_name} is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              f"The error value in table {table_name} in row {row} at field {widget_name} is not "
                              f"equal to {error_expectation}")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@when('from table "{table_name}" at row "{row}" write a valid number "{number}" in "{widget_name}"')
def write_into_field(context, table_name, row, number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_text_number(row, widget_name, number)
    if not widget.is_valid_text_number(row, widget_name):
        log.info(f"This value {number} from table {table_name} at row {row} at field {widget_name} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from table {table_name} at row {row} at field {widget_name} is considered "
                              f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when('from table "{table_name}" at row "{row}" write an invalid number "{number}" in "{widget_name}"')
def write_into_field(context, table_name, row, number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_text_number(row, widget_name, number)
    if not widget.is_invalid_text_number(row, widget_name):
        log.info(f"This value {number} from table {table_name} at row {row} at field {widget_name} is considered "
                 f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from table {table_name} at row {row} at field {widget_name} is considered "
                              f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@Then('from table "{table_name}" at row "{row}" validate if "{widget_name}" value is "{number}"')
def append_text_number_field(context, table_name, row, widget_name, number):
    widget = context._config.current_page.widgets[table_name]
    if not widget.validate_text_number(widget_name, row, number):
        log.info(f"This value {number} from table {table_name} at row {row} at field {widget_name} is not "
                 f" the same written value")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from table {table_name} at row {row} at field {widget_name} is not "
                              " the same written value")
        raise AssertionError("Written correctly but appeared incorrectly")


@when(
    'from table "{table_name}" at row "{row}" search valid value and pick "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    try:
        if widget.search_and_pick_first_element_and_validate(widget_name, row, option_value):
            log.info(f'option [{option_value}] from table {table_name} at row {row} is selected correctly')
            rep.add_label_to_step("Chosen option is selected correctly",
                                  f"Chosen option [{option_value}] from table {table_name} at row {row} is selected correctly")
        elif widget.get_search_result_if_empty(widget_name, row):
            rep.add_label_to_step("Chosen option is not in list",
                                  f"Chosen option [{option_value}] from table {table_name} at row {row} is not found in list")
            raise AssertionError('Chosen option is not in list')
    finally:
        widget.close_dropdown_search(row, widget_name)


@when(
    'from table "{table_name}" at row "{row}" search invalid value and pick "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    try:
        if widget.search_and_pick_first_element_and_validate(widget_name, row, option_value):
            rep.add_label_to_step('Option is selected',
                                  'The chosen Option is considered invalid and there was a selection from list')
            raise AssertionError('The chosen Option is considered invalid and there was a selection from list')
        elif widget.get_search_result_if_empty(widget_name, row):
            rep.add_label_to_step("Chosen Option is not in list",
                                  f"Chosen Option [{option_value}] from table {table_name} at row {row} is not found in list")
    finally:
        widget.close_dropdown_search(row, widget_name)


''' ### multiple tables accordion steps ### '''


@Then(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" validate if "{widget_name}" text is "{text}"')
def validate_text(context, table_name, sub_table_name, row, widget_name, text):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    if not widget.validate_text(row, widget_name, text, table_index=int(table_index)):
        log.info(
            f'This value {text} from parent "{table_name}" at table "{sub_table_name}" at row "{row}" at field {widget_name} is not '
            f"the same written value")
        rep.add_label_to_step("failure reason",
                              f'This value {text} from parent "{table_name}" at table "{sub_table_name}" at row "{row}" at field {widget_name} is not '
                              " the same written value")
        raise AssertionError("Written correctly but appeared incorrectly")


@when('from parent "{table_name}" at table "{sub_table_name}" add "{items}" rows')
def add_items_in_table(context, table_name, sub_table_name, items):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    for item in range(int(items)):
        widget.add_item(int(table_index))


@when('from parent "{table_name}" at table "{sub_table_name}" remove row "{items}"')
def remove_item_from_table(context, table_name, sub_table_name, items):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.remove_item(items, int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" write a valid value "{text}" in "{widget_name}"')
def write_in_table_from_column(context, table_name, sub_table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_text_field(row, widget_name, text, table_index=int(table_index))
    if widget.validate_text_is_invalid(row, widget_name, table_index=int(table_index)):
        log.info(
            f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name} at row {row} is considered "
            f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name}"
                              f" at row {row} is considered"
                              f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" write an invalid value "{text}" in "{widget_name}"')
def write_in_table_from_column(context, table_name, sub_table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_text_field(row, widget_name, text, table_index=int(table_index))
    if widget.validate_text_is_valid(row, widget_name, table_index=int(table_index)):
        log.info(
            f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name} at row {row} is considered "
            f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason",
                              f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name} at row {row} is considered "
                              f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@then(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" check if "{widget_name}" error message is "{error_expectation}"')
def error_msg(context, table_name, sub_table_name, row, widget_name, error_expectation):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    if not widget.validate_text_is_invalid(row, widget_name, table_index=int(table_index)):
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_error_message(row, widget_name, error_expectation):
        log.info(f"The error value in table {table_name} in row {row} at field {widget_name} is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              f"The error value in table {table_name} in row {row} at field {widget_name} is not "
                              f"equal to {error_expectation}")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" pick a valid value "{option_value}" from "{widget_name}"')
def pick_element(context, table_name, sub_table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    try:
        if widget.select_element(row, widget_name, option_value, table_index=int(table_index)):
            rep.add_label_to_step("selected Option",
                                  f'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" "{option_value} is selected')
        else:
            rep.add_label_to_step("Didn't find selected option",
                                  f'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" {option_value} is not found in list')
            raise AssertionError("Desired Option is not found in list")
    finally:
        widget.close_dropdown(row, widget_name, table_index=int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" pick an invalid value "{option_value}" from "{widget_name}"')
def pick_invalid_option(context, table_name, sub_table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    try:
        if widget.select_element(row, widget_name, option_value, table_index=int(table_index)):
            rep.add_label_to_step('Option is selected',
                                  'The Option is considered invalid and there was a selection from list')
            raise AssertionError('The Option is considered invalid and there was a selection from list')
        else:
            rep.add_label_to_step("Chosen option is not in list",
                                  f'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" [{option_value}] is not found in list')
    finally:
        widget.close_dropdown(row, widget_name, table_index=int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" write a valid value "{text}" in textarea of "{widget_name}"')
def write_in_table_from_column(context, table_name, sub_table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_textarea_field(row, widget_name, text, table_index=int(table_index))
    if widget.validate_textarea_is_invalid(row, widget_name, table_index=int(table_index)):
        log.info(
            f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name} at row {row} is considered "
            f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name}"
                              f" at row {row} is considered"
                              f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" write an invalid value "{text}" in textarea of "{widget_name}"')
def write_in_table_from_column(context, table_name, sub_table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_textarea_field(row, widget_name, text, table_index=int(table_index))
    if widget.validate_textarea_is_valid(row, widget_name, table_index=int(table_index)):
        log.info(
            f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name} at row {row} is considered "
            f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason",
                              f"This value {text} at field {widget_name} from parent {table_name} at table {sub_table_name} at row {row} is considered "
                              f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@then(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" validate textarea "{widget_name}" error is "{error_expectation}"')
def error_msg(context, table_name, sub_table_name, row, widget_name, error_expectation):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    if not widget.validate_textarea_is_invalid(row, widget_name, table_index=int(table_index)):
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_textarea_error_message(row, widget_name, error_expectation, table_index=int(table_index)):
        log.info(
            f"The error value in parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              f"The error value in parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is not "
                              f"equal to {error_expectation}")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" fill a valid number "{phone_number}" in "{widget_name}"')
def write_phone_number_valid_value(context, table_name, sub_table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    valid, _ = widget.set_full_phone(row, widget_name, phone_number, table_index=int(table_index))
    phone = phone_number.split("-")
    prefix = phone[0]
    suffix = phone[1]
    try:
        if not valid[1]:
            log.info(f"Couldn't find this value {prefix} is not a valid option to select")
            rep.add_label_to_step("wrong_value", f"This value {prefix} at field not a valid value to select")
            raise KeyError("This is not a valid value to select from list")
        if not valid[0]:
            log.info(f"This value {suffix} at field {widget_name} is considered "
                     f"a valid value but it appeared as invalid")
            rep.add_label_to_step("wrong_value", f"This value {suffix} at field {widget_name} is considered "
                                                 f" a valid value but it appeared as invalid")
            raise AssertionError("valid value and considered as invalid")
    finally:
        widget.close_phone_field(row, widget_name, table_index=int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" fill an invalid number "{phone_number}" in "{widget_name}"')
def write_phone_number_invalid_value(context, table_name, sub_table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    _, invalid = widget.set_full_phone(row, widget_name, phone_number, table_index=int(table_index))
    phone = phone_number.split("-")
    prefix = phone[0]
    suffix = phone[1]
    try:
        if not invalid[1]:
            log.info(f"Couldn't find this value {prefix} is not a valid option to select")
            rep.add_label_to_step("wrong_value", f"This value {prefix} at field not a valid value to select")
            raise KeyError("This is not a valid value to select from list")
        if not invalid[0]:
            log.info(f"This value {suffix} at field {widget_name} is considered "
                     f"as invalid")
            rep.add_label_to_step("wrong_value", f"This value {suffix} at field {widget_name} is considered "
                                                 f" an invalid value but it appeared as valid")
            raise AssertionError("valid value and considered as invalid")
    finally:
        widget.close_phone_field(row, widget_name, table_index=int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" fill prefix number "{three_digits}" in "{widget_name}"')
def write_prefix_phone_number_valid(context, table_name, sub_table_name, row, three_digits, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    try:
        _, invalid = widget.set_prefix_number(row, widget_name, three_digits, table_index=int(table_index))
        if not invalid:
            log.info(
                f"This Option {three_digits} from parent {table_name} at table {table_name} at row {row} at field {widget_name} not in list")
            rep.add_label_to_step("wrong_value",
                                  f"This Option {three_digits} rom parent {table_name} at table {table_name} at row {row} at field {widget_name} not in list")
            raise KeyError(
                f"This Option {three_digits} from parent {table_name} at table {table_name} at row {row} at field {widget_name} not in list")
    finally:
        widget.close_phone_field(row, widget_name, table_index=int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" fill valid number "{phone_number}" in "{widget_name}"')
def write_phone_number_valid(context, table_name, sub_table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_phone_number(row, widget_name, phone_number, table_index=int(table_index))
    if not widget.is_valid_phone_text(row, widget_name, table_index=int(table_index)):
        log.info(f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered "
                 f" a valid value but it appeared as invalid")
        rep.add_label_to_step("wrong_value",
                              f"This value {phone_number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered "
                              f" a valid value but it appeared as invalid")
        raise AssertionError(
            f"This value {phone_number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered a valid value but it is invalid")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" fill invalid number "{phone_number}" in "{widget_name}"')
def write_phone_number_invalid(context, table_name, sub_table_name, row, phone_number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_phone_number(row, widget_name, phone_number, table_index=int(table_index))
    if not widget.is_invalid_phone_text(row, widget_name, table_index=int(table_index)):
        log.info(
            f"This value {phone_number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered "
            f" an invalid value but it appeared as valid")
        rep.add_label_to_step("wrong_value",
                              f"This value {phone_number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered "
                              f" an invalid value but it appeared as valid")
        raise AssertionError(
            f"This value {phone_number} from table {table_name} at row {row} at field {widget_name} is considered an invalid value but it is valid")


@then(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" check if phone number error in "{widget_name}" is "{error_expectation}"')
def error_msg(context, table_name, sub_table_name, row, widget_name, error_expectation):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    if not widget.is_invalid_phone_text(row, widget_name, table_index=int(table_index)):
        rep.add_label_to_step("No label appeared", "There should be an error message but it didnt appear at all")
        raise AssertionError("invalid value and considered as valid")
    if not widget.validate_phone_text_error_message(row, widget_name, error_expectation, table_index=int(table_index)):
        log.info(
            f"The error value in parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              f"The error value in parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is not "
                              f"equal to {error_expectation}")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", "red error message appeared correctly")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" write a valid number "{number}" in "{widget_name}"')
def write_into_field(context, table_name, sub_table_name, row, number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_text_number(row, widget_name, number, table_index=int(table_index))
    if not widget.is_valid_text_number(row, widget_name, table_index=int(table_index)):
        log.info(
            f"This value {number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered "
            f" an valid value but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered "
                              f" an valid value but it appeared as invalid")
        raise AssertionError("valid value and considered as invalid")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" write an invalid number "{number}" in "{widget_name}"')
def write_into_field(context, table_name, sub_table_name, row, number, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.set_text_number(row, widget_name, number, table_index=int(table_index))
    if not widget.is_invalid_text_number(row, widget_name, table_index=int(table_index)):
        log.info(
            f"This value {number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered "
            f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is considered "
                              f" an invalid value but it appeared as valid")
        raise AssertionError("valid value and considered as invalid")


@Then(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" validate if "{widget_name}" value is "{number}"')
def append_text_number_field(context, table_name, sub_table_name, row, widget_name, number):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    if not widget.validate_text_number(widget_name, row, number, table_index=int(table_index)):
        log.info(
            f"This value {number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is not "
            f" the same written value")
        rep.add_label_to_step("failure reason",
                              f"This value {number} from parent {table_name} at table {sub_table_name} at row {row} at field {widget_name} is not "
                              " the same written value")
        raise AssertionError("Written correctly but appeared incorrectly")


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" search and pick valid value "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, table_name, sub_table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    try:
        if widget.search_and_pick_first_element_and_validate(widget_name, row, option_value,
                                                             table_index=int(table_index)):
            log.info(f'option [{option_value}] from table {table_name} at row {row} is selected correctly')
            rep.add_label_to_step("Chosen option is selected correctly",
                                  f"Chosen option [{option_value}] from table {table_name} at row {row} is selected correctly")
        elif widget.get_search_result_if_empty(widget_name, row, table_index=int(table_index)):
            rep.add_label_to_step("Chosen option is not in list",
                                  f"Chosen option [{option_value}] from parent {table_name} at table {sub_table_name} at row {row} is not found in list")
            raise AssertionError('Chosen option is not in list')
    finally:
        widget.close_dropdown_search(row, widget_name, table_index=int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" search and pick invalid value "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, table_name, sub_table_name, row, option_value, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    try:
        if widget.search_and_pick_first_element_and_validate(widget_name, row, option_value,
                                                             table_index=int(table_index)):
            rep.add_label_to_step('Option is selected',
                                  'The chosen Option is considered invalid and there was a selection from list')
            raise AssertionError('The chosen Option is considered invalid and there was a selection from list')
        elif widget.get_search_result_if_empty(widget_name, row, table_index=int(table_index)):
            rep.add_label_to_step("Chosen Option is not in list",
                                  f"Chosen Option [{option_value}] from parent {table_name} at table {sub_table_name} at row {row} is not found in list")
    finally:
        widget.close_dropdown_search(row, widget_name, table_index=int(table_index))


@when(
    'from parent "{table_name}" at table "{sub_table_name}" at row "{row}" upload "{file_path}" file in "{widget_name}"')
def upload_file(context, table_name, sub_table_name, row, file_path, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{file_path}')
    widget.upload_file(row, widget_name, file, table_index=int(table_index))


@then('from parent "{table_name}" at table "{sub_table_name}" at row "{row}" validate "{widget_name}" field is valid')
def validate_file_is_valid(context, table_name, sub_table_name, row, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    assert widget.is_upload_valid(row, widget_name, table_index=int(
        table_index)), f"This file from parent {table_name} at table {sub_table_name} at row {row} is invalid!"


@then('from parent "{table_name}" at table "{sub_table_name}" at row "{row}" validate "{file_name}" file is in "{widget_name}" files list')
def check_uploaded_files(context, table_name, sub_table_name, row, file_name, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    assert widget.validate_if_file_name_exist(row, widget_name,
                                              file_name, table_index=int(table_index)), f"The file from parent {table_name} at table {sub_table_name} at row {row} is not in the List"


@when('from parent "{table_name}" at table "{sub_table_name}" at row "{row}" delete file by name "{wanted_file_index}" in "{widget_name}"')
def choose_in_search(context, table_name,sub_table_name, row, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[table_name]
    table_index = widget.get_table_index_from_tab_name(sub_table_name)
    widget.delete_file_by_name(row, widget_name, wanted_file_index, table_index=int(table_index))
