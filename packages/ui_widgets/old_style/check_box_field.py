from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.old_style.widget_locators.check_box_locators import CheckBoxLocator

log = logger.get_logger(__name__)


class CheckBox(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f'//label[contains(text(),"{self.label}")]/parent::p-checkbox//following-sibling::div'
        }

    def check_box(self):
        if self.validate_box_is_unchecked():
            self.web_element.click()

    def uncheck_box(self):
        if self.validate_box_is_checked():
            self.web_element.click()

    def validate_box_is_checked(self):
        element = self.web_element.find_element(*CheckBoxLocator.valid_checker)
        return "active" or "checked" in element.get_attribute('class')

    def validate_box_is_unchecked(self):
        element = self.web_element.find_element(*CheckBoxLocator.valid_checker)
        return "active" or "checked" not in element.get_attribute('class')

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*CheckBoxLocator.error_msg)
        return error_msg.text == error_expected

    @property
    def is_invalid(self):
        x = self.web_element.find_element(*CheckBoxLocator.valid_checker)
        return 'invalid' in x.get_attribute('class')

    @property
    def is_valid(self):
        x = self.web_element.find_element(*CheckBoxLocator.valid_checker)
        return 'valid' in x.get_attribute('class')

    def clear(self, index=None):
        self.uncheck_box()
