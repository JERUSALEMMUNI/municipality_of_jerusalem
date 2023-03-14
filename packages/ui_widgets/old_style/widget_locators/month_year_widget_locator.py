from selenium.webdriver.common.by import By


class MonthYearWidgetLocators:

    year = (By.XPATH, "//select[starts-with(@class,'ui-datepicker-year')]")
    month = (By.XPATH,  "//*[starts-with(@class,'ui-datepicker-month')]")
    active_day = (By.XPATH, "//a[contains(@class,'active')]")
    dialog = (By.XPATH, "//i[@class='fa fa-times-circle']")
    accept_alert = (By.XPATH, "//div[@class='generalBtn']")


    @staticmethod
    def valid_text(path, label):
        return By.XPATH, f"{path}//following-sibling::div/div[{label}]/div/div[2]"

    @staticmethod
    def remove_item(path, label):
        return By.XPATH, f"{path}//following-sibling::div/div[{label}]//button[@title='הסר']//i[@class='pi pi-times-circle']"

    @staticmethod
    def set_year(path, label):
        return By.XPATH, f"{path}//following-sibling::div/div[{label}]//p-dropdown[@formcontrolname='year']"

    @staticmethod
    def set_month(path, label):
        return By.XPATH, f"{path}//following-sibling::div/div[{label}]//p-multiselect[@formcontrolname='months']"

