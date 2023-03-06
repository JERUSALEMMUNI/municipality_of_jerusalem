from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('we have "{selected_input:d}" steps in this page')
def search_in_select(context, selected_input):
    widget_name = "page_steps"
    widget = context._config.current_page.widgets[widget_name]
    steps_amount = widget.get_steps_amount()
    assert steps_amount == selected_input, f'Incorrect steps count'


@when('steps tittle is "{expected_tittle}"')
def search_in_select(context, expected_tittle):
    widget_name = "page_steps"
    widget = context._config.current_page.widgets[widget_name]
    assert widget.check_app_steps_tittle(expected_tittle), "This Tittle is not correct"


@Then('validate current step is "{expected_step}"')
def search_in_select(context, expected_step):
    widget_name = "page_steps"
    widget = context._config.current_page.widgets[widget_name]
    current_step = widget.get_step_name()
    assert widget.step_checker(expected_step), f'Wrong step name'
