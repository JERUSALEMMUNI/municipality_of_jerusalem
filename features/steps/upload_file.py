import os

from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('Upload "{file_path}" file in "{widget_name}"')
def choose_in_search(context, file_path, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    file = os.path.join(config.utilities_folder, 'files_to_upload', f'{file_path}')
    widget.upload_file(file)


@then('validate name of file "{file_name_index}" is "{file_name}" in "{widget_name}"')
def check_uploaded_files(context, file_name_index, file_name, widget_name):
    """
    The check_file_name function returns tuple, first value checks if the file extension is allowed.
    second value checks if we saw the file's name listed correctly
    """
    widget = context._config.current_page.widgets[widget_name]

    if not widget.check_file_name(file_name_index, file_name)[0]:
        rep.add_label_to_step("File extension is not allowed","File extension is not accepted, Only two formats are allowed pdf and jpg")
        # raise AssertionError("File extension is not accepted")
    if not widget.check_file_name(file_name_index, file_name)[1]:
        rep.add_label_to_step("Wrong file name","File name is not the same one uploaded")
        #Todo: if we make AssertionError, all steps in Scenario will be broken
        # raise AssertionError("File name is different")


@then('validate size of file "{file_size_index}" in "{widget_name}" in accepted')
def choose_in_search(context, file_size_index, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.check_file_size(file_size_index):
        rep.add_label_to_step("Wrong file size","File size is not accepted, it is bigger than 6MB")
        raise AssertionError("File size is not accepted")


@when('delete file "{wanted_file_index}" in "{widget_name}"')
def choose_in_search(context, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.delete_file(wanted_file_index)




