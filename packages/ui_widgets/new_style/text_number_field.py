from selenium.webdriver import Keys
from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.new_style.text_field import TextField
from ui_widgets.new_style.widget_locators.text_field_locators import TextFieldLocators

log = logger.get_logger(__name__)


class TextNumberField(TextField):
    def __init__(self, label, index, path_locator="parent::div//input", step_number=None):
        super().__init__(label, index, path_locator, step_number)

    def get_element(self):
        if 'תאריך' in self.label:
            return self.web_element.find_element(self.locator['By'], './parent::p-inputmask')
        else:
            return self.web_element.find_element(self.locator['By'], './parent::*/parent::p-inputnumber')

    def set_text(self, text):
        self.clear()
        self.web_element.send_keys(text)
        self.web_element.send_keys(Keys.RETURN)

    def get_text(self):
        get_value_number = self.web_element.get_attribute('aria-valuenow')
        if get_value_number not in (None, "null"):
            return self.web_element.get_attribute('aria-valuenow')

        return "no value"

    def is_invalid_txt(self):
        return self.is_invalid

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.get_element().get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.get_element().get_attribute('class')

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*TextFieldLocators.err_num_msg)
        return error_expected in error_msg.text, error_expected == error_msg.text

    @property
    def get_error_message(self):
        return self.web_element.find_element(*TextFieldLocators.err_num_msg).text


    def clear(self, index=None):
        number_digits = self.web_element.get_attribute('aria-valuenow')
        for i in range(0, len(number_digits)):
            self.web_element.send_keys(Keys.BACKSPACE)
