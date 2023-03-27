from selenium.webdriver.common.by import By


class UploadFilesLocators:
    error_msg = (By.XPATH, ".//span[@role='alert']")
    list = (By.XPATH, ".//div[contains(@class,'ui-fileupload-content')]")
    is_invalid = (By.XPATH, f"./ancestor::core-file-upload//p-messages[not(div)]")
    is_valid = (By.XPATH, f"./ancestor::core-file-upload//div[contains(@class,'ui-fileupload-row ng-star-inserted')]")

    @staticmethod
    def check_file_size_locator(file_index):
        return By.XPATH, f".//div[contains(@class,'ui-fileupload-row ng-star-inserted')][{file_index}]/div[3]"

    @staticmethod
    def check_file_name_locator(file_index):
        return By.XPATH, f".//div[contains(@class,'ui-fileupload-row ng-star-inserted')][{file_index}]/div[2]"

    @staticmethod
    def delete_file_locator(file_index):
        return By.XPATH, f".//div[contains(@class,'ui-fileupload-row ng-star-inserted')][{file_index}]/div[4]/button"
