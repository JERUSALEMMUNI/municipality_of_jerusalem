from selenium.webdriver.common.by import By


class RadioButtonLocators:
    error_msg = (By.XPATH, "./following-sibling::span")
    is_invalid = (By.XPATH, "./p-radiobutton")
    list = (By.XPATH, "./p-radiobutton/label")

    @staticmethod
    def get_item(selected_item):
        return By.XPATH, f"./p-radiobutton//label[contains(text(),'{selected_item}')]"
