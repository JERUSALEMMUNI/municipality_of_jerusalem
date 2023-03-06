import time
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.widget_locators.dropdown_locators import DropdownLocators
from ui_widgets.old_style.alert_message_field import AlertMessageField

log = logger.get_logger(__name__)


class Dropdown(BaseWidget):
    def __init__(self, label, base_path="/following-sibling::p-dropdown"):
        super().__init__(label)
        self.base_path = base_path
        self.list = []
        self.alert_error_message = AlertMessageField(self.label)

    @property
    def locator(self):
        return {'By': By.XPATH,
                'Value': f"//label[contains(text(),'{self.label}')]{self.base_path}"}

    def click_button(self):
        dropDown_open = self.web_element.find_element(By.XPATH, "./div/div/input").get_attribute('aria-expanded')
        if dropDown_open in (None, "false"):
            self.web_element.click()

    def item_search_scroll(self, driver, option_value):
        element = None
        i = 0
        while True:
            # todo: use driver.waitLong (max)
            WebDriverWait(self.web_element, 30).until(
                EC.presence_of_element_located(DropdownLocators.item_search_scroll_element))
            element = driver.find_element(by=By.XPATH, value=f"//div/div/div/ul")
            driver.execute_script("arguments[0].scrollBy(0,70);", element)
            elements_list = element.text
            log.info(elements_list)
            if option_value in elements_list:
                chosenElement = driver.find_element(by=By.XPATH, value=f"//li[@aria-label='{option_value}']")
                return chosenElement.text, elements_list

    def select_element(self, pre):
        WebDriverWait(self.web_element, 5).until(
            EC.presence_of_element_located((By.XPATH, f".//li[@aria-label='{pre}']")))
        prefix = self.web_element.find_element(by=By.XPATH, value=f".//li[@aria-label='{pre}']")
        prefix.click()
        self.value = prefix
        if "highlight" in self.value.get_attribute('class'):
            self.list.append(self.value.text)
        else:
            self.list.remove(self.value.text)
        log.info("after removing")
        log.info(self.list)
        return prefix.text

    def validate_selected(self):
        result = self.web_element.text
        returnResult = result.splitlines()[0]
        return returnResult

    @property
    def read_text_value(self):
        return self.web_element.find_element(By.XPATH, value="./div/span").text

    @property
    def check_if_open(self):
        return 'open' in self.web_element.find_element(By.XPATH, value="./div").get_attribute('class')

    @property
    def get_text(self):
        return self.web_element.get_attribute('value')

    def get_label(self):
        label = self.label
        return label

    def has_text(self, text):
        return text in self.get_text

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.web_element.get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.web_element.get_attribute('class')

    def initial_error(self):
        error_message_element = self.web_element.find_element(By.XPATH, "./following-sibling::span")
        self.alert_error_message.set_web_element(error_message_element)

    def get_error_message(self):
        self.initial_error()
        self.alert_error_message.get_error_message()

    def check_error_message(self, expected_error):
        self.initial_error()
        self.alert_error_message.check_expected_error(expected_error)
