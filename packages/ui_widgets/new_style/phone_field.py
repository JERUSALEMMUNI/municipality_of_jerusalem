from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.phone_field_locator import PhoneFieldLocators

log = logger.get_logger(__name__)


class PhoneField(BaseWidget):
    def __init__(self, label, index, step_number=None):
        super().__init__(label, index, step_number)

    @property
    def locator(self):
        value = f"//label[contains(text(),'{self.label}')]"
        if self.step_number:
            value = f"//{self.step_number.value}{value}"
        return {
            'By': By.XPATH,
            'Value': value
        }

    def set_web_element(self, web_element):
        self.web_element = web_element
        dropdown_element = self.web_element.find_element(*PhoneFieldLocators.drop_down)
        self.dropdown_widget = self.create_widget('Dropdown', label=self.label, index=self.index)
        self.set_widget_web_element(self.dropdown_widget, dropdown_element)
        text_element = self.web_element.find_element(*PhoneFieldLocators.text_element)
        self.text_widget = self.create_widget('TextField', label=self.label, index=self.index)
        self.set_widget_web_element(self.text_widget, text_element)

    def set_prefix_number(self, start_phone):
        self.dropdown_widget.click_button()
        self.dropdown_widget.select_element(start_phone)

    def set_phone_number(self, rest_phone):
        self.text_widget.set_text(rest_phone)

    def set_full_phone(self, text):
        new_text = text.split("-")
        start_phone = new_text[0]
        rest_phone = new_text[1]
        self.text_widget.set_text(rest_phone)
        self.dropdown_widget.select_element(start_phone)

    @property
    def is_invalid(self):
        return self.text_widget.is_invalid, self.dropdown_widget.option_status

    @property
    def is_valid(self):
        return self.text_widget.is_valid, self.dropdown_widget.option_status

    def is_valid_txt(self):
        return self.text_widget.is_valid

    def is_valid_prefix(self):
        return self.dropdown_widget.option_status

    def is_invalid_txt(self):
        return self.text_widget.is_invalid

    def is_invalid_prefix(self):
        return self.dropdown_widget.option_status

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*PhoneFieldLocators.error_msg)
        return error_msg.text == error_expected

    def close(self):
        dropDown_open = self.web_element.find_element(By.XPATH, "./..//p-dropdown//input").get_attribute(
            'aria-expanded')
        if dropDown_open.lower() == 'true':
            self.web_element.find_element(By.XPATH, "./..//p-dropdown").click()
            return True
        return False

    def clear(self, index=None):
        self.text_widget.clear()
        self.dropdown_widget.select_first_element()
