from selenium.webdriver.common.by import By


class UploadFilesLocators:
    error_msg = (By.XPATH,
                 "./ancestor::div/parent::core-file-upload/parent::div/following-sibling::span")

    list = (By.XPATH, "./../../following-sibling::div")
    warning_msg = (
        By.XPATH, "./../../following-sibling::div/p-messages//ul/..//span[contains(@class,'ui-messages-summary')]")

    @staticmethod
    def check_file_size_locator(file_index):
        return By.XPATH, f"./ancestor::div/following-sibling::div//div[{file_index}]/following-sibling::div[2]"

    @staticmethod
    def check_file_name_locator(file_index):
        return By.XPATH, f"./ancestor::div/following-sibling::div//div[{file_index}]/following-sibling::div[1]"

    @staticmethod
    def delete_file_locator(file_index):
        return By.XPATH, f"./ancestor::div/following-sibling::div//div[{file_index}]/following-sibling::div[3]/button"
