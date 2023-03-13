import allure
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from infra import logger
from ui_widgets.new_style.dropdown_search_field import DropdownSearch
from ui_widgets.new_style.widget_locators.dropdown_search_selectbox_locators import DropdownSearchSelectBoxLocators

log = logger.get_logger(__name__)


class DropdownSearchSelectBox(DropdownSearch):
    def __init__(self, label, index, path_locator="/following-sibling::p-multiselect"):
        super().__init__(label, index)
        self.path_locator = path_locator

    @property
    def read_text_value(self):
        return self.web_element.find_element(By.XPATH, value="./div/div/span").text

    def validate_chosen_option(self, number):
        assert self.value == self.web_element.find_element(By.XPATH,
                                                           value=f"//p-multiselect/following-sibling::div/div[{number}]").text, 'The selected item is not in the list'

    def validate_selected_option(self, option):
        if "highlight" in self.web_element.find_element(by=By.XPATH,
                                                        value=f"//li[@aria-label='{option}']").get_attribute('class'):
            return True
        else:
            return False

    def validate_option_is_not_selected(self, option):
        if "highlight" not in self.web_element.find_element(by=By.XPATH,
                                                            value=f"//li[@aria-label='{option}']").get_attribute(
            'class'):
            return True
        else:
            return False

    def count_selected_options(self):
        if 'invalid' in self.web_element.find_element(By.XPATH,
                                                      value=f"//label[contains(text(),'{self.label}')]/following-sibling::p-multiselect").get_attribute(
            'class'):
            return 0
        else:
            WebDriverWait(self.web_element, 1).until(
                EC.visibility_of_element_located((By.XPATH, f"//p-multiselect/following-sibling::div/div")))
            list_under_field = self.web_element.find_elements(By.XPATH,
                                                              value="//p-multiselect/following-sibling::div/div")
            counter = len(list_under_field)
            return counter

    def click_button(self):
        dropDown_open = self.web_element.find_element(By.XPATH, "./div/div/input").get_attribute('aria-expanded')
        if dropDown_open in (None, "false"):
            self.web_element.click()

    def select_all_checkbox(self):
        """
        first we will clear the search text field from any text so all the values appear to us.
        then will check first if the select all check box are options are all selected, if not it will
        click twice.
        then we will add the checked options one by one to use it for validation later on.
        """
        # We should clear the search field first, so we can uncheck all the list
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located((By.XPATH, f"//p-multiselect/div/div/div/div/input")))
        self.list = []
        element.click()
        element.clear()
        # If the status of the checkbox is false (unchecked) then we have to check it twice.
        element = self.web_element.find_element(By.XPATH, "//p-multiselect//div[@role='checkbox']")
        all_elements = self.web_element.find_elements(By.XPATH, "//p-multiselect//ul/p-multiselectitem/li")
        if element.get_attribute('aria-checked') in (None, "false"):
            element.click()
        for i in all_elements:
            self.list.append(i.text)
        log.info(self.list)

    def clear_selected_items(self):
        # We should clear the search field first, so we can uncheck all the list
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located((By.XPATH, f"//p-multiselect/div/div/div/div/input")))
        element.click()
        element.clear()
        # If the status of the checkbox is false (unchecked) then we have to check it twice.
        element = self.web_element.find_element(By.XPATH, "//p-multiselect//div[@role='checkbox']")
        if element.get_attribute('aria-checked') in (None, "false"):
            element.click()
            element.click()

        elif "true" == element.get_attribute('aria-checked'):
            element.click()
        all_elements = self.web_element.find_elements(By.XPATH, "//p-multiselect//ul/p-multiselectitem/li")
        for i in all_elements:
            self.list.remove(i.text)
        log.info(self.list)

    def validate_checked_list_count(self):
        list_under_field = self.web_element.find_elements(By.XPATH, value="//p-multiselect/following-sibling::div/div")
        list = []
        for i in list_under_field:
            list.append(i.text)
        log.info(self.list)
        log.info(list)
        discription = []
        for i in range(0, len(list)):
            if self.list[i] != list[i]:
                discription.append(["no. " + str(i), self.list[i], list[i]])
        return self.list == list, discription

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(*DropdownSearchSelectBoxLocators.error_msg)
            return error_msg.text == error_expected
        except:
            log.info("Error label is not available")
