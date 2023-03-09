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
def choose_in_search(context, file_name_index, file_name, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.check_file_name(file_name_index, file_name), "File name is not correct"


@then('validate size of file "{file_size_index}" in "{widget_name}" in accepted')
def choose_in_search(context, file_size_index, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.check_file_size(file_size_index), "File size is not accepted"


@when('delete file "{wanted_file_index}" in "{widget_name}"')
def choose_in_search(context, wanted_file_index, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.delete_file(wanted_file_index)




