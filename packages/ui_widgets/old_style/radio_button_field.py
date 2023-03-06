from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.old_style.alert_message_field import AlertMessageField

log = logger.get_logger(__name__)


class RadioButtonField(BaseWidget):
    def _init_(self, label):
        super().__init__(label)

        # self.alert_error_message = AlertMessageField(self.label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/following-sibling::div/p-radiobutton/label",
        }

    def choose_value(self, selected_item, index=1):
        try:
            wanted_btn = self.web_element.find_elements(self.locator['By'], self.locator[
                'Value'] + f"[contains(text(),'{selected_item}')]/parent::p-radiobutton/div")
            wanted_btn[index - 1].click()
        except:
            log.info(f"{selected_item} not exists in radio button to chose")

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

    def get_chosen_value(self):
        for option in self.get_lists():
            if "active" in option.get_attribute('class'):
                return option.text
        return -1

    def is_chosen(self, selected_item):
        return "active" in self.get_label(selected_item).get_attribute('class')

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(self.locator['By'],
                                                      "./parent::p-radiobutton/parent::div/following-sibling::span")
            return error_msg.text == error_expected
        except:
            log.info("there is no label error here")

    def is_invalid(self):
        x = self.web_element.find_element(self.locator['By'], "./parent::p-radiobutton")
        return 'invalid' in x.get_attribute('class')

    def is_valid(self):
        x = self.web_element.find_element(self.locator['By'], "./parent::p-radiobutton")
        return 'valid' in x.get_attribute('class')

    # def initial_error(self):
    #     error_message_element = self.web_element.find_element(By.XPATH, "./parent::p-radiobutton/parent::div/following-sibling::span")
    #     self.alert_error_message.set_web_element(error_message_element)
    #
    # def get_error_message(self):
    #     self.initial_error()
    #     self.alert_error_message.get_error_message()
    #
    # def check_error_message(self, expected_error):
    #     self.initial_error()
    #     self.alert_error_message.check_expected_error(expected_error)
