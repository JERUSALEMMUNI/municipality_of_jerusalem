from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('check the captcha box of "{widget_name}"')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.check_captcha_box()


@when('uncheck the captcha box of "{widget_name}"')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.uncheck_captcha_box()


@Then('validate captcha box of "{widget_name}" is checked')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_captcha_box_is_checked(), "This captcha box is not checked!"


@Then('validate captcha box of "{widget_name}" is unchecked')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_captcha_box_is_unchecked(), "This captcha kbox is not unchecked!"
