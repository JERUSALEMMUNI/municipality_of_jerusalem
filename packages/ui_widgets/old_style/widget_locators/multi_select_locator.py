from selenium.webdriver.common.by import By


class MulltiSelectLocators:
    list = (By.XPATH, "//div[contains(@class,'ui-multiselect-items-wrapper')]/ul/p-multiselectitem"),
    select_all = (By.XPATH, "//div[contains(@class,'ui-widget-header')]//div[@role='checkbox']"),
    close = (By.XPATH, "//div[contains(@class,'ui-widget-header')]//a[contains(@class,'ui-multiselect-close')]")

