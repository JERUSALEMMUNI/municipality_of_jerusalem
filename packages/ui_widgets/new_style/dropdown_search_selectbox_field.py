from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from infra import logger
from ui_widgets.new_style.dropdown_search_field import DropdownSearch

log = logger.get_logger(__name__)


class DropdownSearchSelectBox(DropdownSearch):
    def __init__(self, label, base_path="/following-sibling::p-multiselect"):
        super().__init__(label)
        self.base_path = base_path

    @property
    def read_text_value(self):
        return self.web_element.find_element(By.XPATH, value="./div/div/span").text

    # def click_chosen_option(self, option):
    #     WebDriverWait(self.web_element, 30).until(
    #         EC.visibility_of_element_located((By.XPATH, f".//li[@aria-label='{option}']")))
    #     checkeditem = self.web_element.find_element(by=By.XPATH, value=f".//li[@aria-label='{option}']")
    #     checkeditem.click()
    #     self.value = checkeditem

    def validate_chosen_option(self, number):
        assert self.value == self.web_element.find_element(By.XPATH, value=f"//p-multiselect/following-sibling::div/div[{number}]").text, 'The selected item is not in the list'

    def validate_selected_option(self,option):
        if "highlight" in self.web_element.find_element(by=By.XPATH, value=f"//li[@aria-label='{option}']").get_attribute('class'):
            return True
        else:
            return False

    def validate_option_is_not_selected(self,option):
        if "highlight" not in self.web_element.find_element(by=By.XPATH, value=f"//li[@aria-label='{option}']").get_attribute('class'):
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
            list_under_field = self.web_element.find_elements(By.XPATH, value="//p-multiselect/following-sibling::div/div")
            counter = len(list_under_field)
            return counter

    def click_button(self):
        if 'open' in self.web_element.find_element(By.XPATH, "//p-multiselect/div").get_attribute('class'):
            pass
        else:
            # log.info('open' in self.web_element.find_element(By.XPATH, "//p-multiselect/div").get_attribute('class'))
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
        all_elements = self.web_element.find_elements(By.XPATH,"//p-multiselect//ul/p-multiselectitem/li")
        if element.get_attribute('aria-checked') in (None,"false"):
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
        if element.get_attribute('aria-checked') in (None,"false"):
            element.click()
            element.click()

        elif "true" == element.get_attribute('aria-checked'):
            element.click()
        all_elements = self.web_element.find_elements(By.XPATH,"//p-multiselect//ul/p-multiselectitem/li")
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
        return self.list == list