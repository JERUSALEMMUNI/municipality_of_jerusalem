from selenium.webdriver.common.by import By


class RadioButtonLocators:
    error_msg = (By.XPATH, "./parent::p-radiobutton/parent::div/following-sibling::span")
    is_invalid = (By.XPATH, "./parent::p-radiobutton")

