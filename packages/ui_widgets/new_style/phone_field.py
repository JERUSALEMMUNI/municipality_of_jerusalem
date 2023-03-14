from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.dropdown_field import Dropdown
from ui_widgets.new_style.text_field import TextField
from ui_widgets.new_style.widget_locators.phone_field_locator import PhoneFieldLocators

log = logger.get_logger(__name__)


class PhoneField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)
        self.dropdown_widget = Dropdown(label, index)
        self.text_widget = TextField(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]"

        }

    #Todo: try to change the inti_widgint and inherit from textfield
    def initial_widgets(self):
        dropdown_element = self.web_element.find_element(*PhoneFieldLocators.drop_down)
        self.dropdown_widget.set_web_element(dropdown_element)
        text_element = self.web_element.find_element(*PhoneFieldLocators.text_element)
        self.text_widget.set_web_element(text_element)

    def set_prefix_number(self, start_phone):
        self.initial_widgets()
        self.dropdown_widget.click_button()
        self.dropdown_widget.select_element(start_phone)

    def set_phone_number(self, rest_phone):
        self.initial_widgets()
        self.text_widget.set_text(rest_phone)

    def set_full_phone(self, text):
        new_text = text.split("-")
        start_phone = new_text[0]
        rest_phone = new_text[1]
        self.initial_widgets()
        self.text_widget.set_text(rest_phone)
        self.dropdown_widget.click_button()
        self.dropdown_widget.select_element(start_phone)

    @property
    def is_invalid(self):
        return self.text_widget.is_invalid is True

    @property
    def is_valid(self):
        return self.text_widget.is_valid is True

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*PhoneFieldLocators.error_msg)
        return error_msg.text == error_expected

