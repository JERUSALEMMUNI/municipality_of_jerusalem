from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.dropdown_locators import DropdownLocators

log = logger.get_logger(__name__)


class Dropdown(BaseWidget):
    def __init__(self, label, index, path_locator="/..//p-dropdown", step_number=None):
        super().__init__(label, index, step_number)
        self.path_locator = path_locator
        self.list = []

    @property
    def locator(self):
        value = f"//label[contains(text(),'{self.label}')]{self.path_locator}"
        if self.step_number:
            value = f"//{self.step_number.value}{value}"
        return {
            'By': By.XPATH,
            'Value': value
        }

    def get_locator(self):
        return DropdownLocators()

    def click_button(self):
        dropDown_open = self.web_element.find_element(*DropdownLocators.dropDown_open).get_attribute('aria-expanded')
        if dropDown_open in (None, "false"):
            self.web_element.find_element(*DropdownLocators.dropDown_click).click()

    def item_search_scroll(self, driver, option_value):
        self.click_button()
        while True:
            WebDriverWait(self.web_element, 30).until(
                EC.presence_of_element_located(DropdownLocators.item_search_scroll_element))
            element = driver.find_element(*DropdownLocators.item_search_scroll_element)
            driver.execute_script("arguments[0].scrollBy(0,70);", element)
            elements_list = element.text
            log.info(elements_list)
            if option_value in elements_list:
                chosenElement = driver.find_element(*self.get_locator().select(option_value))
                return chosenElement.text, elements_list

    def select_element(self, pre):
        self.click_button()
        list_of_items = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_all_elements_located(DropdownLocators.select_item))
        for i in list_of_items:
            if i.text == pre:
                i.click()
                WebDriverWait(self.web_element, 30).until(EC.invisibility_of_element_located(i))
                self.dropdown_selection = True
                return True
        else:
            log.info("Didn't find option to choose")
            self.dropdown_selection = False
            return False

    def new_select_element(self, txt):
        self.click_button()
        elements = self.web_element.find_elements(DropdownLocators.select_item)
        for option in elements:
            if option.text == txt:
                option.click()
                WebDriverWait(self.web_element, 30).until(EC.invisibility_of_element_located(option))
                break
        else:
            return False

    def select_no_label_dropdown_element(self, pre):
        self.path_locator = DropdownLocators.no_label
        self.click_button()
        list_of_items = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_all_elements_located(
                (self.locator['By'], self.locator['Value'])))
        for i in list_of_items:
            if i.text == pre:
                i.click()
                self.dropdown_selection = True
                return True
        else:
            log.info("Didn't find option to choose")
            self.dropdown_selection = False
            return False

    def validate_selected(self, option):
        result = self.web_element.text
        returnResult = result.splitlines()[0]
        return returnResult == option

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

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*DropdownLocators.error_msg)
        return error_msg.text == error_expected

    def close(self):
        dropDown_open = self.web_element.find_element(*DropdownLocators.close).get_attribute('aria-expanded')
        if dropDown_open.lower() == 'true':
            self.web_element.click()
            # TODO : wait to close (Amr)
            # if WebDriverWait(self.web_element, 10).until(
            #         EC.visibility_of_element_located(By.XPATH(dropDown_open))) == 'false':
            return True
            # else:
            #     log.info("the list not closed")
            #     return False
        return False

    @property
    def option_status(self):
        return self.dropdown_selection

    def select_first_element(self):
        self.click_button()
        WebDriverWait(self.web_element, 10).until(EC.presence_of_element_located(DropdownLocators.list_items))
        list_of_items = self.web_element.find_elements(*DropdownLocators.list_items)
        list_of_items[0].click()
