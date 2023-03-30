from selenium.webdriver.common.by import By


class DropdownSearchSelectBoxLocators:
    multi = "/following-sibling::p-multiselect"
    error_msg = (By.XPATH, "./../span")
    read_text_value = (By.XPATH, "./..//span[contains(@class,'label')]")
    list = (By.XPATH, "./following-sibling::div/div")
    dropdown_open = (By.XPATH, ".//input")
    element_visibility = (By.XPATH, "./..//input[@role='textbox']")
    element = (By.XPATH, ".//div[@role='checkbox']")
    all_elements = (By.XPATH, "./..//li")
    element_clear = (By.XPATH, ".//div[@role='checkbox']")
    check_list_open = (By.XPATH, "//div[contains(@class,'ui-multiselect-items')]")


    @property
    def chosen_option(self):
        def _chosen_option(number):
            return By.XPATH, f"./following-sibling::div/div[{number}]"
        return _chosen_option

    @property
    def selected_option(self):
        def _selected_option(option):
            return By.XPATH, f"//li[@aria-label='{option}']"
        return _selected_option


    @property
    def selected_options(self):
        def _selected_options(label):
            return By.XPATH, f"//label[contains(text(),'{label}')]/following-sibling::p-multiselect"
        return _selected_options

    @property
    def click_value(self):
        def _click_value(text):
            return By.XPATH, f"(.//li/span[contains(text(),'{text}')]/parent::li)[1]"
        return _click_value

