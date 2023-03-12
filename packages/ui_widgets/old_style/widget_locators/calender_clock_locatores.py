from selenium.webdriver.common.by import By


class CalenderClockLocators:

    hour = (By.XPATH, "//div[starts-with(@class,'ui-hour-picker')]/a[1]/following-sibling::span[2]")
    minutes = (By.XPATH,  "//div[starts-with(@class,'ui-minute-picker')]/a[1]/following-sibling::span[2]")
    click_hours = (By.XPATH, "//div[starts-with(@class,'ui-hour-picker')]/a[1]")
    click_minutes = (By.XPATH, "//div[starts-with(@class,'ui-minute-picker')]/a[1]")
    click_months = (By.XPATH, "//a[starts-with(@class,'ui-datepicker-prev')]")
    active_day = (By.XPATH, "//a[contains(@class,'active')]")
    dialog = (By.XPATH, "//i[@class='fa fa-times-circle']")
    accept_alert = (By.XPATH, "//div[@class='generalBtn']")

