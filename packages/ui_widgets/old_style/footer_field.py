from selenium.webdriver.support import expected_conditions as EC

from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait

from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.old_style.widget_locators.footer_locators import FooterLocators

log = logger.get_logger(__name__)


class FooterField(BaseWidget):
    def __init__(self, index):
        super().__init__(self, index)
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
        """
        get call us element
        """
        return self.web_element.find_element(*FooterLocators.call_us)

    def validate_call_us_is_displayed(self):
        """
        validate if call us is displayed
        return: true if its displayed, false if not
        """
        return self.get_call_us_element().is_displayed()

    def get_call_us(self):
        """
        get call us text
        return: text string
        """
        return self.get_call_us_element().text

    def validate_call_us_text(self, call_us):
        """
        validate if the call us text equal to the expected text
        """
        return self.get_call_us() == call_us

    def validate_call_us_with_default(self):
        """
        validate if the call us text equal to the default text
        """
        return self.get_call_us() == self.call_us

    def validate_follow_us_is_displayed(self):
        """
        validate if the follow us is displayed
        """
        return self.get_follow_us_element().is_displayed()

    def get_follow_us(self):
        """
        get follow us text
        """
        return self.get_follow_us_element().text

    def validate_follow_us(self, follow_us):
        """
        validate if the follow us text equal to the expected text
        """
        return self.get_follow_us() == follow_us

    def validate_follow_us_with_default(self):
        """
        validate if the follow us text equal to the default text
        """
        return self.get_follow_us() == self.follow_us

    def is_facebook_displayed(self):
        """
        validate if the facebook logo is displayed
        """
        facebook_logo = self.web_element.find_element(*FooterLocators.facebook_logo)
        return facebook_logo.is_displayed()

    def validate_facebook_url(self, driver):
        """
        validate if facebook logo is working by clicking on it
        """
        facebook_logo = self.web_element.find_element(*FooterLocators.facebook_clicker)
        facebook_logo.click()
        url = driver.current_url
        return self.facebook_url == url

    def is_instagram_displayed(self):
        """
        validate if the instagram logo is displayed
        """
        instagram_logo = self.web_element.find_element(*FooterLocators.instagram_logo)
        return instagram_logo.is_displayed()

    def validate_instagram_url(self, driver):
        """
        validate if instagram logo is working by clicking on it
        """
        instagram_logo = self.web_element.find_element(*FooterLocators.instagram_clicker)
        instagram_logo.click()
        url = driver.current_url
        return self.instagram_url == url

    def is_twitter_displayed(self):
        """
        validate if the twitter logo is displayed
        """
        twitter_logo = self.web_element.find_element(*FooterLocators.twitter_logo)
        return twitter_logo.is_displayed()

    def validate_twitter_url(self, driver):
        """
        validate if twitter logo is working by clicking on it
        """
        twitter_logo = self.web_element.find_element(*FooterLocators.twitter_clicker)
        twitter_logo.click()
        url = driver.current_url
        return self.twitter_url == url

    def validate_current_url(self, page_name, driver):
        """
        validate the current page url
        """
        url = driver.current_url
        return page_name in url

    def get_follow_us_element(self):
        """
        get element
        :return:
        """
        return self.web_element.find_element(*FooterLocators.follow_us)
