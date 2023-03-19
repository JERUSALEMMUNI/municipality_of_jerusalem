from selenium.webdriver.common.by import By

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.upload_file_locators import UploadFilesLocators

log = logger.get_logger(__name__)


class UploadFile(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/../../span/input"
        }

    def upload_file(self, path, driver):
        file_input = driver.find_element(self.locator["By"], self.locator["Value"])
        file_input.send_keys(path)

    def check_file_name(self, file_index, expected_file_name):
        file = self.web_element.find_element(*UploadFilesLocators.check_file_name_locator(file_index))
        file_extension_list = file.text.split('.')
        file_extenssion = file_extension_list[-1]
        allowed_extension_values = ['png', 'pdf']
        if file_extenssion in allowed_extension_values:
            extention = True
        else:
            extention = False
        if expected_file_name == file.text:
            same_uploaded = True
        else:
            same_uploaded = False
        return extention, same_uploaded

    def check_file_size(self, file_index):
        file = self.web_element.find_element(*UploadFilesLocators.check_file_size_locator(file_index))
        file_after = file.text.split(" ")
        file_size_number = file_after[0]
        file_size_measuring_unit = file_after[1]

        if file_size_measuring_unit == "MB" and file_size_number > 6:
            return False
        return True

    def delete_file(self, file_index):
        delete_button = self.web_element.find_element(*UploadFilesLocators.delete_file_locator(file_index))
        delete_button.click()

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*UploadFilesLocators.error_msg)
        return error_msg.text == error_expected

    def get_list(self):
        return self.web_element.find_elements(*UploadFilesLocators.list)

    def get_list_length(self):
        return len(self.get_list())

    def clear(self, file_index=None):
        for i in range(self.get_list_length() - 1):
            self.delete_file(1)
            pass
