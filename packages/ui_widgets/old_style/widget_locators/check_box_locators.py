from selenium.webdriver.common.by import By


class CheckBoxLocator:
    error_msg = (By.XPATH, "./parent::div/parent::p-checkbox/parent::div/following-sibling::span")
    valid_checker = (By.XPATH, "./parent::div/parent::p-checkbox")

