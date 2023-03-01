from selenium.webdriver.common.by import By


class CalenderLocators:

    year = (By.XPATH, "//select[starts-with(@class,'ui-datepicker-year')]")
    month = (By.XPATH,  "//*[starts-with(@class,'ui-datepicker-month')]")
    active_day = (By.XPATH, "//a[contains(@class,'active')]")
    dialog = (By.XPATH, "//i[@class='fa fa-times-circle']")
    accept_alert = (By.XPATH, "//div[@class='generalBtn']")


    @staticmethod
    def language(language):
        return By.XPATH, f"./div/div/div/nav/div/ul/li/a[contains(text(),'{language}')]"

