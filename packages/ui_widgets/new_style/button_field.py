import time

from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class ButtonField(BaseWidget):
    def __init__(self, label,index):
        super().__init__(label,index)

    @property
    def get_text(self):
        return self.web_element.text

    @property
    def locator(self):
        return {
             'By': By.XPATH,
             'Value': f"//span[contains(text(),'{self.label}')]/.."
        }

    def click_button(self):
        WebDriverWait(self.web_element, 30).until(
            EC.element_to_be_clickable((By.XPATH, f"//span[contains(text(),'{self.label}')]/..")))
        self.web_element.click()
        log.debug(f'{self.label} button clicked')

    def click_button_tyota(self):
        WebDriverWait(self.web_element, 30).until(
            EC.visibility_of_element_located((By.XPATH, f"//span[contains(text(),'{self.label}')]/..")))
        self.web_element.find_element(By.XPATH,"(//span[contains(text(),'שמור טיוטה')]/..)[2]").click()
        log.debug(f'{self.label} button clicked')

