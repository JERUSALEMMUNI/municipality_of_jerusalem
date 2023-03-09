from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.old_style.widget_locators.check_box_locators import CheckBoxLocator

log = logger.get_logger(__name__)


class CheckBox(BaseWidget):
    def __init__(self, label,index):
        super().__init__(label,index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f'//label[contains(text(),"{self.label}")]/parent::p-checkbox/div/div/following-sibling::div'
        }

    def check_box(self):
        if self.web_element.get_attribute('aria-checked') in ("false", None):
            self.web_element.click()

    def uncheck_box(self):
        if self.web_element.get_attribute('aria-checked') == "true":
            self.web_element.click()

    def validate_box_is_checked(self):
        return self.web_element.get_attribute('aria-checked') == "true"

    def validate_box_is_unchecked(self):
        return self.web_element.get_attribute('aria-checked') in ("false" or None)

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(*CheckBoxLocator.error_msg)
            return error_msg.text == error_expected
        except:
            log.info("Error label is not available")