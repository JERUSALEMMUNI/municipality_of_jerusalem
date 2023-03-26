from selenium.webdriver.common.by import By


class DropdownLocators:
    dropDown_open = (By.XPATH, ".//input")
    item_search_scroll_element = (By.XPATH, "./..//ul")
    error_msg = (By.XPATH, "./following-sibling::span")

    @staticmethod
    def chosen_element(option_value):
        return By.XPATH, f"//li[@aria-label='{option_value}']"

    @staticmethod
    def select(pre):
        return By.XPATH, f"//li[@aria-label='{pre}']"
