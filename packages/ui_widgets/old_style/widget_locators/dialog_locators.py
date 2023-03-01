from selenium.webdriver.common.by import By


class DialogLocators:
    text = (By.XPATH, "//div[contains(@class,'ui-dialog-content')]")
    close_button = (By.XPATH, "//a[contains(@class, 'close')]")

