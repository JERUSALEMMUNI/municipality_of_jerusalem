from behave import *

from infra import logger, reporter

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@when('add "{items}" in widget "{widget_name}"')
def add_items_month_year_list(context, items, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.init_widget()
    for item in range(int(items)):
        widget.add_item()


@when('remove "{items}" in widget "{widget_name}"')
def add_items_month_year_list(context, items, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    widget.init_widget()
    widget.remove_item(items)


@when('pick year "{year}" in widget "{widget_name}" at index "{number}"')
def add_items_month_year_list(context, year, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    try:
        if int(year) > 2024 or int(year) < 2018:
            raise ValueError("Year value should be between 2018-2023")
        widget.set_year(year, number)
    finally:
        widget.close()


# @when('pick month "{month}" in widget "{widget_name}" at index "{number}"')
# def add_items_month_year_list(context, month, widget_name, number):
#     widget = context._config.current_page.widgets[widget_name]
#     widget.init_widget()
#     widget.set_month(month, number)
@when('pick month "{month}" in widget "{widget_name}" at index "{number}"')
def add_items_month_year_list(context, month, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    # widget.init_widget()
    if int(month) > 12 or int(month) < 1:
        raise ValueError("The month value should be between 1-12")
    widget.set_month(month, number)


@when('pick a group of months "{months}" in widget "{widget_name}" at index "{number}"')
def add_items_months_year_list(context, months, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    widget.init_widget()
    widget.set_months(months, number, context._config.current_page.driver)


@then('check if the months "{months}" are shown as chosen in widget "{widget_name}" at index "{number}"')
def check_months_are_chosen(context, months, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    widget.init_widget()
    if widget.validate_months(months, number):
        rep.add_label_to_step('Month/s selected correctly', f'The desired [{months}] months are selected correctly')
    else:
        rep.add_label_to_step(
            ('Month/s not selected correctly', f'The desired [{months}] months are not selected correctly'))
        raise AssertionError('Month/s not selected correctly')


@then('check if  widget "{widget_name}" list after change is "{number}"')
def check_months_are_chosen(context, widget_name, number):
    widget = context._config.current_page.widgets[widget_name]
    widget.init_widget()
    assert widget.get_list_length() == int(
        number), f"the widget {widget_name} list length did not change to length {number}"


@when('from table "{table_name}" at row "{row}" write a valid value "{text}" in "{widget_name}"')
def write_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_text(row, widget_name, text)


@when('from table "{table_name}" at row "{row}" write a valid time value "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.set_time_text(row, widget_name, text)


@when('from table "{table_name}" at row "{row}" pick time "{text}" in "{widget_name}"')
def write_time_in_table_from_column(context, table_name, row, text, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.select_time(row, widget_name, text)


@Then('from table "{table_name}" at row "{row}" validate tab text is same as "{date}"')
def validate_tab_text_from_column(context, table_name, row, date):
    widget = context._config.current_page.widgets[table_name]
    assert widget.get_tab_text(row) == date


@When('from table "{table_name}" at row "{row}" choose "{value_name}" in "{widget_name}"')
def choose_button_of_value_from_table(context, table_name, row, value_name, widget_name):
    widget = context._config.current_page.widgets[table_name]
    widget.choose_button_from_value(row, widget_name, value_name)


@Then('from table "{table_name}" at row "{row}" validate chosen choice of "{widget_name}" is "{value_name}"')
def validate_chosen_button_value_from_table(context, table_name, row, widget_name, value_name):
    widget = context._config.current_page.widgets[table_name]
    assert widget.is_button_valid(row, widget_name), "Invalid button"
    assert widget.is_value_button_chosen(row, widget_name, value_name), "Incorrect choice"
