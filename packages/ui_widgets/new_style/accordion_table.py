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

    def init_widget(self):
        # todo: when we git rid of this init_widget function it remove it form here !
        pass

    def get_list(self):
        return self.web_element.find_elements(*AccordionTableLocators.list)

    def get_list_length(self):
        return len(self.get_list())

    def set_web_element(self, web_element):
        self.web_element = web_element
        self.add_item_button = self.create_widget('ButtonIcon', label='plus')
        self.set_widget_web_element(self.add_item_button)

    def add_item(self):
        self.add_item_button.click_button()

    def create_widget_table_row(self, row):
        widget = self.create_widget('AccordionRow', label=row)
        self.set_widget_web_element(widget)
        return widget

    def open_tab_by_row(self, row):
        widget = self.create_widget_table_row(row)
        return widget.open_current_tab()

    def close_tab_by_row(self, row):
        widget = self.create_widget_table_row(row)
        return widget.close_current_tab()

    def remove_item(self, row):
        widget = self.create_widget_table_row(row)
        widget.removeItem()

    def set_text(self, row, label, text):
        widget = self.create_widget_table_row(row)
        widget.set_text(label, text)

    def validate_text_is_valid(self, row, label):
        widget = self.create_widget_table_row(row)
        return widget.validate_text_is_valid(label)

    def validate_text_is_invalid(self, row, label):
        widget = self.create_widget_table_row(row)
        return widget.validate_text_is_invalid(label)

    def validate_error_message(self, row, label, error_expectation):
        widget = self.create_widget_table_row(row)
        return widget.validate_error_message(label, error_expectation)

    def set_time_text(self, row, label, text):
        widget = self.create_widget_table_row(row)
        widget.set_time_text(label, text)

    def select_time(self, row, label, text):
        widget = self.create_widget_table_row(row)
        widget.select_time(label, text)

    def get_tab_text(self, row):
        widget = self.create_widget_table_row(row)
        return widget.get_current_tab_text()

    def choose_button_from_value(self, row, label, value_name):
        widget = self.create_widget_table_row(row)
        widget.choose_button_from_value(label, value_name)

    def is_value_button_chosen(self, row, label, value_name):
        widget = self.create_widget_table_row(row)
        return widget.is_value_button_chosen(label, value_name)

    def is_button_valid(self, row, label):
        widget = self.create_widget_table_row(row)
        return widget.is_button_valid(label)
