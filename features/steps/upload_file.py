from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('Upload "{file_path}" file in "{widget_name}"')
def choose_in_search(context, file_path, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    widget.upload_file(file_path)




