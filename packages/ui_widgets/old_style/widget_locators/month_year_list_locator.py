from selenium.webdriver.common.by import By


class MonthYearListLocators:
    list = (By.XPATH, "following-sibling::div/div")
    error_msg = (By.XPATH, "./following-sibling::div/div[1]/div/div/following-sibling::div")

