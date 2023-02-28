import time

from selenium.webdriver import ActionChains, Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.select import Select
from selenium.webdriver.support.wait import WebDriverWait
from packages.ui_widgets.base_widget import BaseWidget
from infra import logger



log = logger.get_logger(__name__)

class SelctorButton(BaseWidget):
    def __init__(self, label,driver,path ="/following-sibling::p-dropdown"):
        super().__init__(label)
        self.path = path
        self.driver = driver

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]{self.path}"
        }

    @property
    def get_text(self):
        return self.web_element.text

    def set_text(self, text):
        self.search_on(text)

    # def search_on(self,txt):
    #     self.click()
    #     desired_option = None
    #     elements = self.web_element.find_elements(self.locator['By'],"//ul//p-dropdownitem")
    #     while not desired_option:
    #         for option in elements:
    #             if option.text == txt:
    #                 desired_option = option
    #                 break
    #             else:
    #                 keyboard.press_and_release("down")
    #
    #     desired_option.click()

    def search_on(self, txt,path = '//div/following-sibling::div/ul/cdk-virtual-scroll-viewport'):
        self.click()
        desired_option = None
        elements = self.web_element.find_elements(self.locator['By'], "//ul//p-dropdownitem")
        while not desired_option:
            for option in elements:
                if option.text == txt:
                    desired_option = option
                    break
                else:
                    doc = self.driver.find_element(By.XPATH,path)
                    WebDriverWait(self.driver, 30).until(EC.visibility_of((doc)))
                    self.driver.execute_script("arguments[0].scrollBy(0, 30);", doc)
        WebDriverWait(self.web_element, 30).until(EC.element_to_be_clickable((desired_option))).click()

    def has_text(self, text):
        return text in self.get_text

    def click(self):
        self.web_element.click()




