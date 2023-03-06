from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.old_style.alert_message_field import AlertMessageField

log = logger.get_logger(__name__)


class CheckBox(BaseWidget):
    def __init__(self, label):
        super().__init__(label)
        self.alert_error_message = AlertMessageField(self.label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f'//label[contains(text(),"{self.label}")]/parent::p-checkbox/div/div/following-sibling::div'
        }

    def check_box(self):
        box = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        if box.get_attribute('aria-checked') in ("false", None):
            self.web_element.click()

    def uncheck_box(self):
        box = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        if box.get_attribute('aria-checked') == "true":
            self.web_element.click()

    def validate_box_is_checked(self):
        box = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        return box.get_attribute('aria-checked') == "true"

    def validate_box_is_unchecked(self):
        box = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        return box.get_attribute('aria-checked') in ("false" or None)

    def initial_error(self):
        error_message_element = self.web_element.find_element(By.XPATH,
                                                              "./parent::div/following-sibling::label/parent::p-checkbox/parent::div/following-sibling::span")
        self.alert_error_message.set_web_element(error_message_element)

    def get_error_message(self):
        self.initial_error()
        self.alert_error_message.get_error_message()

    def check_error_message(self, expected_error):
        self.initial_error()
        self.alert_error_message.check_expected_error(expected_error)
