from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.footer_locators import FooterLocators

log = logger.get_logger(__name__)


class FooterField(BaseWidget):
    def __init__(self, index):
        super().__init__(self, index)
        self.init_widget_texts()

    def init_widget_texts(self):
        self.privacy_policy = "This site is protected by reCAPTCHA and the Google Privacy Policy and Terms of Service apply."
        self.call_us = "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//footer/div/div"
        }

    def validate_call_us_is_displayed(self):
        """
        validate if call us is displayed
        return: true if it is displayed, false if not
        """
        return self.web_element.is_displayed()

    def get_call_us(self):
        """
        get the call us text
        return: the text
        """
        return self.web_element.text

    def validate_call_us_text(self, call_us):
        """
        validate if call us text equal to the expected text
        return: true if the 2 texts are equal, false if not
        """
        return self.get_call_us() == call_us

    def validate_call_us_with_default(self):
        """
        validate if call us text equal to the default text
        return: true if the 2 texts are equal, false if not
        """
        return self.get_call_us() == self.call_us

    def validate_privacy_policy_is_displayed(self):
        """
        validate if privacy policy is displayed
        return: true if it is displayed, false if not
        """
        return self.get_element().is_displayed()

    def get_element(self):
        """
        get element method
        """
        return self.web_element.find_element(*FooterLocators.footer_element)

    def get_privacy_policy(self):
        """
        get the privacy policy text
        return: the text
        """
        return self.get_element().text

    def validate_privacy_policy(self, privacy_policy):
        """
        validate if privacy policy text equal to the expected text
        return: true if the 2 texts are equal, false if not
        """
        return self.get_privacy_policy() == privacy_policy

    def validate_privacy_policy_with_default(self):
        """
        validate if privacy_policy text equal to the default text
        return: true if the 2 texts are equal, false if not
        """
        return self.get_privacy_policy() == self.privacy_policy
