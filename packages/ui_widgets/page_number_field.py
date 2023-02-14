from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class Page_number_field(BaseWidget):
    def __init__(self, label):
        super().__init__(label)


    @property
    def get_text(self):
        return self.web_element.text

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//ul[@class='lib-stepper-list']/li"
        }

    def expanded_checker(self, expected_page_number):
        page = self.web_element.find_element(By.XPATH, f"//ul[@class='lib-stepper-list']/li[{expected_page_number}]")
        return page.get_attribute('aria-selected') == "true"







