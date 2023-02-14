from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger


log = logger.get_logger(__name__)


class DropDown_field(BaseWidget):
    def __init__(self, label):
        super().__init__(label)


    @property
    def get_text(self):
        return self.web_element.text

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",
        }

    def set_text(self, id_type):
        self.select_listbox_item(id_type)

    def select_listbox_item(self, id_type):

        if self.label == "סוג זיהוי":
            wanted_xpath = "//ul[@class='p-dropdown-items ng-tns-c57-1']/p-dropdownitem/li"
        elif self.label == "טלפון נייד":
            wanted_xpath = "//ul//p-dropdownitem"
        elif self.label == "טלפון קווי":
            wanted_xpath = "//ul//p-dropdownitem"

        if self.Check_if_expanded:
            self.web_element.click()

        items = self.web_element.find_elements(By.XPATH, f'{wanted_xpath}')
        bool = "false"
        for item in items:
            if item.text == id_type:
                item.click()
                bool = "true"
                break
        if bool == "false":
            raise AssertionError("Error, Cant find this type of input")

    def Check_if_expanded(self):
        element = self.web_element.find_elements(By.XPATH, "./following-sibling::div")
        if element.get_attribute('aria-expanded') == 'false':
            return False

    def clear(self):
        self.web_element.clear()

    def click(self):
        self.web_element.click()

    def has_text(self, text):
        return text in self.get_text


