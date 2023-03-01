from selenium.webdriver.common.by import By

from ui_widgets.base_widget import BaseWidget
from infra import logger, custom_exceptions as ce

log = logger.get_logger(__name__)


class ApplicationStepsField(BaseWidget):
    def __init__(self):
        super().__init__(self)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//ul[@class='lib-stepper-list']"
        }

    def get_pages_list(self):
        return self.web_element.find_elements(self.locator['By'], "li")

    def get_current_page_number(self):
        pages_list = self.get_pages_list()
        for item in pages_list:
            if bool(item.get_attribute('aria-selected')):
                return item.text.split('\n')[0]
        return -1

    def get_number_of_pages(self):
        return len(self.get_pages_list())

    def validate_current_page_number(self, expected_number):
        return str(self.get_current_page_number()) == expected_number

    def validate_number_of_pages(self, expected_number):
        return str(self.get_number_of_pages()) == expected_number

