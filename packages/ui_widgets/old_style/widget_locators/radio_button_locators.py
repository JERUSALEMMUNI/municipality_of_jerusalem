from selenium.webdriver.common.by import By


class RadioButtonLocators:
    error_msg = (By.XPATH, "./parent::p-radiobutton/parent::div/following-sibling::span")


    @staticmethod
    def language(language):
        return By.XPATH, f"./div/div/div/nav/div/ul/li/a[contains(text(),'{language}')]"

