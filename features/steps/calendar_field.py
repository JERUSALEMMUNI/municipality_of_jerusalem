from behave import *
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from infra import logger, reporter, config


rep = reporter.get_reporter()
log = logger.get_logger(__name__)

@when('pick "{date}" from calendar of "{widget_name}"')
def date_select(context,widget_name,date):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.select_all_date(date)

@when('write date "{date}" in "{widget_name}"')
def date_write(context,widget_name,date):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.initial_widgets()
    widget.date_by_write(date)

@Then('validate picked date of "{widget_name}" is "{date}"')
def search_in_select(context, widget_name, date):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    assert widget.check_date(date), f'Error, {widget.get_date()} is not correct, you choose {date}'

