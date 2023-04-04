from selenium.webdriver.common.by import By


class UploadFilesLocators:
    error_msg = (By.XPATH, ".//div[contains(@class,'field-errors')]")
    error_window_msg_part1 = (By.XPATH, ".//span[contains(@class, 'p-message-summary')]")
    error_window_msg_part2 = (By.XPATH, ".//span[contains(@class, 'p-message-detail')]")
    list = (By.XPATH, ".//div[contains(@class,'files-group__title')]")
    upload_file = (By.XPATH, ".//input")
    is_invalid = (By.XPATH, "./ancestor::lib-file-upload")
    is_valid = (By.XPATH, "./ancestor::lib-file-upload")
    wrong_file = (By.XPATH, ".//p-messages//button")
    right_file = (By.XPATH, ".//p-progressbar")
    files_name_list = (By.XPATH, f".//div[contains(@class,'file-row')]//span[1]")

    @property
    def check_file_size_locator(self):
        def _check_file_size_locator(file_index):
            return By.XPATH, f".//div[contains(@class,'file-row')][{file_index}]//span[contains(@class,'p-mr-3')][2]"
        return _check_file_size_locator

    @property
    def check_file_name_locator(self):
        def _check_file_name_locator(file_index):
            return By.XPATH, f".//div[contains(@class,'file-row')][{file_index}]//span[contains(@class,'p-mr-3')][1]"
        return _check_file_name_locator


    @property
    def delete_file_locator(self):
        def _delete_file_locator(file_index):
            return By.XPATH, f".//div[contains(@class,'file-row')][{file_index}]//button"
        return _delete_file_locator

    @property
    def delete_file_by_name_locator(self):
        def _delete_file_by_name_locator(file_name):
            return By.XPATH, f".//span[contains(text(), '{file_name}')]/../following-sibling::button"

        return _delete_file_by_name_locator


