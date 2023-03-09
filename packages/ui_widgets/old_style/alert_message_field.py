from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class AlertMessageField(BaseWidget):
    def __init__(self, label,index):
        super().__init__(label,index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",

        }

    def get_error_message(self):
        return self.web_element.text

    def check_expected_error(self, expected_error):
        #Todo: I think its better to check if the error label appeared first then we can validate the value
        #Todo: by doing this, we can save a lot of time if element is not found
        return self.web_element.text == expected_error
