from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger, custom_exceptions as ce
from ui_widgets.new_style.widget_locators.dialog_locators import DialogLocators
log = logger.get_logger(__name__)


class Dialog(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)
        self.text = None

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//div[@role='dialog' and contains(@class,'p-dialog-draggable')]",
        }

    def get_main_title(self):
        return self.web_element.find_element(*DialogLocators.main_title)

    def get_logo(self):
        return self.web_element.find_element(*DialogLocators.picture)

    def get_close_button(self):
        return self.web_element.find_element(*DialogLocators.close_button_new)

    def click_close_button(self):
        button = self.get_close_button()
        button.click()

    def check_dialog_is_displayed(self, title):
        try:
            logo = self.get_logo()
            logo.is_displayed()
            assert logo.is_displayed() and title in self.get_main_title().text
            self.click_close_button()
            return True
        except:
            return False

    def dialog_is_not_display(self, txt):
        return not self.check_dialog_is_displayed(txt)

    def clear(self, index=None):
        pass
