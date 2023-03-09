from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.footer_locators import FooterLocators

log = logger.get_logger(__name__)


class FooterField(BaseWidget):
    def __init__(self,index):
        super().__init__(self, index)
        self.init_widget_texts()

    def init_widget_texts(self):
        self.privacy_policy = "This site is protected by reCAPTCHA and the Google Privacy Policy and Terms of Service " \
                              "apply."
        self.call_us = "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//footer/div/div"
        }

    def validate_call_us_is_displayed(self):
        return self.web_element.is_displayed()

    def get_call_us(self):
        return self.web_element.text

    def validate_call_us_text(self, call_us):
        return self.get_call_us() == call_us

    def validate_call_us_with_default(self):
        return self.get_call_us() == self.call_us

    def validate_privacy_policy_is_displayed(self):
        return self.get_element().is_displayed()

    def get_element(self):
        return self.web_element.find_element(*FooterLocators.footer_element)

    def get_privacy_policy(self):
        return self.get_element().text

    def validate_privacy_policy(self, privacy_policy):
        return self.get_privacy_policy() == privacy_policy

    def validate_privacy_policy_with_default(self):
        return self.get_privacy_policy() == self.privacy_policy
