from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.captcha_box_locators import CaptchaBoxLocator

log = logger.get_logger(__name__)


class CaptchaBox(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//strong[contains(text(),'{self.label}')]/../parent::div/p-checkbox/div"
        }

    def check_captcha_box(self):
        if self.web_element.get_attribute('p-checkbox-checked') in ("false", None):
            self.web_element.click()

    def uncheck_captcha_box(self):
        if self.web_element.get_attribute('p-checkbox-checked') == "true":
            self.web_element.click()

    def validate_captcha_box_is_checked(self):
        return self.web_element.get_attribute('p-checkbox-checked') == "true"

    def validate_captcha_box_is_unchecked(self):
        return self.web_element.get_attribute('p-checkbox-checked') in ("false" or None)

    @property
    def is_invalid(self):
        x = self.web_element.find_element(*CaptchaBoxLocator.valid_checker)
        return 'invalid' in x.get_attribute('class')

    @property
    def is_valid(self):
        x = self.web_element.find_element(*CaptchaBoxLocator.valid_checker)
        return 'valid' in x.get_attribute('class')

    # def clear(self, index=None):
    #     self.uncheck_captcha_box()
