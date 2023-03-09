from selenium.webdriver.common.by import By


class UploadFilesLocators:

    error_msg = (By.XPATH, "./parent::span/parent::div/parent::div/parent::p-fileupload/parent::div/parent::div/parent::core-file-upload/parent::div/following-sibling::span")



    @staticmethod
    def check_file_size_locator(file_index):
        return By.XPATH, f"./parent::span/parent::div/following-sibling::div/div/div/div[{file_index}]/div/following-sibling::div[2]"

    @staticmethod
    def check_file_name_locator(file_index):
        return By.XPATH, f"./parent::span/parent::div/following-sibling::div/div/div/div[{file_index}]/div/following-sibling::div[1]"

    @staticmethod
    def delete_file_locator(file_index):
        return By.XPATH, f"./parent::span/parent::div/following-sibling::div/div/div/div[{file_index}]/div/following-sibling::div[3]/button"


