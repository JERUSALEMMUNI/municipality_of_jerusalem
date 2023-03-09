from selenium.webdriver.common.by import By


class DropdownSearchLocators:
    drop = (By.XPATH, "//p-dropdownitem")
    item_search_scroll = (By.XPATH, "//div//ul/cdk-virtual-scroll-viewport")
    write_in_search_field = (By.XPATH, f"//div/div/div/input")
    clear_search_field = (By.XPATH, f"//div/div/div/div/input")
    get_search_result_if_empty = (By.XPATH, f".//div/div/div//li")
    error_msg = (By.XPATH, "./following-sibling::span")

    @staticmethod
    def dropdown(label):
        return By.XPATH, f"//label[contains(text(),'{label}')]/following-sibling::p-dropdown//*/*/div/input[@type='text']"

    @staticmethod
    def chosen_element(text):
        return By.XPATH, f"//li[@aria-label='{text}']"


