from selenium.webdriver.common.by import By


class CheckBoxLocator:
    error_msg = (By.XPATH, "./ancestor::div/following-sibling::span")
    valid_checker = (By.XPATH, "./../following-sibling::label | ./parent::div")

# //div[contains(@class,'p-checkbox p-component')]
