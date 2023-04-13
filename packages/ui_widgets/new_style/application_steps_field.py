from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.widget_locators.application_steps_locators import ApplicationStepsLocators
from utils import misc_utils

log = logger.get_logger(__name__)


class ApplicationStepsField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//ul[@class='lib-stepper-list']"
        }

    def get_steps_list(self):
        WebDriverWait(self.web_element, 10).until(
            EC.presence_of_element_located(ApplicationStepsLocators.step_list))
        return self.web_element.find_elements(*ApplicationStepsLocators.step_list)


    def get_current_step_info(self):
        pages_list = self.get_steps_list()
        for item in pages_list:
            if misc_utils.str_to_bool_int(item.get_attribute('aria-selected')):
                return item.text.split('\n')
        return -1, ''

    def get_current_step_number(self):
        return self.get_current_step_info()[0]

    def get_number_of_steps(self):
        return len(self.get_steps_list())

    def validate_current_step_number(self, expected_number: int):
        return self.get_current_step_number() == expected_number

    def validate_number_of_forms(self, expected_number: int):
        return self.get_number_of_steps() == expected_number

    def get_step_name(self):
        return self.get_current_step_info()[1]

    def validate_current_step_name(self, step_name):
        return self.get_step_name() == step_name
    @property
    def get_current_step(self):
        return self.get_current_step_info()[0]

    def wait_until_aria_selected(self, step_name):
        WebDriverWait(self.web_element, 10).until(
            EC.text_to_be_present_in_element_attribute((ApplicationStepsLocators.wait_current_page(step_name)),'aria-selected','true'))