from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.widget_locators.text_field_locators import TextFieldLocators

log = logger.get_logger(__name__)


class TextField(BaseWidget):
    def __init__(self, label, index, path_locator=TextFieldLocators.text_input, step_number=None):
        super().__init__(label, index, step_number)
        self.path_locator = path_locator

    @property
    def get_text(self):
        return self.web_element.get_attribute('value')

    @property
    def locator(self):
        sep = "'"
        if sep in self.label:
            sep = '"'
        value = f"""//label[contains(text(),{sep}{self.label}{sep})]/{self.path_locator}"""
        if self.step_number:
            value = f"""//{self.step_number.value}{value}"""
        return {
            'By': By.XPATH,
            'Value': value
        }

    def validate_text(self, text):
        return self.web_element.get_attribute('value') == text

    def set_text(self, text):
        self.clear()
        self.web_element.send_keys(text)

    def clear(self, index=None):
        self.web_element.clear()

    def has_text(self, text):
        return text in self.get_text

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.web_element.get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.web_element.get_attribute('class')

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*TextFieldLocators.error_msg)
        return error_expected in error_msg.text, error_expected == error_msg.text

    @property
    def get_error_message(self):
        return self.web_element.find_element(*TextFieldLocators.error_message).text
