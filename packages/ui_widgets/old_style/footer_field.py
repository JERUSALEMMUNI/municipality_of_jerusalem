from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.old_style.widget_locators.footer_locators import FooterLocators

log = logger.get_logger(__name__)


class FooterField(BaseWidget):
    def __init__(self, label, driver):
        super().__init__(label)
        self.driver = driver

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//footer"
        }

    def validate_old_call_us_is_displayed(self):
        footer_call_us = self.web_element.find_element(by=By.XPATH, value=f"./div/div")
        return footer_call_us.is_displayed()

    def get_old_call_us(self):
        footer_call_us = self.web_element.find_element(by=By.XPATH, value=f"./div/div")
        return footer_call_us.text

    def validate_old_call_us_text(self, call_us):
        return self.get_old_call_us() == call_us

    def validate_old_call_us_with_default(self):
        return self.get_old_call_us() == "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"

    def validate_old_follow_us_is_displayed(self):
        follow_us = self.web_element.find_element(*FooterLocators.follow_us)
        return follow_us.is_displayed()

    def get_old_follow_us(self):
        follow_us = self.web_element.find_element(*FooterLocators.follow_us)
        return follow_us.text

    def validate_old_follow_us(self, follow_us):
        return self.get_old_follow_us() == follow_us

    def validate_old_follow_us_with_default(self):
        return self.get_old_follow_us() == "עקבו אחרינו"

    def is_facebook_displayed(self):
        facebook_logo = self.web_element.find_element(*FooterLocators.facebook_logo)
        return facebook_logo.is_displayed()

    def validate_facebook_url(self):
        facebook_logo = self.driver.find_element(*FooterLocators.facebook_clicker)
        facebook_logo.click()
        url = self.driver.current_url
        return "https://www.facebook.com/Jerusalem?fref=ts" == url

    def is_instagram_displayed(self):
        instagram_logo = self.web_element.find_element(*FooterLocators.instagram_logo)
        return instagram_logo.is_displayed()

    def validate_instagram_url(self):
        instagram_logo = self.driver.find_element(*FooterLocators.instagram_clicker)
        instagram_logo.click()
        url = self.driver.current_url
        return "https://www.instagram.com/jerusalem_city/" == url

    def is_twitter_displayed(self):
        twitter_logo = self.web_element.find_element(*FooterLocators.twitter_logo)
        return twitter_logo.is_displayed()

    def validate_twitter_url(self):
        twitter_logo = self.driver.find_element(*FooterLocators.twitter_clicker)
        twitter_logo.click()
        url = self.driver.current_url
        return "https://twitter.com/Jlm_city" == url

    def go_back_tp_prev_page(self):
        self.driver.execute_script("window.history.go(-1)")

    def validate_current_url(self, page_name):
        url = self.driver.current_url
        return page_name in url

