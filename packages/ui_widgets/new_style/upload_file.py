from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class UploadFile(BaseWidget):
    def __init__(self, label, index, driver):
        super().__init__(label, index)
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

    def check_file_name(self, file_index, expected_file_name):
        file = self.web_element.find_element(By.XPATH,
                                             f"./parent::span/parent::div/following-sibling::div/div/div/div[{file_index}]/div/following-sibling::div[1]")
        log.info(file.text)
        return expected_file_name == file.text

    def check_file_size(self, file_index):
        file = self.web_element.find_element(By.XPATH,
                                             f"./parent::span/parent::div/following-sibling::div/div/div/div[{file_index}]/div/following-sibling::div[2]")
        file_after = file.text.split(" ")
        file_size_number = file_after[0]
        file_size_measuring_unit = file_after[1]

        if file_size_measuring_unit == "MB" and file_size_number > 6:
            return False
        return True

    def delete_file(self, file_index):
        delete_button = self.web_element.find_element(By.XPATH,
                                                      f"./parent::span/parent::div/following-sibling::div/div/div/div[{file_index}]/div/following-sibling::div[3]/button")
        delete_button.click()

    def get_error_message(self, error_expected):
        try:
            error_msg = self.web_element.find_element(By.XPATH,
                                                      "./parent::span/parent::div/parent::div/parent::p-fileupload/parent::div/parent::div/parent::core-file-upload/parent::div/following-sibling::span")
            return error_msg.text == error_expected
        except:
            log.info("Error label is not available")
