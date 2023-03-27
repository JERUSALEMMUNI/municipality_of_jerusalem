from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.upload_file_locators import UploadFilesLocators

log = logger.get_logger(__name__)


class UploadFile(BaseWidget):
    def __init__(self, label, index, step_number=None):
        super().__init__(label, index, step_number)

    @property
    def locator(self):
        value = f"//label[contains(text(),'{self.label}')]/ancestor::div[contains(@class,'p-field')]"
        if self.step_number:
            value = f"//{self.step_number.value}{value}"
        return {
            'By': By.XPATH,
            'Value': value
        }

    def upload_file(self, path):
        """
        param path: file name
        return: upload the file
        """
        upload_file = self.web_element.find_element(*UploadFilesLocators.upload_file)
        upload_file.send_keys(path)

    def check_file_name(self, file_index, expected_file_name):
        file = self.web_element.find_element(*UploadFilesLocators.check_file_name_locator(file_index))
        file_extension_list = file.text.split('.')
        file_extenssion = file_extension_list[-1]
        allowed_extension_values = ['png', 'pdf', 'gif', 'jpg']
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
        file = self.web_element.find_element(*UploadFilesLocators.check_file_size_locator(file_index)).text
        final_file = file[1:-1]
        file_size_measuring_unit = final_file[-2:]
        file_size_number = final_file[:-2]
        if file_size_measuring_unit == "MB" and file_size_number > 6:
            return False
        return True

    def delete_file(self, file_index):
        delete_button = self.web_element.find_element(*UploadFilesLocators.delete_file_locator(file_index))
        delete_button.click()

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*UploadFilesLocators.error_msg)
        return error_msg.text == error_expected

    def validate_error_window_message(self, error_expected):
        error_window_msg_part1 = self.web_element.find_element(*UploadFilesLocators.error_window_msg_part1)
        error_window_msg_part2 = self.web_element.find_element(*UploadFilesLocators.error_window_msg_part2)
        er = error_window_msg_part1.text + " " + error_window_msg_part2.text
        return er.strip() == error_expected.strip()

    def validate_warning_message(self):
        try:
            warning_msg = self.web_element.find_element(*UploadFilesLocators.error_window_msg_part1)
            if ('סוג הקובץ אינו חוקי') in warning_msg.text:
                return True
        except:
            log.info("this is error the field dont have a warning message")
            raise AssertionError("This file is considered an invalid file and this accepted file ")

    def get_list(self):
        return self.web_element.find_elements(*UploadFilesLocators.list)

    def get_list_length(self):
        return len(self.get_list())

    def clear(self, file_index=None):
        for i in range(self.get_list_length() - 1):
            self.delete_file(1)
            pass

    @property
    def is_invalid(self):
        if 'ng-invalid' in self.web_element.find_element(*UploadFilesLocators.is_invalid).get_attribute(
                'class'):
            return True

    @property
    def is_valid(self):
        if 'ng-valid' in self.web_element.find_element(*UploadFilesLocators.is_valid).get_attribute(
                'class'):
            return True
