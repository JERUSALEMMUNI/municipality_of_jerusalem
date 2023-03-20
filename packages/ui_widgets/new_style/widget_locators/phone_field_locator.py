from selenium.webdriver.common.by import By


class PhoneFieldLocators:
    drop_down = (By.XPATH, "following-sibling::div//p-dropdown")
    text_element = (By.XPATH, "following-sibling::div/input")
    error_msg = (By.XPATH, "./following-sibling::div/following-sibling::span | "
                           "./following-sibling::div/following-sibling::div ")
