from time import sleep

from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.old_style.widget_locators.radio_button_locators import RadioButtonLocators

log = logger.get_logger(__name__)


class RadioButtonField(BaseWidget):
    def __init__(self, label):
        super().__init__(label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/following-sibling::div/p-radiobutton/label",
        }

    def choose_value(self, selected_item):
        wanted_btn = self.web_element.find_element(self.locator['By'], self.locator[
            'Value'] + f"[contains(text(),'{selected_item}')]/parent::p-radiobutton/div")
        wanted_btn.click()

    def get_label(self, selected_item):
        return self.web_element.find_element(self.locator['By'], self.locator[
            'Value'] + f"[contains(text(),'{selected_item}')]")

    def get_lists(self):
        return self.web_element.find_elements(self.locator['By'], self.locator['Value'])

    def inactive_count(self):
        count = 0
        for option in self.get_lists():
            if "active" not in option.get_attribute('class'):
                count += 1
        return count

    def get_choosen_value(self):
        for option in self.get_lists():
            if "active" in option.get_attribute('class'):
                return option.text
        return -1

    def is_choosen(self, selected_item):
        return "active" in self.get_label(selected_item).get_attribute('class')

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(*RadioButtonLocators.error_msg)
            return error_msg.text == error_expected
        except:
            log.info("there is no label error here")

    def is_invalid(self):
        return 'invalid' in self.web_element.get_attribute('class')

    def is_valid(self):
        return 'valid' in self.web_element.get_attribute('class')
