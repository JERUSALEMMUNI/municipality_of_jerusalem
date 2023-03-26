from selenium.webdriver.common.by import By


class DropdownSearchSelectBoxLocators:
    error_msg = (By.XPATH, "./../span")
    read_text_value = (By.XPATH, "./..//span[contains(@class,'label')]")
    list = (By.XPATH, "./following-sibling::div/div")
    dropdown_open = (By.XPATH, ".//input")
    element_visibility = (By.XPATH, "./..//input[@role='textbox']")
    element = (By.XPATH, ".//div[@role='checkbox']")
    all_elements = (By.XPATH, "./..//li")
    element_clear = (By.XPATH, ".//div[@role='checkbox']")




    @property
    def chosen_option(number):
        return (By.XPATH, f"./following-sibling::div/div[{number}]")

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
