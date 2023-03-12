from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.dropdown_locators import DropdownLocators
from ui_widgets.old_style.widget_locators.multi_select_locator import MulltiSelectLocators

log = logger.get_logger(__name__)


class MultiSelect(BaseWidget):
    def __init__(self, label,index, base_path="/following-sibling::p-multiselect"):
        super().__init__(label,index)
        self.base_path = base_path
        self.multiselect = None
        self.close_button = None
        self.select_all = None

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",
        }

    def set_select_all_button(self):
        self.select_all = self.web_element.find_element(*MulltiSelectLocators.select_all)

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
        self.close_button = self.web_element.find_element(*MulltiSelectLocators.close)

    def get_close_button(self):
        return self.close_button

    def click_close_button(self):
        if self.close_button is None:
            self.set_close_button()
        WebDriverWait(self.web_element, 30).until(EC.element_to_be_clickable(self.close_button)).click()
        self.close_button.click()

    def click(self):
        self.web_element.click()

    def get_multiselect_list(self):
        list = WebDriverWait(self.web_element, 30).until(
            EC.presence_of_all_elements_located(MulltiSelectLocators.list))
        return list

    def set_custom_multiselect(self, web_element):
        self.multiselect = web_element
        self.set_web_element(self.multiselect)

    def is_open(self):
        return 'ui-inputwrapper-focus' in self.web_element.get_attribute('class')

    def select_listbox_item(self, txt):
        if not self.is_open():
            self.click()
        WebDriverWait(self.web_element, 5).until(
            EC.presence_of_element_located((DropdownLocators.select(txt))))
        prefix = self.web_element.find_element(*DropdownLocators.select(txt))
        prefix.click()
        self.close_button = self.web_element.find_element(*MulltiSelectLocators.close)
        self.close_button.click()

    def select_listbox_items(self, month_list, driver, path="//div[contains(@class,'ui-multiselect-items-wrapper')]"):
        if not self.is_open():
            self.click()
        elements = self.get_multiselect_list()
        for option in elements:
            if option.text in month_list and "ui-state-highlight" not in option.get_attribute('class'):
                WebDriverWait(self.web_element, 30).until(EC.element_to_be_clickable(option)).click()
            else:
                x = WebDriverWait(driver, 30).until(EC.presence_of_element_located((By.XPATH, path)))
                driver.execute_script("arguments[0].scrollBy(0, 30);", x)
        self.close_button = self.web_element.find_element(*MulltiSelectLocators.close)
        self.close_button.click()

    def set_month(self, month):
        self.select_listbox_item(month)

    def set_months(self, month_list, driver):
        self.select_listbox_items(month_list, driver)
