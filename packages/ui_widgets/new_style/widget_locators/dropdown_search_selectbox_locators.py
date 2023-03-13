from selenium.webdriver.common.by import By


class DropdownSearchSelectBoxLocators:
    error_msg = (By.XPATH, "./following-sibling::div/following-sibling::span")
    read_text_value = (By.XPATH, "./div/div/span")
    list = (By.XPATH, "//p-multiselect/following-sibling::div/div")
    wait_list = (By.XPATH, f"//p-multiselect/following-sibling::div/div")
    dropdown_open = (By.XPATH, "./div/div/input")
    element_visibility = (By.XPATH, f"//p-multiselect/div/div/div/div/input")
    element = (By.XPATH, "//p-multiselect//div[@role='checkbox']")
    all_elements = (By.XPATH, "//p-multiselect//ul/p-multiselectitem/li")
    clear_selected_items = (By.XPATH, f"//p-multiselect/div/div/div/div/input")
    element_clear = (By.XPATH, "//p-multiselect//div[@role='checkbox']")
    list_under_field = (By.XPATH, "//p-multiselect/following-sibling::div/div")




    @staticmethod
    def chosen_option(number):
        return By.XPATH, f"//p-multiselect/following-sibling::div/div[{number}]"

    @staticmethod
    def selected_option(option):
        return By.XPATH, f"//li[@aria-label='{option}']"

    @staticmethod
    def option_is_not_selected(option):
        return By.XPATH, f"//li[@aria-label='{option}']"

    @staticmethod
    def selected_options(label):
        return By.XPATH, f"//label[contains(text(),'{label}')]/following-sibling::p-multiselect"

    @staticmethod
    def click_value(text):
        return By.XPATH, f"(.//li/span[contains(text(),'{text}')]/parent::li)[1]"