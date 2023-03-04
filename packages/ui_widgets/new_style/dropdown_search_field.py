import time
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from infra import logger
from ui_widgets.new_style.dropdown_field import Dropdown

log = logger.get_logger(__name__)


class DropdownSearch(Dropdown):
    def __init__(self, label, base_path="/following-sibling::p-dropdown"):
        super().__init__(label)
        self.base_path = base_path

    def search_element(self, value_selected):
        dropDown_open = self.web_element.get_attribute('aria-expanded')
        if dropDown_open in ('false', None):
            self.web_element.click()
        self.web_element.find_element(by=By.XPATH,
                                      value=f"//label[contains(text(),'{self.label}')]/following-sibling::p-dropdown//*/*/div/input[@type='text']")\
                                      .send_keys(value_selected)
        drop = self.web_element.find_element(by=By.XPATH, value="//p-dropdownitem")
        drop.click()
        result = self.web_element.text
        returnResult = result.splitlines()[0]
        return returnResult

    # Todo: function is not ready yet
    def item_search_scroll(self, driver, text):
        element = None
        i = 0
        while True:
            WebDriverWait(self.web_element, 30).until(EC.presence_of_element_located(
                (By.XPATH, "//div//ul/cdk-virtual-scroll-viewport")))
            element = driver.find_element(by=By.XPATH, value=f"//div//ul/cdk-virtual-scroll-viewport")
            driver.execute_script("arguments[0].scrollBy(0,70);", element)
            element = element.text
            if text in element:
                i = i + 1
            if text in element and i == 4:
                chosenElement = driver.find_element(by=By.XPATH, value=f"//li[@aria-label='{text}']")
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


    def write_in_search_field(self, text):
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located((By.XPATH, f"//div/div/div/div/input")))
        element.click()
        element.clear()
        element.send_keys(text)

    def clear_search_field(self):
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located((By.XPATH, f"//div/div/div/div/input")))
        element.click()
        element.clear()

    def get_search_result_if_empty(self):
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located((By.XPATH, f".//div/div/div//li")))
        return element.text

