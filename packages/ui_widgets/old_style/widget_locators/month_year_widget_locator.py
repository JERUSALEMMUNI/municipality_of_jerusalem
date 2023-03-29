from selenium.webdriver.common.by import By


class MonthYearWidgetLocators:

    year = (By.XPATH, "//select[starts-with(@class,'ui-datepicker-year')]")
    month = (By.XPATH,  "//*[starts-with(@class,'ui-datepicker-month')]")
    active_day = (By.XPATH, "//a[contains(@class,'active')]")
    dialog = (By.XPATH, "//i[@class='fa fa-times-circle']")
    accept_alert = (By.XPATH, "//div[@class='generalBtn']")


    @property
    def valid_text(self):
        def _valid_text(path, label):
            return By.XPATH, f"{path}//following-sibling::div/div[{label}]/div/div[2]"
        return _valid_text

    @property
    def remove_item(self):
        def _remove_item(path, label):
            return By.XPATH, f"{path}//following-sibling::div/div[{label}]//button[@title='הסר']//i[@class='pi pi-times-circle']"
        return _remove_item

    @property
    def set_year(self):
        def _set_year(path, label):
            return By.XPATH, f"{path}//following-sibling::div/div[{label}]//p-dropdown[@formcontrolname='year']"
        return _set_year


    @property
    def set_month(self):
        def _set_month(path, label):
            return By.XPATH, f"{path}//following-sibling::div/div[{label}]//p-multiselect[@formcontrolname='months']"
        return _set_month

