from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class AlertMessageField(BaseWidget):
    def __init__(self, label):
        super().__init__(label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",

        }

    def get_error_message(self):
        return self.web_element.text

    def check_expected_error(self, expected_error):
        return self.web_element.text == expected_error
