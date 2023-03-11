from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait

from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.widget_locators.text_field_locators import TextFieldLocators
from selenium.webdriver.support import expected_conditions as EC

log = logger.get_logger(__name__)


class TextField(BaseWidget):
    def __init__(self, label, index, path_locator="following-sibling::input"):
        super().__init__(label,index)
        self.path_locator = path_locator


    @property
    def get_text(self):
        return self.web_element.get_attribute('value')

    @property
    def locator(self):
        # Todo:add index with locator
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/{self.path_locator}"
        }

    def get_list(self, index=1):
        x = self.web_element.find_elements(self.locator['By'], self.locator['Value'])
        return x[index - 1]

    def validate_text(self, text):
        return self.web_element.get_attribute('value') == text

    def set_text(self, text):
        self.clear()
        WebDriverWait(self.web_element, 5).until(
            EC.presence_of_element_located((By.XPATH,f"//label[contains(text(),'{self.label}')]")))
        self.web_element.send_keys(text)

    def clear(self):
        self.web_element.clear()

    def has_text(self, text):
        return text in self.get_text

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.web_element.get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.web_element.get_attribute('class')

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(*TextFieldLocators.error_msg)
            return error_msg.text == error_expected
        except:
            log.info("Error label is not available")
