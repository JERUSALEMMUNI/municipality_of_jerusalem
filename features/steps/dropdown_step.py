from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('click on "{widget_name}"')
def click_on_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.click_button()


@when('choose "{widget_name}" in search')
def choose_in_search(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.clickBtn()


@when('pick "{option_value}" from "{widget_name}"')
def pick_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if widget.select_element(option_value):
            rep.add_label_to_step("selected Value", f"{option_value} is selected")
        else:
            rep.add_label_to_step("Didn't find selected option", f"{option_value} is not found in list")
            raise KeyError('Desired value is not found in list')
    finally:
        widget.close()


@when('Select "{option_value}" from "{widget_name}"')
def select_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        widget.new_select_element(option_value)
    finally:
        widget.close()

@when('pick "{option_value}" from no label dropdown of "{widget_name}"')
def pick_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if widget.select_no_label_dropdown_element(option_value):
            rep.add_label_to_step("selected Value", f"{option_value} is selected")
        else:
            rep.add_label_to_step("Didn't find selected option", f"{option_value} is not found in list")
            raise KeyError('Desired value is not found in list')
    finally:
        widget.close()


@when('from parent "{parent}" pick "{option_value}" from "{widget_name}"')
def pick_element(context, parent, option_value, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    if widget.select_element(option_value):
        rep.add_label_to_step("selected Value", f"{option_value} is selected")
    else:
        rep.add_label_to_step("Didn't find selected option", f"{option_value} is not found in list")
        raise KeyError('Desired value is not found in list')


@when('write "{option_value}" in search field "{widget_name}"')
def write_in_search_field(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.write_in_search_field(option_value)
    if widget.get_search_result_if_empty():
        rep.add_label_to_step("No Elements Found", f"{option_value} is not an option to be selected")
        raise KeyError('No results found, searched value is not an option in this list')


@when('from parent "{parent}" write "{option_value}" in search field "{widget_name}"')
def write_in_search_field(context, parent, option_value, widget_name):
    widget = context._config.current_page.widgets[f"{parent}_{widget_name}"]
    # widget.click_button()
    try:
        widget.write_in_search_field(option_value)
        if widget.get_search_result_if_empty():
            rep.add_label_to_step("No Elements Found", f"{option_value} is not an option to be selected")
            raise KeyError('No results found, searched value is not an option in this list')
    finally:
        widget.close()


@When('clear search field for "{widget_name}"')
def pick_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.clear_search_field()


@when('search for "{option_value}" in "{widget_name}"')
@when('scroll to "{option_value}" from "{widget_name}"')
def scroll_to_element(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.current_page.driver
    try:
        widget.item_search_scroll(driver, option_value)
    finally:
        widget.close()


@then('validate all "{widget_name}" options contain "{option_value}"')
def scroll_to_element(context, widget_name, option_value):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.current_page.driver
    if option_value in widget.item_search_scroll(driver, option_value)[1]:
        rep.add_label_to_step("Chosen option is in list", f"Chosen option [{option_value}] is in list")
    else:
        rep.add_label_to_step("Chosen option is not in list", f"Chosen option [{option_value}] is not found in list")
        raise AssertionError('Chosen option is not in list')


@then('validate "{widget_name}" has no options')
def scroll_to_element(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert "No results found" in widget.get_search_result_if_empty()


@then('validate "{widget_name}" has "{option_value}" in list')
def scroll_to_element(context, widget_name, option_value):
    widget = context._config.current_page.widgets[widget_name]
    driver = context._config.current_page.driver
    if not option_value in widget.item_search_scroll(driver, option_value)[1]:
        log.info(f"This value [{option_value}] at field {widget_name} is not "
                 f" found in the dropdown list")
        rep.add_label_to_step(f"This value [{option_value}] at field {widget_name} is not "
                              f" found in the dropdown list")
        raise AssertionError("Option is not found at the list")


@then('selected option of "{widget_name}" is "{option}"')
def select_element_after_scroll(context, widget_name, option):
    widget = context._config.current_page.widgets[widget_name]
    widget.validate_selected(option)
    assert widget.validate_selected(option), 'selected option doesnt equal text'


@when('select all options of "{widget_name}"')
def select_all_elements(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        widget.select_all_checkbox()
    finally:
        widget.close()


@when('deselect all options of "{widget_name}"')
def deselect_all(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.clear_selected_items()


@when('select option "{option_value}" at "{widget_name}"')
def deselect_all(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.click_button()
    widget.click_chosen_option(option_value)


@Then('validate option "{option}" from "{widget_name}" list is checked')
def validate_if_option_is_selected(context, option, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_selected_option(option), 'Selected item is not chosen correctly'


@when('deselect option "{option}" from "{widget_name}"')
def deselect_element(context, option, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.select_element(option)
    if not widget.validate_option_is_not_selected(option):
        log.info("The dropdown checkbox list is still selected")
        rep.add_label_to_step('failure description',
                              "The dropdown checkbox list is still selected")
        raise AssertionError("The dropdown checkbox list is still selected")


@then('validate if all checked options appeared in selection order under "{widget_name}"')
def validate_if_option_is_selected(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    context.table = widget.validate_checked_list_count()[1]
    table = context.table
    rep.add_table('list of failures')
    rep.add_columns('list of failures', ('no', 'option no.'), ('option', 'Selected option'),
                    ('appeared', 'Appeared under field as'))
    table_rows = [list(row) for row in table]
    for row in table_rows:
        rep.add_row('list of failures', row)
    if not widget.validate_checked_list_count()[0]:
        rep.add_table_to_step('list of failures')
        log.info(f"Selected values doesn't equal the shown list of values under field")
        rep.add_label_to_step('failure description',
                              "Selected values doesn't equal the shown list of values under field")
        raise AssertionError("Selected values doesn't equal the shown list of values under field")


@when('search valid value and pick "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if widget.search_and_pick_first_element_and_validate(option_value):
            log.info(f'option [{option_value}] is selected correctly')
            rep.add_label_to_step("Chosen option is selected correctly",
                                  f"Chosen option [{option_value}] is selected correctly")
        elif widget.get_search_result_if_empty():
            rep.add_label_to_step("Chosen option is not in list",
                                  f"Chosen option [{option_value}] is not found in list")
            raise AssertionError('Chosen option is not in list')
    finally:
        widget.close()


@when('search invalid value and pick "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if widget.search_and_pick_first_element_and_validate(option_value):
            rep.add_label_to_step('Option is selected',
                                  'The chosen value is considered invalid and there was a selection from list')
            raise AssertionError('The chosen value is considered invalid and there was a selection from list')
        elif widget.get_search_result_if_empty():
            rep.add_label_to_step("Chosen option is not in list",
                                  f"Chosen option [{option_value}] is not found in list")
    finally:
        widget.close()


@when('from parent "{parent}" search valid value and pick "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, parent, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if widget.search_and_pick_first_element_and_validate(option_value):
            log.info(f'option [{option_value}] is selected correctly')
            rep.add_label_to_step("Chosen option is selected correctly",
                                  f"Chosen option [{option_value}] is selected correctly")
        elif widget.get_search_result_if_empty():
            rep.add_label_to_step("Chosen option is not in list",
                                  f"Chosen option [{option_value}] is not found in list")
            raise AssertionError('Chosen option is not in list')
    finally:
        widget.close()


@when('from parent "{parent}" search invalid value and pick "{option_value}" in search field "{widget_name}"')
def search_and_pick_in_search_field(context, parent, option_value, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if widget.search_and_pick_first_element_and_validate(option_value):
            rep.add_label_to_step('Invalid option is selected',
                                  'The chosen value is considered invalid and there was a selection from list')
            raise AssertionError('The chosen value is considered invalid and there was a selection from list')
        elif widget.get_search_result_if_empty():
            rep.add_label_to_step("Chosen option is not in list",
                                  f"Chosen option [{option_value}] is not found in list")
    finally:
        widget.close()
