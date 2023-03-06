import time

import allure
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from infra import logger
from ui_widgets.new_style.dropdown_search_field import DropdownSearch
from ui_widgets.old_style.alert_message_field import AlertMessageField

log = logger.get_logger(__name__)


class DropdownSearchSelectBox(DropdownSearch):
    def __init__(self, label, base_path="/following-sibling::p-multiselect"):
        super().__init__(label)
        self.base_path = base_path
        self.alert_error_message = AlertMessageField(self.label)

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
                                                      value=f"//label[contains(text(),'{self.label}')]/following-sibling::p-multiselect").get_attribute('class'):
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

    def click_first_value(self, text):
        element = WebDriverWait(self.web_element, 30).until(
            EC.presence_of_element_located((By.XPATH, f"(.//li/span[contains(text(),'{text}')]/parent::li)[1]")))
        element.click()

    def select_all_checkbox(self):
        # We should clear the search field first, so we can uncheck all the list
        element = WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located((By.XPATH, f"//p-multiselect/div/div/div/div/input")))
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
        self.discription = []
        for i in range(0, len(list)):
            if self.list[i] != list[i]:
                self.discription.append(["no. " + str(i), self.list[i], list[i]])
        return self.list == list, self.discription

    def table_for_allure(self, table, table_headers):
        table_rows = [list(row) for row in table]
        allure.dynamic.title(f"List of items appeared incorrectly")
        # Create the HTML table
        table_html = "<table style='border-collapse: collapse; margin: 25px 0; font-size: 0.9em; font-family: sans-serif; min-width: 400px; box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);'><tr>"
        for header in table_headers:
            table_html += f"<th style='background-color: #009879; color: #ffffff; text-align: left;padding: 12px 15px;'>{header}</th>"
        table_html += "</tr>"
        for i, row in enumerate(table_rows):
            if i % 2 == 0:
                # Even rows are white
                bg_color = "#ffffff"
            else:
                # Odd rows are light gray
                bg_color = "#f2f2f2"
            table_html += f"<tr style='background-color: {bg_color}; border-bottom: 1px solid #dddddd;'>"
            for cell in row:
                table_html += f"<td style='padding: 12px 15px;'>{cell}</td>"
            table_html += "</tr>"
        table_html += "</table>"
        # Attach the table to the Allure report
        allure.attach(table_html, "table_of_incorrect_entries", allure.attachment_type.HTML)

    def initial_error(self):
        error_message_element = self.web_element.find_element(By.XPATH, "./following-sibling::div/following-sibling::span")
        self.alert_error_message.set_web_element(error_message_element)

    def get_error_message(self):
        self.initial_error()
        self.alert_error_message.get_error_message()

    def check_error_message(self, expected_error):
        self.initial_error()
        self.alert_error_message.check_expected_error(expected_error)

