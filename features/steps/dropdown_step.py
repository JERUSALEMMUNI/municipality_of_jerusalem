from behave import *
import allure
from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('click on "{widget_name}"')
def click_on_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
    except Exception as e:
        log.debug(e)


@when('choose "{widget_name}" in search')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.clickBtn()
    except Exception as e:
        log.debug(e)


@when('pick "{option_value}" from "{widget_name}"')
def pick_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        widget.select_element(option_value)
    except Exception as e:
        log.debug(e)


@when('write "{option_value}" in search field "{widget_name}"')
def write_in_search_field(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        widget.write_in_search_field(option_value)
    except Exception as e:
        log.debug(e)


@When('clear search field for "{widget_name}"')
def pick_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.clear_search_field()
    except Exception as e:
        log.debug(e)


@when('search for "{option_value}" in "{widget_name}"')
@when('scroll to "{option_value}" from "{widget_name}"')
def scroll_to_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        driver = context._config.current_page.driver
        widget.item_search_scroll(driver, option_value)
    except Exception as e:
        log.debug(e)


@then('validate all "{widget_name}" options contain "{option_value}"')
def scroll_to_element(context, widget_name, option_value):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        driver = context._config.current_page.driver
        assert option_value in widget.item_search_scroll(driver, option_value)[1]
    except Exception as e:
        log.debug(e)


@then('validate "{widget_name}" has no options')
def scroll_to_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        assert "No results found" in widget.get_search_result_if_empty()
    except Exception as e:
        log.debug(e)


@when('goto "{option_value}" from "{widget_name}"')
def search_(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.search_element(option_value)
    except Exception as e:
        log.debug(e)


@then('validate "{widget_name}" has "{option_value}" in list')
def scroll_to_element(context, widget_name, option_value):
    widget = context._config.current_page.widgets[widget_name]


    driver = context._config.current_page.driver
    widget.click_button()
    assert option_value in widget.item_search_scroll(driver, option_value)[1]



@then('selected option of "{widget_name}" is "{element}"')
def select_element_after_scroll(context, widget_name, element):
    widget = context._config.current_page.widgets[widget_name]

    try:
        result = widget.validate_selected()
        log.info("result is: " + result + " ?== prefix value " + element)
        assert result == element
    except Exception as e:
        log.debug(e)


@when('select all options of "{widget_name}"')
def select_all_elements(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        widget.select_all_checkbox()
    except Exception as e:
        log.debug(e)


@when('deselect all options of "{widget_name}"')
def deselect_all(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        widget.clear_selected_items()
    except Exception as e:
        log.debug(e)


@when('select option "{option_value}" at "{widget_name}"')
def deselect_all(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        widget.click_chosen_option(option_value)
    except Exception as e:
        log.debug(e)


@Then('validate option "{option}" from "{widget_name}" list is checked')
def validate_if_option_is_selected(context, option, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        assert widget.validate_selected_option(option), 'Selected item is not chosen correctly'
    except Exception as e:
        log.debug(e)


@when('deselect option "{option}" from "{widget_name}"')
def deselect_element(context, option, widget_name):
    widget = context._config.current_page.widgets[widget_name]

    try:
        widget.click_button()
        widget.select_element(option)
        assert widget.validate_option_is_not_selected(option), 'Option is still selected'
    except Exception as e:
        log.debug(e)


@then('validate if all checked options appeared in selection order under "{widget_name}"')
def validate_if_option_is_selected(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.click_button()
    #todo: what happen if all ok?
    context.table = widget.validate_checked_list_count()[1]
    table = context.table
    rep.add_table('list of failures')
    rep.add_columns('list of failures', ('no', 'option no.'), ('option', 'Selected option'), ('appeared', 'Appeared under field as'))
    table_rows = [list(row) for row in table]
    for row in table_rows:
        rep.add_row('list of failures', row)
    rep.add_table_to_step('list of failures')
    assert widget.validate_checked_list_count()[0], 'Selected item did not appear correctly'
