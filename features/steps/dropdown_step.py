from behave import *
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('I click on "{widget_name}"')
def click_on_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()


@when('pick "{option_value}" from "{widget_name}"')
def pick_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    widget.select_element(option_value)
    log.info("is the selected items equal to list under the field: " + str(widget.validate_checked_list_count()))


@when('write "{option_value}" in search field "{widget_name}"')
def write_in_search_field(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    widget.write_in_search_field(option_value)


@When('clear search field for "{widget_name}"')
def pick_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.clear_search_field()


@when('search for "{option_value}" in "{widget_name}"')
@when('scroll to "{option_value}" from "{widget_name}"')
def scroll_to_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    driver = context._config.current_page.driver
    widget.item_search_scroll(driver, option_value)


@then('validate all "{widget_name}" options contain "{option_value}"')
def scroll_to_element(context, widget_name, option_value):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    driver = context._config.current_page.driver
    assert option_value in widget.item_search_scroll(driver, option_value)[1]


@then('validate "{widget_name}" has no options')
def scroll_to_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    assert "No results found" in widget.get_search_result_if_empty()


@when('goto "{option_value}" from "{widget_name}"')
def search_(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value1'])
        widget.set_web_element(web_element)
    widget.search_element(option_value)


@then('validate "{widget_name}" has "{option_value}" in list')
def scroll_to_element(context, widget_name, option_value):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    driver = context._config.current_page.driver
    log.info(widget.item_search_scroll(driver, option_value))
    assert option_value in widget.item_search_scroll(driver, option_value)[1]


@then('selected option of "{widget_name}" is "{element}"')
def select_element_after_scroll(context, widget_name, element):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    result = widget.validate_selected()
    log.info("result is: " + result + " ?== prefix value " + element)
    assert result == element


@when('select all options of "{widget_name}"')
def select_all_elements(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    widget.select_all_checkbox()


@when('deselect all options of "{widget_name}"')
def deselect_all(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    widget.clear_selected_items()


@when('select option "{option_value}" at "{widget_name}"')
def deselect_all(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    widget.click_chosen_option(option_value)


@Then('validate option "{option}" from "{widget_name}" list is checked')
def validate_if_option_is_selected(context, option, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    assert widget.validate_selected_option(option), 'Selected item is not chosen correctly'


@when('deselect option "{option}" from "{widget_name}"')
def deselect_element(context, option, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    widget.select_element(option)
    assert widget.validate_option_is_not_selected(option), 'Option is still selected'


@then('validate if all checked options appeared in selection order under "{widget_name}"')
def validate_if_option_is_selected(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)
    widget.click_button()
    assert widget.validate_checked_list_count(), 'Selected item did not appear correctly'
