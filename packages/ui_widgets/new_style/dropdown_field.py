from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.dropdown_locators import DropdownLocators

log = logger.get_logger(__name__)


class Dropdown(BaseWidget):
    def __init__(self, label, index, path_locator="/following-sibling::p-dropdown"):
        super().__init__(label, index)
        self.path_locator = path_locator
        self.list = []

    @property
    def locator(self):
        return {'By': By.XPATH,
                'Value': f"//label[contains(text(),'{self.label}')]{self.path_locator}"}

    def click_button(self):
        dropDown_open = self.web_element.find_element(*DropdownLocators.dropDown_open).get_attribute('aria-expanded')
        if dropDown_open in (None, "false"):
            self.web_element.click()

    def item_search_scroll(self, driver, option_value):
        while True:
            # todo: use driver.waitLong (max)
            WebDriverWait(self.web_element, 30).until(
                EC.presence_of_element_located(DropdownLocators.item_search_scroll_element))
            element = driver.find_element(*DropdownLocators.item_search_scroll_element)
            driver.execute_script("arguments[0].scrollBy(0,70);", element)
            elements_list = element.text
            log.info(elements_list)
            if option_value in elements_list:
                chosenElement = driver.find_element(*DropdownLocators.chosen_element(option_value))
                return chosenElement.text, elements_list

    def select_element(self, pre):
        self.click_button()
        WebDriverWait(self.web_element, 5).until(
            EC.presence_of_element_located((DropdownLocators.select(pre))))
        prefix = self.web_element.find_element(*DropdownLocators.select(pre))
        prefix.click()
        self.value = prefix
        if "highlight" in self.value.get_attribute('class'):
            self.list.append(self.value.text)
        else:
            self.list.remove(self.value.text)
        log.info("after removing")
        log.info(self.list)
        return prefix.text

    def validate_selected(self, option):
        result = self.web_element.text
        returnResult = result.splitlines()[0]
        return returnResult == option

    @property
    def read_text_value(self):
        return self.web_element.find_element(*DropdownLocators.read_text).text

    @property
    def check_if_open(self):
        return 'open' in self.web_element.find_element(*DropdownLocators.check_if_open).get_attribute('class')

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

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(*DropdownLocators.error_msg)
            return error_msg.text == error_expected
        except:
            log.info("Error label is not available")
