from selenium.webdriver.common.by import By


class TimePickerWidgetLocator:

    hour_text = (By.XPATH, "//div[contains(@class,'p-hour-picker')]/span")
    minute_text = (By.XPATH,  "//div[contains(@class,'p-minute-picker')]/span")
    up_arrow_hour_button = (By.XPATH, "//div[contains(@class,'p-hour-picker')]/button[1]")
    up_arrow_minutes_button = (By.XPATH, "//div[contains(@class,'p-minute-picker')]/button[1]")

