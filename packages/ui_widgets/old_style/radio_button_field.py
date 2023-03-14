from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.old_style.widget_locators.radio_button_locators import RadioButtonLocators

log = logger.get_logger(__name__)


class RadioButtonField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/following-sibling::div"
        }

    def choose_value(self, selected_item):
        self.get_label(selected_item).click()

    def get_label(self, selected_item):
        return self.web_element.find_element(*RadioButtonLocators.get_item(selected_item))

    def get_lists(self):
        return self.web_element.find_elements(*RadioButtonLocators.list)

    def inactive_count(self):
        count = 0
        for option in self.get_lists():
            if "active" not in option.get_attribute('class'):
                count += 1
        return count

    def get_chosen_value(self):
        for option in self.get_lists():
            if "active" in option.get_attribute('class'):
                return option.text
        return -1


    def is_chosen(self, selected_item):
        return "active" in self.get_label(selected_item).get_attribute('class')

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(*RadioButtonLocators.error_msg)
            return error_msg.text == error_expected
        except:
            log.info("there is no label error here")

    @property
    def is_invalid(self):
        x = self.web_element.find_element(*RadioButtonLocators.is_invalid)
        return 'invalid' in x.get_attribute('class')

    @property
    def is_valid(self):
        x = self.web_element.find_element(*RadioButtonLocators.is_invalid)
        return 'valid' in x.get_attribute('class')