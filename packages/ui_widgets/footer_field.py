from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class Footer_field(BaseWidget):
    def __init__(self, label):
        super().__init__(label)


    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//footer[@class='lib-footer']"
        }

    def check_call_us_is_displayed(self):
        log.debug("Search for Call Us in footer")
        header_tittle = self.web_element.find_element(by=By.XPATH, value=f"./div/div")
        return header_tittle.is_displayed()

    def get_call_us(self):
        log.debug("Get Call Us footer text")
        footer_call_us = self.web_element.find_element(by=By.XPATH, value=f"./div/div")
        return footer_call_us.text

    def check_call_us_text(self, call_us):
        log.debug(f'Check if Call Us footer Text is {call_us}')
        return self.get_call_us == call_us

    def check_privacy_policy_is_displayed(self):
        log.debug("Search for privacy policy in footer")
        privacy_policy = self.web_element.find_element(by=By.XPATH, value=f"./div/div/following-sibling::small")
        return privacy_policy.is_displayed()

    def get_privacy_policy(self):
        log.debug("Get privacy policy footer text")
        privacy_policy = self.web_element.find_element(by=By.XPATH, value=f"./div/div/following-sibling::small")
        return privacy_policy.text

    def check_privacy_policy(self, privacy_policy):
        log.debug(f'Check if privacy policy footer Text is {privacy_policy}')
        return self.get_privacy_policy == privacy_policy


