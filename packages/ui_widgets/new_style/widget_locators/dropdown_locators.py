from selenium.webdriver.common.by import By


class DropdownLocators:
    dropDown_open = (By.XPATH, ".//input")
    dropDown_click = (By.XPATH, "./..//p-dropdown")
    item_search_scroll_element = (By.XPATH, "./..//ul")
    error_msg = (By.XPATH, "./following-sibling::span")
    select_item = (By.XPATH, "//ul//p-dropdownitem")
    list_items = (By.XPATH, ".//p-dropdownitem")

    @staticmethod
    def chosen_element(option_value):
        return By.XPATH, f"//li[@aria-label='{option_value}']"

    @staticmethod
    def select(pre):
        return By.XPATH, f"//li[@aria-label='{pre}']"

    # @staticmethod
    # def select_no_label_dropdown(label):
    #     return By.XPATH, f"//label[contains(text(),'{label}')]/../../../following-sibling::more-info-objection//p-dropdownitem"
