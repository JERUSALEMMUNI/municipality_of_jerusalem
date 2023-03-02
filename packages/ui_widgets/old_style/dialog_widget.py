from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger, custom_exceptions as ce
from ui_widgets.old_style.widget_locators.dialog_locators import DialogLocators

log = logger.get_logger(__name__)


class Dialog(BaseWidget):
    def __init__(self):
        super().__init__(self)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//div[@role='dialog' and contains(@class,'ui-dialog')]"
        }

    def get_text(self):
        return self.web_element.find_element(*DialogLocators.text)

    def validate_dialog_text(self, text:str):
        return text in self.get_text().text

    def get_close_button(self):
        return self.web_element.find_element(*DialogLocators.close_button)

    def click_close_button(self):
        button = self.get_close_button()
        button.click()

    def validate_dialog_is_displayed(self):
        try:
            return self.web_element.is_displayed()
        except:
            return False

    def validate_dialog_is_not_display(self):
        return not self.validate_dialog_is_displayed()

    def validate_dialog_text_contains_at_least_chars(self, number:int):
        return len(self.get_text().text) > number
