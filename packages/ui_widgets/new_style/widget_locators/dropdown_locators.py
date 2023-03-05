from selenium.webdriver.common.by import By


class DropdownLocators:
    dropDown_open = (By.XPATH, "(//p-dropdown/div/div)[2]")
    item_search_scroll_element = (By.XPATH, "//div/div/div/ul")
    read_text = (By.XPATH, "./div/span")
    check_if_open = (By.XPATH, "./div")

    @staticmethod
    def chosen_element(option_value):
        return By.XPATH, f"//li[@aria-label='{option_value}']"

    @staticmethod
    def select(pre):
        return By.XPATH, f"//li[@aria-label='{pre}']"

