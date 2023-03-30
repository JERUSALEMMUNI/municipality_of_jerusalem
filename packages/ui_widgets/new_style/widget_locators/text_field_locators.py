from selenium.webdriver.common.by import By


class TextFieldLocators:
    error_msg = (By.XPATH, "./following-sibling::div|./following-sibling::span")
    err_num_msg = (By.XPATH, "./../../following-sibling::div")
    err_num_date = (By.XPATH, "./parent::p-inputmask/following-sibling::div")
    error_message = (By.XPATH, "./..//div")
    error_message_phone = (By.XPATH, "./following-sibling::div/following-sibling::div")
    date = (By.XPATH, "./parent::p-inputmask")
    number = (By.XPATH, "./parent::*/parent::p-inputnumber")
    text_input = "parent::div//input"
