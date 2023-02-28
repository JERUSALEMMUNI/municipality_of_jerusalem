from behave import *
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)
@When('click on "{widget_name}" button')
def click_button(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
