from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.widget_locators.application_steps_locators import ApplicationStepsLocators

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
        return self.web_element.find_elements(*ApplicationStepsLocators.step_list)

    def get_current_step_number(self):
        pages_list = self.get_steps_list()
        for item in pages_list:
            if bool(item.get_attribute('aria-selected')):
                return int(item.text.split('\n')[0])
        return -1

    def get_number_of_steps(self):
        return len(self.get_steps_list())

    def validate_current_step_number(self, expected_number: int):
        return self.get_current_step_number() == expected_number

    def validate_number_of_forms(self, expected_number: int):
        return self.get_number_of_steps() == expected_number

    def get_step_name(self):
        steps = self.web_element.find_elements(self.locator['By'], self.locator['Value'])

        for temp_step in steps:
            if "active" in temp_step.get_attribute('class'):
                step = temp_step.text.split("\n")
                step_name = step[1]
                log.info(step_name)
                return step_name
        return -1

    def validate_current_step_name(self, step_name):
        return self.get_step_name() == step_name
