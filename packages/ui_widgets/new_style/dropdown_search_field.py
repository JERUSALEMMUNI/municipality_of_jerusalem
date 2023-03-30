from time import sleep
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.remote.webelement import WebElement
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from infra import logger, enums
from ui_widgets.new_style.dropdown_field import Dropdown
from ui_widgets.new_style.widget_locators.dropdown_search_locators import DropdownSearchLocators
from utils import misc_utils

log = logger.get_logger(__name__)


class DropdownSearch(Dropdown):
    def __init__(self, label, index, path_locator="/..//p-dropdown", step_number=None):
        super().__init__(label, index, path_locator, step_number)
        self.path_locator = path_locator

    def search_and_pick_first_element_and_validate(self, value_selected):
        self.write_in_search_field(value_selected)
        drop = self.wait_list_streets()
        if not self.get_search_result_if_empty():
            drop.click()
            result = self.web_element.text
            WebDriverWait(self.web_element, enums.WaitInterval.MEDIUM.value).until(EC.invisibility_of_element(drop))
            return_result = result.splitlines()[0]
            return return_result
        else:
            log.info("No Result Found")

    def wait_list_streets(self):
        try:
            return misc_utils.while_timeout(self.web_element.find_element, True, enums.WaitInterval.SHORT.value,
                                            'Error getting streets from server', *DropdownSearchLocators.drop
                                            , w_raise_on_error=False,
                                            w_comp_func=lambda a, b: type(a) is not WebElement)
        except:
            log.info("no results found label not appeared")
            return None

    def item_search_scroll(self, driver, text):
        """
              This function will click first, then start scrolling down until it finds the option
              that we are looking for.
              i variable increases each time it sees the wanted option, until it sees it 5 times,
              it will return the
        """
        self.click_button()
        i = 0
        start_time = time.time()
        while time.time()-start_time > 120:
            WebDriverWait(self.web_element, 30).until(
                EC.presence_of_element_located(DropdownSearchLocators.item_search_scroll))
            element = driver.find_element(*DropdownSearchLocators.item_search_scroll)
            driver.execute_script("arguments[0].scrollBy(0,70);", element)
            element = element.text
            if text in element:
                i = i + 1
            if text in element and i == 4:
                chosenElement = driver.find_element(*self.get_locator().chosen_element(text))
                return chosenElement.text, element

    def get_locator(self):
        return DropdownSearchLocators()

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

    def write_in_search_field(self, text):
        self.click_button()
        element = self.web_element.find_element(*DropdownSearchLocators.search_field)
        element.click()
        element.clear()
        element.send_keys(text)

    def clear_search_field(self):
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located(*DropdownSearchLocators.search_field))
        element.click()
        element.clear()

    def get_search_result_if_empty(self):
        self.click_button()
        element = WebDriverWait(self.web_element, 3).until(
            EC.visibility_of_element_located(DropdownSearchLocators.get_search_result_if_empty))
        return element.text in ("No results found", "לא נמצאו תוצאות")

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*DropdownSearchLocators.error_msg)
        return error_msg.text == error_expected

    def clear(self, index=None):
        return
