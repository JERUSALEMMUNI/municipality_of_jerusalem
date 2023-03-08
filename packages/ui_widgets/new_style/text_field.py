from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.old_style.alert_message_field import AlertMessageField

log = logger.get_logger(__name__)


class TextField(BaseWidget):
    def __init__(self, label, index, path_locator="following-sibling::input"):
        super().__init__(label,index)
        self.path_locator = path_locator
        self.alert_error_message = AlertMessageField(self.label, index)

    @property
    def get_text(self):
        return self.web_element.get_attribute('value')

    @property
    def locator(self):
        # Todo:add index with locator
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/{self.path_locator}"
        }

    def get_list(self, index=1):
        x = self.web_element.find_elements(self.locator['By'], self.locator['Value'])
        return x[index - 1]

    def validate_text(self, text):
        return self.web_element.get_attribute('value') == text

    def set_text(self, text):
        self.web_element.send_keys(text)

    def clear(self):
        self.web_element.clear()

    def has_text(self, text):
        return text in self.get_text

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.web_element.get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.web_element.get_attribute('class')

    def initial_error(self):
        error_message_element = self.web_element.find_element(By.XPATH, "./following-sibling::span")
        self.alert_error_message.set_web_element(error_message_element)

    def get_error_message(self):
        self.initial_error()
        self.alert_error_message.get_error_message()

    def check_error_message(self, expected_error):
        self.initial_error()
        self.alert_error_message.check_expected_error(expected_error)
