from selenium.webdriver.common.by import By


class UploadFilesLocators:
    error_msg = (By.XPATH, "./../../../../following-sibling::div")
    list = (By.XPATH, "./../../following-sibling::div/div/following-sibling::div/div")
    warning_msg = (
    By.XPATH, "./../../following-sibling::div/p-messages/..//div/span[contains(@class,'p-message-summary')]")

    @staticmethod
    def check_file_size_locator(file_index):
        return By.XPATH, f"./../../following-sibling::div//following-sibling::div//following-sibling::div[{file_index}]//span[2]"

    @staticmethod
    def check_file_name_locator(file_index):
        return By.XPATH, f"./../../following-sibling::div//following-sibling::div//following-sibling::div[{file_index}]//span[1]"

    @staticmethod
    def delete_file_locator(file_index):
        return By.XPATH, f"./../../following-sibling::div//following-sibling::div//following-sibling::div[{file_index}]/button"
