from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.text_area_locators import TextAreaLocators

log = logger.get_logger(__name__)


class TextAreaField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def get_text(self):
        return self.web_element.get_attribute('value')

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[text()='{self.label}']/following-sibling::textarea"
        }

    def validate_text(self, text):
        """
        check if expected text equal to the element text
        param text: expected text
        return: true if 2 texts are equal, false if not
        """
        return self.web_element.get_attribute('value') == text

    def set_text(self, text):
        """
        set element text
        """
        self.clear()
        self.web_element.send_keys(text)

    def has_text(self, text):
        """
        check if expected text equal to the element text
        param text: expected text
        return: true if 2 texts are equal, false if not
        """
        return text in self.get_text

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.web_element.get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.web_element.get_attribute('class')

    def validate_error_message(self, error_expected):
        """
        check if the element error message are equal the expected error message
        return: true if the 2 texts are equal, false if not
        """
        error_msg = self.web_element.find_element(*TextAreaLocators.error_msg)
        return error_expected in error_msg.text, error_expected == error_msg.text

    def clear(self, index=None):
        self.web_element.clear()
