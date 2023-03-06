from selenium.webdriver.common.by import By


class PhoneFieldLocators:
    drop_down = (By.XPATH, "following-sibling::div//p-dropdown")
    text_element = (By.XPATH, "following-sibling::div/input")