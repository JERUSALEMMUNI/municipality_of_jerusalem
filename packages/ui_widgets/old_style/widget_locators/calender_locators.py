from selenium.webdriver.common.by import By


class CalenderLocators:

    year = (By.XPATH, "//select[contains(@class,'datepicker-year')]")
    month = (By.XPATH,  "//select[contains(@class,'datepicker-month')]")
    active_day = (By.XPATH, "//a[contains(@class,'active')]")
    dialog = (By.XPATH, "//i[@class='fa fa-times-circle']")
    accept_alert = (By.XPATH, "//div[@class='generalBtn']")
    error_msg = (By.XPATH, "./parent::span/parent::p-calendar/following-sibling::span")
    valid_checker = (By.XPATH, "./parent::span/parent::p-calendar")

    @staticmethod
    def day(day):
        """
        to support two caleder fields old and new
        """
        return By.XPATH, f"//a[text()='{day}']|//span[text()='{day}']"

