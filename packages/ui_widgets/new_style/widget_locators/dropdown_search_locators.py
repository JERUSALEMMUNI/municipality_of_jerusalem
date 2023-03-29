from selenium.webdriver.common.by import By


class DropdownSearchLocators:
    drop = (By.XPATH, ".//p-dropdownitem")
    item_search_scroll = (By.XPATH, "./..//cdk-virtual-scroll-viewport")
    get_search_result_if_empty = (By.XPATH, ".//li")
    error_msg = (By.XPATH, "./following-sibling::span")
    search_field = (By.XPATH, ".//div[contains(@class,'filter-container')]/input")

    @property
    def chosen_element(self):
        def _chosen_element(text):
            return By.XPATH, f"//li[@aria-label='{text}']"
        return _chosen_element
