from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
log = logger.get_logger(__name__)


class CheckBox(BaseWidget):
    def __init__(self, label):
        super().__init__(label)


    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f'//label[contains(text(),"{self.label}")]/parent::p-checkbox/div/div/following-sibling::div'
        }

    def check_box(self):
        box = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        if box.get_attribute('aria-checked') == "false" or None:
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
        return box.get_attribute('aria-checked') == "false" or None





