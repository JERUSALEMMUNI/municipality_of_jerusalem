from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from infra import logger
from ui_widgets.new_style.dropdown_search_field import DropdownSearch
from ui_widgets.new_style.widget_locators.dropdown_locators import DropdownLocators
from ui_widgets.new_style.widget_locators.dropdown_search_selectbox_locators import DropdownSearchSelectBoxLocators

log = logger.get_logger(__name__)


class DropdownSearchSelectBox(DropdownSearch):
    def __init__(self, label, index, path_locator="/following-sibling::p-multiselect"):
        super().__init__(label, index)
        self.path_locator = path_locator

    # @property
    # def read_text_value(self):
    #     return self.web_element.find_element(*DropdownSearchSelectBoxLocators.read_text_value).text
    #
    # def validate_chosen_option(self, number):
    #     assert self.value == self.web_element.find_element(
    #         *DropdownSearchSelectBoxLocators.chosen_option(number)).text, 'The selected item is not in the list'

    def validate_selected_option(self, option):

        self.click_button()
        if "highlight" in self.web_element.find_element(
                *DropdownSearchSelectBoxLocators.selected_option(option)).get_attribute('class'):

            return True
        else:
            return False

    # def validate_option_is_not_selected(self, option):
    #     if "highlight" not in self.web_element.find_element(
    #             *DropdownSearchSelectBoxLocators.option_is_not_selected(option)).get_attribute('class'):
    #         return True
    #     else:
    #         return False
    #
    # def count_selected_options(self):
    #     if 'invalid' in self.web_element.find_element(
    #             *DropdownSearchSelectBoxLocators.selected_options(self.label)).get_attribute('class'):
    #         return 0
    #     else:
    #         WebDriverWait(self.web_element, 1).until(
    #             EC.visibility_of_element_located(*DropdownSearchSelectBoxLocators.list))
    #         list_under_field = self.web_element.find_elements(*DropdownSearchSelectBoxLocators.list)
    #         counter = len(list_under_field)
    #         return counter

    def click_button(self):
        dropDown_open = self.web_element.find_element(*DropdownSearchSelectBoxLocators.dropdown_open).get_attribute(
            'aria-expanded')
        if dropDown_open in (None, "false"):
            self.web_element.click()
        # ToDo: take 10.9 second in multi select search box , fix it
        WebDriverWait(self.web_element, 20).until(
            EC.visibility_of_element_located((By.XPATH, "//div[contains(@class,'ui-multiselect-items')]")))

    def select_all_checkbox(self):
        """
        first we will clear the search text field from any text so all the values appear to us.
        then will check first if the select all check box are options are all selected, if not it will
        click twice.
        then we will add the checked options one by one to use it for validation later on.
        """
        self.click_button()

        # We should clear the search field first, so we can uncheck all the list
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located(DropdownSearchSelectBoxLocators.element_visibility))
        self.list = []
        element.click()
        element.clear()
        # If the status of the checkbox is false (unchecked) then we have to check it twice.
        element = self.web_element.find_element(*DropdownSearchSelectBoxLocators.element)
        all_elements = self.web_element.find_elements(*DropdownSearchSelectBoxLocators.all_elements)
        if element.get_attribute('aria-checked') in (None, "false"):
            element.click()
        for i in all_elements:
            self.list.append(i.text)
        log.info(self.list)

    # ToDo: check
    def clear_selected_items(self):
        self.click_button()
        # We should clear the search field first, so we can uncheck all the list
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located(DropdownSearchSelectBoxLocators.element_visibility))
        element.click()
        element.clear()
        # If the status of the checkbox is false (unchecked) then we have to check it twice.
        element = self.web_element.find_element(*DropdownSearchSelectBoxLocators.element_clear)
        if element.get_attribute('aria-checked') in (None, "false"):
            element.click()
            element.click()

        elif "true" == element.get_attribute('aria-checked'):
            element.click()
        all_elements = self.web_element.find_elements(*DropdownSearchSelectBoxLocators.all_elements)
        for i in all_elements:
            self.list.remove(i.text)
        log.info(self.list)

    def validate_checked_list_count(self):

        self.click_button()
        list_under_field = self.web_element.find_elements(*DropdownSearchSelectBoxLocators.list)

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

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*DropdownSearchSelectBoxLocators.error_msg)
        return error_msg.text == error_expected

    def select_element(self, pre):
        self.click_button()
        try:
            WebDriverWait(self.web_element, 30).until(
                EC.element_to_be_clickable(DropdownLocators.select(pre)))
            prefix = self.web_element.find_element(*DropdownLocators.select(pre))
            prefix.click()
        except:
            log.info("Didn't find option to choose")
            prefix = None
        self.value = prefix
        if "highlight" in self.value.get_attribute('class'):
            self.list.append(self.value.text)
        else:
            self.list.remove(self.value.text)
        log.info("after removing")
        log.info(self.list)
        if prefix.text == pre:
            selection = True
        else:
            selection = False
        return prefix.text, selection

    def clear(self, index=None):
        try:
            self.clear_selected_items()
        finally:
            self.close()
