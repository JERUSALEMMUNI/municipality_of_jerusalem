from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.widget_locators.button_locators import ButtonLocators

log = logger.get_logger(__name__)


class ButtonField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def get_text(self):
        return self.web_element.text

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//span[contains(text(),'{self.label}')]/.."
        }

    def get_element(self):
        return WebDriverWait(self.web_element, 30).until(
            EC.element_to_be_clickable(self.web_element))

    def click_button(self):
        self.get_element()
        self.web_element.click()
        log.debug(f'{self.label} button clicked')

    def click_button_tyota(self):
        self.get_element()
        self.web_element.find_element(*ButtonLocators.click).click()
        log.debug(f'{self.label} button clicked')
