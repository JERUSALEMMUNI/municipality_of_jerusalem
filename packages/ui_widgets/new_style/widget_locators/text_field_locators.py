from selenium.webdriver.common.by import By


class TextFieldLocators:
    error_msg = (By.XPATH, "./following-sibling::div|./following-sibling::span")
    err_num_msg = (By.XPATH, "./../../following-sibling::span")
