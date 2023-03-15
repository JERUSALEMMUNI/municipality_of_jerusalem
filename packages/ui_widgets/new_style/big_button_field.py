from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.new_style.widget_locators.big_button_locators import BigButtonLocators
from ui_widgets.old_style.radio_button_field import RadioButtonField

log = logger.get_logger(__name__)


class BigButtonField(RadioButtonField):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def get_text(self):
        return self.web_element.text

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]"
        }

    def get_lists(self):
        return self.web_element.find_elements(*BigButtonLocators.list)

    def get_label(self, selected_item):
        return self.web_element.find_element(*BigButtonLocators.get_item(selected_item))

    def inactive_count(self, state='highlight'):
        return super().inactive_count(state)

    def get_chosen_value(self, state="highlight"):
        return super().get_chosen_value(state)

    def is_chosen(self, selected_item, state="highlight"):
        return super().is_chosen(selected_item, state)

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*BigButtonLocators.error_msg)
        return error_msg.text == error_expected

    @property
    def is_invalid(self):
        element = self.web_element.find_element(*BigButtonLocators.is_invalid)
        return 'invalid' in element.get_attribute('class')

    @property
    def is_valid(self):
        element = self.web_element.find_element(*BigButtonLocators.is_invalid)
        return 'valid' in element.get_attribute('class')
