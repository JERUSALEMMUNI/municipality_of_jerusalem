from selenium.webdriver.common.by import By


class UploadFilesLocators:
    error_msg = (By.XPATH, ".//span[@role='alert']")
    list = (By.XPATH, ".//div[contains(@class,'ui-fileupload-content')]")
    is_invalid = (By.XPATH, f"./ancestor::core-file-upload//p-messages[not(div)]")
    is_valid = (By.XPATH, f"./ancestor::core-file-upload//div[contains(@class,'ui-fileupload-row ng-star-inserted')]")

    @property
    def check_file_size_locator(self):
        def _check_file_size_locator(file_index):
            return By.XPATH, f".//div[contains(@class,'ui-fileupload-row ng-star-inserted')][{file_index}]/div[3]"
        return _check_file_size_locator

    @property
    def check_file_name_locator(self):
        def _check_file_name_locator(file_index):
            return By.XPATH, f".//div[contains(@class,'ui-fileupload-row ng-star-inserted')][{file_index}]/div[2]"
        return _check_file_name_locator


    @property
    def delete_file_locator(file_index):
        def _delete_file_locator(file_index):
            return By.XPATH, f".//div[contains(@class,'ui-fileupload-row ng-star-inserted')][{file_index}]/div[4]/button"
        return _delete_file_locator
