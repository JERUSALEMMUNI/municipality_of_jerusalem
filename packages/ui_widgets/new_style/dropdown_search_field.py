from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from infra import logger
from ui_widgets.new_style.dropdown_field import Dropdown
from ui_widgets.new_style.widget_locators.dropdown_search_locators import DropdownSearchLocators

log = logger.get_logger(__name__)


class DropdownSearch(Dropdown):
    def __init__(self, label, index, path_locator="/following-sibling::p-dropdown"):
        super().__init__(label, index)
        self.path_locator = path_locator

    def search_element(self, value_selected):
        dropDown_open = self.web_element.get_attribute('aria-expanded')
        if dropDown_open in ('false', None):
            self.web_element.click()
        self.web_element.find_element(*DropdownSearchLocators.dropdown(self.label)).send_keys(value_selected)
        drop = self.web_element.find_element(*DropdownSearchLocators.drop)
        drop.click()
        result = self.web_element.text
        returnResult = result.splitlines()[0]
        return returnResult

    # Todo: function is not ready yet
    # loop should be stopped if an element is not found
    def item_search_scroll(self, driver, text):
        """
              This function will click first, then start scrolling down until it finds the option
              that we are looking for.
              i variable increases each time it sees the wanted option, until it sees it 5 times,
              it will return the
        """
        self.click_button()
        element = None
        i = 0
        while True:
            WebDriverWait(self.web_element, 30).until(
                EC.presence_of_element_located(DropdownSearchLocators.item_search_scroll))
            element = driver.find_element(*DropdownSearchLocators.item_search_scroll)
            driver.execute_script("arguments[0].scrollBy(0,70);", element)
            element = element.text
            if text in element:
                i = i + 1
            if text in element and i == 4:
                chosenElement = driver.find_element(*DropdownSearchLocators.chosen_element(text))
                return chosenElement.text, element

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

    def click_first_value(self, text):
        element = WebDriverWait(self.web_element, 30).until(
            EC.presence_of_element_located((By.XPATH, f"(.//li/span[contains(text(),'{text}')]/parent::li)[1]")))
        element.click()

    def write_in_search_field(self, text):
        self.click_button()
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located(DropdownSearchLocators.write_in_search_field))
        element.click()
        element.clear()
        element.send_keys(text)

    def search_and_pick_first_element_and_validate(self, text):
        """
        This function will click the dropdown menu, then it will clear the search field
        and will set a text value, after that it will search for that option and click the
        first value in search result, and validate the result
        """
        self.click_button()
        element = WebDriverWait(self.web_element, 5).until(
            EC.visibility_of_element_located((By.XPATH, f"./div/div/div/input")))
        element.click()
        element.clear()
        element.send_keys(text)
        try:
            element = WebDriverWait(self.web_element, 5).until(
                EC.presence_of_element_located((By.XPATH, f"(.//li/span[contains(text(),'{text}')]/parent::li)[1]")))
            element.click()
            return True
        except:
            log.info("Option is not found")
            return False

    def clear_search_field(self):
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located(DropdownSearchLocators.clear_search_field))
        element.click()
        element.clear()

    def get_search_result_if_empty(self):
        # self.click_button()
        element = WebDriverWait(self.web_element, 3).until(
            EC.visibility_of_element_located(DropdownSearchLocators.get_search_result_if_empty))
        return element.text == "No results found"

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*DropdownSearchLocators.error_msg)
        return error_msg.text == error_expected

