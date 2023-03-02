from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from infra import logger
from ui_widgets.base_widget import BaseWidget

log = logger.get_logger(__name__)


class MultiSelect(BaseWidget):
    def __init__(self, label, base_path="/following-sibling::p-multiselect"):
        super().__init__(label)
        self.base_path = base_path
        self.multiselect = None
        self.close_button = None
        self.select_all = None

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",
            'List': "//div[contains(@class,'ui-multiselect-items-wrapper')]/ul/p-multiselectitem",
            'SelectAll': "//div[contains(@class,'ui-widget-header')]//div[@role='checkbox']",
            'Close': "//div[contains(@class,'ui-widget-header')]//a[contains(@class,'ui-multiselect-close')]"
        }

    def set_select_all_button(self):
        self.select_all = self.web_element.find_element(self.locator['By'], self.locator['SelectAll'])

    def get_select_all_button(self):
        return self.select_all

    def all_is_selected(self):
        return self.select_all.get_attribute('aria-checked') == "true"

    def click_select_all_button(self):
        if self.select_all is None:
            self.set_select_all_button()
        if not self.all_is_selected():
            self.select_all.click()

    def set_close_button(self):
        self.close_button = self.web_element.find_element(self.locator['By'], self.locator['Close'])

    def get_close_button(self):
        return self.close_button

    def click_close_button(self):
        if self.close_button is None:
            self.set_close_button()
        self.close_button.click()

    def click(self):
        self.web_element.click()

    def get_multiselect_list(self):
        list = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_any_elements_located((self.locator['By'], self.locator['List'])))
        return list

    def set_custom_multiselect(self, web_element):
        self.multiselect = web_element
        self.set_web_element(self.multiselect)

    def is_open(self):
        return 'ui-inputwrapper-focus' in self.web_element.get_attribute('class')

    def select_listbox_item(self, txt, driver, path="//div[contains(@class,'ui-multiselect-items-wrapper')]"):
        if not self.is_open():
            self.click()
        desired_option = None
        elements = self.get_multiselect_list()
        while not desired_option:
            for option in elements:
                if option.text == txt:
                    desired_option = option
                    break
                else:
                    doc = driver.find_element(By.XPATH, path)
                    WebDriverWait(driver, 30).until(EC.visibility_of((doc)))
                    driver.execute_script("arguments[0].scrollBy(0, 30);", doc)
        WebDriverWait(self.web_element, 30).until(EC.element_to_be_clickable(desired_option)).click()
        self.click_close_button()

    def select_listbox_items(self, month_list, driver, path="//div[contains(@class,'ui-multiselect-items-wrapper')]"):
        if not self.is_open():
            self.click()
        elements = self.get_multiselect_list()
        for option in elements:
            if option.text in month_list and "ui-state-highlight" not in option.get_attribute('class'):
                WebDriverWait(self.web_element, 30).until(EC.element_to_be_clickable(option)).click()
            else:
                doc = driver.find_element(By.XPATH, path)
                WebDriverWait(driver, 30).until(EC.visibility_of((doc)))
                driver.execute_script("arguments[0].scrollBy(0, 30);", doc)
        self.click_close_button()

    def set_month(self, month, driver):
        self.select_listbox_item(month, driver)

    def set_months(self, month_list, driver):
        self.select_listbox_items(month_list, driver)