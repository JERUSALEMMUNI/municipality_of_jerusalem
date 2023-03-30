import os

from behave import *

from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('Upload a valid "{file_path}" file in "{widget_name}"')
def choose_in_search(context, file_path, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{file_path}')
    widget.upload_file(file)
    if widget.is_valid:
        log.info("we don't have a warning message")
        rep.add_label_to_step("File type is accepted", "File type is accepted")
    elif widget.validate_warning_message():
        log.info(f"This file is considered a valid file but it appeared as invalid")
        rep.add_label_to_step("failure reason", f"This file is considered a valid file but it appeared as invalid")
        raise AssertionError("File type is not accepted")


@when('Upload an invalid "{file_path}" file in "{widget_name}"')
def choose_an_invalid_search(context, file_path, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{file_path}')
    widget.upload_file(file)
    if widget.is_invalid:
        log.info(f"This file is considered an invalid file and this correct")
        rep.add_label_to_step("file status", f"This file is considered an invalid file and this correct")
    else:
        log.info(f"This file is considered an invalid file but it appeared as valid")
        rep.add_label_to_step("file status", "File type considered an invalid file but it appeared as valid")
        raise AssertionError("File type considered an invalid file but it appeared as valid")


@when('from parent "{parent}" Upload a valid "{file_path}" file in "{widget_name}"')
def choose_in_search(context, parent, file_path, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{file_path}')
    log.info(file)
    widget.upload_file(file, context._config.driver)
    if widget.is_valid:
        log.info("we don't have a warning message")
        rep.add_label_to_step("File type is accepted", "File type is accepted")
    elif widget.validate_warning_message():
        log.info(f"This file is considered a valid file but it appeared as invalid")
        rep.add_label_to_step("failure reason",
                              f"This file is considered a valid file but it appeared as invalid")
        raise AssertionError("File type is not accepted")


@when('from parent "{parent}" Upload an invalid "{file_path}" file in "{widget_name}"')
def choose_an_invalid_search(context, parent, file_path, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{file_path}')
    widget.upload_file(file)
    if widget.is_invalid:
        log.info(f"This file is considered an invalid file and this correct")
        rep.add_label_to_step("status", f"This file is considered an invalid file and this correct")
    else:
        log.info(f"This file is considered an invalid file but it appeared as valid")
        rep.add_label_to_step("failure reason", "File type considered an invalid file but it appeared as valid")
        raise AssertionError("File type considered an invalid file but it appeared as valid")


@then('validate name of file "{file_name_index}" is "{file_name}" in "{widget_name}"')
def check_uploaded_files(context, file_name_index, file_name, widget_name):
    """
    The check_file_name function returns tuple, first value checks if the file extension is allowed.
    second value checks if we saw the file's name listed correctly
    """
    widget = context._config.current_page.widgets[widget_name]

    if not widget.check_file_name(file_name_index, file_name)[0]:
        rep.add_label_to_step("File extension is not allowed",
                              "File extension is not accepted, Only two formats are allowed ['png', 'pdf', 'gif', "
                              "'jpg', 'jpeg', 'bmp']")
        raise AssertionError("File extension is not accepted")
    if not widget.check_file_name(file_name_index, file_name)[1]:
        rep.add_label_to_step("Wrong file name", "File name is not the same one uploaded")


@then('validate size of file "{file_size_index}" in "{widget_name}" in accepted')
def choose_in_search(context, file_size_index, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.check_file_size(file_size_index):
        rep.add_label_to_step("Wrong file size", "File size is not accepted, it is bigger than 6MB")
        raise AssertionError("File size is not accepted")


@when('delete file by index "{wanted_file_index}" in "{widget_name}"')
def choose_in_search(context, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.delete_file_by_index(wanted_file_index)


@when('delete file by name "{wanted_file_index}" in "{widget_name}"')
def choose_in_search(context, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.delete_file_by_name(wanted_file_index)


@then('check if "{widget_name}" error window message is "{error_expectation}"')
def error_msg(context, widget_name, error_expectation):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.is_invalid:
        rep.add_label_to_step("invalid but appeared as valid",
                              "The status of this label is valid, but it should be invalid")
    if not widget.validate_error_window_message(error_expectation):
        log.info(f"The error value at field is incorrect")
        rep.add_label_to_step("incorrect message or missing",
                              "incorrect or missing error value and considered as valid")
        raise AssertionError("invalid value and considered as valid")
    rep.add_label_to_step("message appeared", f"expected error message {error_expectation} appeared correctly")
