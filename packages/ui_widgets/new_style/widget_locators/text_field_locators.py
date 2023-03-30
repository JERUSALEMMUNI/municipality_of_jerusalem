from selenium.webdriver.common.by import By


class TextFieldLocators:
    error_message_phone = None
    error_msg = (By.XPATH, "./following-sibling::div|./following-sibling::span")
    #Todo: i have commented out this locator and made the one bellow
    # err_num_msg = (By.XPATH, "./../../following-sibling::span")
    err_num_msg = (By.XPATH, "//../div")
    error_message = (By.XPATH, "./..//div/div")
    error_message_phone = (By.XPATH, "./following-sibling::div/following-sibling::div")
