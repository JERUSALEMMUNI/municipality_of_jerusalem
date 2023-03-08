from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class UploadFile(BaseWidget):
    def __init__(self, label,index, driver):
        super().__init__(label,index)
        self.driver = driver

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/parent::div/following-sibling::div/p-fileupload/div/div/span/input"
        }


    def upload_file(self, path):
        file_input = self.driver.find_element(self.locator["By"], self.locator["Value"])
        file_input.send_keys(path)

