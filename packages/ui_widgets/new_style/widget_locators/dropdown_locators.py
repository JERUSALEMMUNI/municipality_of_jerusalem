from selenium.webdriver.common.by import By


class DropdownLocators:
    dropDown = "/..//p-dropdown"
    dropDown_open = (By.XPATH, ".//input")
    dropDown_click = (By.XPATH, "./..//p-dropdown")
    item_search_scroll_element = (By.XPATH, "./..//ul")
    error_msg = (By.XPATH, "./following-sibling::span")
    select_item = (By.XPATH, "//ul//p-dropdownitem")
    list_items = (By.XPATH, ".//p-dropdownitem")
    close = (By.XPATH, ".//..//input")
    no_label = "/../../../following-sibling::more-info-objection//p-dropdownitem"

    @property
    def select(self):
        def _select(pre):
            return By.XPATH, f"//li[@aria-label='{pre}']"

        return _select
