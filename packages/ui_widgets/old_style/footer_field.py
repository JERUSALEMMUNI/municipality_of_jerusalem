from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.old_style.widget_locators.footer_locators import FooterLocators

log = logger.get_logger(__name__)


class FooterField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)
        self.init_widget_texts()

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//footer"
        }

    def init_widget_texts(self):
        self.call_us = "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
        self.follow_us = "עקבו אחרינו"
        self.facebook_url = "https://www.facebook.com/Jerusalem?fref=ts"
        self.instagram_url = "https://www.instagram.com/jerusalem_city/"
        self.twitter_url = "https://twitter.com/Jlm_city"

    def get_call_us_element(self):
        return self.web_element.find_element(*FooterLocators.call_us)

    def get_folow_us_element(self):
        return self.web_element.find_element(*FooterLocators.follow_us)

    def validate_old_call_us_is_displayed(self):
        return self.get_call_us_element().is_displayed()

    def get_old_call_us(self):
        return self.get_call_us_element().text

    def validate_old_call_us_text(self, call_us):
        return self.get_old_call_us() == call_us

    def validate_old_call_us_with_default(self):
        return self.get_old_call_us() == self.call_us

    def validate_old_follow_us_is_displayed(self):
        return self.get_folow_us_element().is_displayed()

    def get_old_follow_us(self):
        return self.get_folow_us_element().text

    def validate_old_follow_us(self, follow_us):
        return self.get_old_follow_us() == follow_us

    def validate_old_follow_us_with_default(self):
        return self.get_old_follow_us() == self.follow_us

    def is_facebook_displayed(self):
        facebook_logo = self.web_element.find_element(*FooterLocators.facebook_logo)
        return facebook_logo.is_displayed()

    def validate_facebook_url(self, driver):
        facebook_logo = self.web_element.find_element(*FooterLocators.facebook_clicker)
        facebook_logo.click()
        url = driver.current_url
        return self.facebook_url == url

    def is_instagram_displayed(self):
        instagram_logo = self.web_element.find_element(*FooterLocators.instagram_logo)
        return instagram_logo.is_displayed()

    def validate_instagram_url(self, driver):
        instagram_logo = self.web_element.find_element(*FooterLocators.instagram_clicker)
        instagram_logo.click()
        url = driver.current_url
        return self.instagram_url == url

    def is_twitter_displayed(self):
        twitter_logo = self.web_element.find_element(*FooterLocators.twitter_logo)
        return twitter_logo.is_displayed()

    def validate_twitter_url(self, driver):
        twitter_logo = self.web_element.find_element(*FooterLocators.twitter_clicker)
        twitter_logo.click()
        url = driver.current_url
        return self.twitter_url == url

    def validate_current_url(self, page_name, driver):
        url = driver.current_url
        return page_name in url
