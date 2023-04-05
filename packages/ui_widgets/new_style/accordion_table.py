from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.accordion_table_locators import AccordionTableLocators

log = logger.get_logger(__name__)


class AccordionTable(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//div[contains(text(),'{self.label}')]"
        }

    def get_list(self):
        return self.web_element.find_elements(*AccordionTableLocators.tab_list)

    def get_list_length(self):
        return len(self.get_list())

    def get_table_list(self):
        # get back to the base locator
        base = self.web_element.find_element(*AccordionTableLocators.base)
        # get list of tables
        tables_list = base.find_elements(*AccordionTableLocators.table_list)
        return tables_list

    def set_web_element(self, web_element):
        self.web_element = web_element

    def get_table_index_from_tab_name(self, name):
        tables_list = self.get_table_list()
        for i, element in enumerate(tables_list):
            if name in element.text:
                return i + 1

    def change_table(self, table_index):
        tables_list = self.get_table_list()
        self.web_element = tables_list[table_index - 1]

    def add_item(self, table_index=1):
        self.change_table(table_index)
        self.add_item_button = self.create_widget('ButtonIcon', label='plus', index=table_index)
        temp_element = self.web_element.find_element(*AccordionTableLocators.button_icon_plus)
        self.set_widget_web_element(self.add_item_button, temp_element=temp_element)
        self.add_item_button.click_button()

    def create_widget_table_row(self, row, table_index=1):
        self.change_table(table_index)
        widget = self.create_widget('AccordionRow', label=row)
        self.set_widget_web_element(widget)
        return widget

    def open_tab_by_row(self, row, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.open_current_tab()

    def close_tab_by_row(self, row, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.close_current_tab()

    def remove_item(self, row, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.removeItem()

    def set_text_field(self, row, label, text, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.set_text_field(label, text)

    def set_textarea_field(self, row, label, text, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.set_textarea_field(label, text)

    def upload_file(self, row, label, file, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.upload_file(label, file)

    def is_invalid(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_invalid(label)

    def is_valid(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_valid(label)

    def validate_warning_message(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_warning_message(label)

    def choose_item(self, row, label, txt, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.choose_item(label, txt)

    def validate_text_is_valid(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_text_is_valid(label)

    def validate_text_is_invalid(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_text_is_invalid(label)

    def validate_textarea_is_valid(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_textarea_is_valid(label)

    def validate_textarea_is_invalid(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_textarea_is_invalid(label)

    def validate_text(self, row, widget_name, text, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_text(widget_name, text)

    def validate_error_message(self, row, label, error_expectation, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_error_message(label, error_expectation)

    def validate_textarea_error_message(self, row, label, error_expectation, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_textarea_error_message(label, error_expectation)

    def set_time_text(self, row, label, text, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.set_time_text(label, text)

    def select_time(self, row, label, text, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.select_time(label, text)

    def get_tab_text(self, row, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.get_current_tab_text()

    def choose_button_from_value(self, row, label, value_name, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.choose_button_from_value(label, value_name)

    def is_value_button_chosen(self, row, label, value_name, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_value_button_chosen(label, value_name)

    def is_button_valid(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_button_valid(label)

    def clear(self, index=None):
        for i in range(self.get_list_length()):
            self.remove_item(1)

    def check_file_name(self, row, label, file_name_index, file_name, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.check_file_name(label, file_name_index, file_name)

    def check_file_size(self, row, label, file_size_index, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.check_file_size(label, file_size_index)

    def delete_file(self, row, label, wanted_file_index, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.delete_file(label, wanted_file_index)

    def select_element(self, row, label, text, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.select_element(label, text)

    def close_dropdown(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.close_dropdown(label)

    def close_phone_field(self, row, label, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        widget.close_phone_field(label)

    def set_full_phone(self, row, widget_name, phone_number, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.set_full_phone(widget_name, phone_number)

    def set_prefix_number(self, row, widget_name, three_digits, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.set_prefix_number(widget_name, three_digits)

    def set_phone_number(self, row, widget_name, phone_number, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.set_phone_number(widget_name, phone_number)

    def is_valid_phone_text(self, row, widget_name, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_valid_phone_text(widget_name)

    def is_invalid_phone_text(self, row, widget_name, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_invalid_phone_text(widget_name)

    def validate_phone_text_error_message(self, row, widget_name, error_expectation, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_phone_text_error_message(widget_name, error_expectation)

    def set_text_number(self, row, widget_name, number, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.set_text_number(widget_name, number)

    def is_valid_text_number(self, row, widget_name, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_valid_text_number(widget_name)

    def is_invalid_text_number(self, row, widget_name, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.is_invalid_text_number(widget_name)

    def validate_text_number(self, row, widget_name, number, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.validate_text_number(widget_name, number)

    def search_and_pick_first_element_and_validate(self, widget_name, row, option_value, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.search_and_pick_first_element_and_validate(widget_name, option_value)

    def get_search_result_if_empty(self, widget_name, row, table_index=1):
        widget = self.create_widget_table_row(row, table_index)
        return widget.get_search_result_if_empty(widget_name)

    def is_default_drop(self, row, label):
        widget = self.create_widget_table_row(row)
        return widget.is_default_drop(label)

    def is_default_upload(self, row, label):
        widget = self.create_widget_table_row(row)
        return widget.is_default_upload(label)
