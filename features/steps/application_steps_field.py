from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('we have "{selected_input:d}" steps in this page')
def search_in_select(context, selected_input):
    widget_name = "page_steps"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    steps_amount = widget.get_steps_amount()
    assert steps_amount == selected_input, f'Error, you have {steps_amount} steps'


@when('steps tittle is "{expected_tittle}"')
def search_in_select(context, expected_tittle):
    widget_name = "page_steps"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_app_steps_tittle(expected_tittle), "Error, This Tittle is not correct"


@Then('validate current step is "{expected_step}"')
def search_in_select(context, expected_step):
    widget_name = "page_steps"
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    current_step = widget.get_step_name()
    assert widget.step_checker(expected_step), f'Error, You Are in Step {current_step}'
