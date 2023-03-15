from selenium.webdriver import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.time_field_locators import TimeFieldLocators

log = logger.get_logger(__name__)


class TimeField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def get_text(self):
        return self.web_element.get_attribute('value')

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]"
        }

    def validate_text(self, text):
        return self.web_element.get_attribute('value') == text

    def set_text(self, text):
        self.time_text_field = self.create_widget('TextField', label=self.label)
        element = self.web_element.find_element(*TimeFieldLocators.text_input)
        self.set_widget_web_element(self.time_text_field, element)
        self.time_text_field.set_text(text)
        self.time_text_field.set_text(Keys.RETURN)

    def select_time(self, text):
        self.web_element.find_element(*TimeFieldLocators.parent_element).click()
        self.time_picker_field = self.create_widget('TimePickerWidget', label=self.label)
        self.set_widget_web_element(self.time_picker_field)
        self.time_picker_field.select_time(text)
        self.set_text(Keys.RETURN)
        WebDriverWait(self.web_element, 10).until(
            EC.invisibility_of_element(self.time_picker_field.web_element))

    @property
    def is_invalid(self):
        parent_element = self.web_element.find_element(*TimeFieldLocators.parent_element)
        return 'ng-invalid' in parent_element.get_attribute('class')

    @property
    def is_valid(self):
        parent_element = self.web_element.find_element(*TimeFieldLocators.parent_element)
        return 'ng-valid' in parent_element.get_attribute('class')

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*TimeFieldLocators.alert_text)
        return error_msg.text == error_expected
