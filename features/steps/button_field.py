from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@When('click on "{widget_name}" button')
def click_button(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.click_button()


@When('click on "{button_name}" icon')
def click_button(context, button_name):
    widget = context._config.current_page.widgets[button_name]
    widget.click_button()
