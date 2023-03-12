from selenium.webdriver.common.by import By


class CalenderLocators:

    year = (By.XPATH, "//select[starts-with(@class,'ui-datepicker-year')]")
    month = (By.XPATH,  "//*[starts-with(@class,'ui-datepicker-month')]")
    active_day = (By.XPATH, "//a[contains(@class,'active')]")
    dialog = (By.XPATH, "//i[@class='fa fa-times-circle']")
    accept_alert = (By.XPATH, "//div[@class='generalBtn']")
    error_msg = (By.XPATH, "./parent::span/parent::p-calendar/following-sibling::span")
    valid_checker = (By.XPATH, "./parent::span/parent::p-calendar")

    @staticmethod
    def day(day):
        return By.XPATH, f"//a[text()='{day}']"

