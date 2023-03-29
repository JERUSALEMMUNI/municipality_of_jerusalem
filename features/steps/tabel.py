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


# @when('pick month "{month}" in widget "{widget_name}" at index "{number}"')
# def add_items_month_year_list(context, month, widget_name, number):
#     widget = context._config.current_page.widgets[widget_name]
#     widget.set_month(month, number)
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
    widget.set_text(row, widget_name, text)
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
    widget.set_text(row, widget_name, text)
    if not widget.validate_text_is_invalid(row, widget_name):
        log.info(f"This value {text} at field {widget_name} from table {table_name} at row {row} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("failure reason", f"This value {text} at field {widget_name} from table {table_name} at "
                                                f"row {row} is considered"
                                                f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@then('from table "{table_name}" at row "{row}" check if "{widget_name}" error is "{error_expectation}"')
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


@when('from table "{table_name}" add "{items}"')
def add_items_in_table(context, table_name, items):
    widget = context._config.current_page.widgets[table_name]
    for item in range(int(items)):
        widget.add_item()


@when('from table "{table_name}" remove "{items}"')
def remove_item_from_table(context, table_name, items):
    widget = context._config.current_page.widgets[table_name]
    widget.remove_item(items)


@when('from table "{table_name}" at row "{row}" upload a valid file "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{text}')
    widget.upload_file(row, widget_name, file)
    if widget.is_valid(row, widget_name):
        log.info("we don't have a warning message")
        rep.add_label_to_step("File type is accepted", "File type is accepted")
    elif widget.validate_warning_message(row, widget_name):
        log.info(f"This file is considered a valid file but it appeared as invalid")
        rep.add_label_to_step("failure reason", f"This file is considered a valid file but it appeared as invalid")
        raise AssertionError("File type is not accepted")


@when('from table "{table_name}" at row "{row}" upload an invalid file "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{text}')
    widget.upload_file(row, widget_name, file)
    if widget.is_invalid(row, widget_name):
        log.info(f"This file is considered an invalid file and this correct")
        rep.add_label_to_step("failure reason", f"This file is considered an invalid file and this correct")
    elif widget.validate_warning_message(row, widget_name):
        log.info(f"This file is considered an invalid file but it appeared as valid")
        rep.add_label_to_step("File type is not accepted", "File type is not accepted")
        raise AssertionError("File type is not accepted")


@when('from table "{table_name}" at row "{row}" validate name of file "{file_name_index}" is "{file_name}" in "{widget_name}"')
def validate_uploaded_files_name(context, table_name, row, file_name_index, file_name, widget_name):
    widget = context._config.current_page.widgets[table_name]
    if not widget.check_file_name(row, widget_name, file_name_index, file_name)[0]:
        rep.add_label_to_step("File extension is not allowed",
                              "File extension is not accepted, Only two formats are allowed pdf and jpg")
        raise AssertionError("File extension is not accepted")
    if not widget.check_file_name(row, widget_name, file_name_index, file_name)[1]:
        rep.add_label_to_step("Wrong file name", "File name is not the same one uploaded")


@then('from table "{table_name}" at row "{row}" validate size of file "{file_size_index}" in "{widget_name}" in accepted')
def check_file_size(context, table_name, row, file_size_index, widget_name):
    widget = context._config.current_page.widgets[table_name]
    if not widget.check_file_size(row, widget_name, file_size_index):
        rep.add_label_to_step("Wrong file size", "File size is not accepted, it is bigger than 6MB")
        raise AssertionError("File size is not accepted")


@when('from table "{table_name}" at row "{row}" delete file "{wanted_file_index}" in "{widget_name}"')
def choose_in_search(context, table_name, row, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.delete_file(row, widget_name, wanted_file_index)


@when('from table "{table_name}" at row "{row}" pick "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.choose_item(row, widget_name, text)
