import time
from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.base_widget import BaseWidget


log = logger.get_logger(__name__)


class CaptchaBox(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//strong[contains(text(),'{self.label}')]/ancestor::div/p-checkbox/div"
        }

    def check_captcha_box(self):
        """
        check if the captcha box is unchecked, if true check it
        """
        if self.validate_captcha_box_is_unchecked():
            self.click_on()

    def click_on(self):
        time.sleep(3)
        self.web_element.find_element(self.locator['By'], self.locator['Value']).click()

    def uncheck_captcha_box(self):
        """
        check if the captcha box is checked, if true check it
        """
        if self.validate_captcha_box_is_checked():
            self.click_on()

    def validate_captcha_box_is_checked(self):
        """
        validate if captcha box is checked
        """
        return "checked" in self.web_element.get_attribute('class')

    def validate_captcha_box_is_unchecked(self):
        """
        validate if captcha box is unchecked
        """
        return "checked" not in self.web_element.get_attribute('class')

    @property
    def is_invalid(self):
        x = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        return 'invalid' in x.get_attribute('class')

    @property
    def is_valid(self):
        x = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        return 'valid' in x.get_attribute('class')

    def clear(self, index=None):
        self.uncheck_captcha_box()
