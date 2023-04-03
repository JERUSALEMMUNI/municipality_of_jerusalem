from selenium.webdriver.common.by import By


class AccordionTableLocators:
    tab_list = (By.XPATH, "//div[contains(@role,'tablist')]/p-accordiontab")
    base = (By.XPATH, "./ancestor::div/div[@class='step-title']")
    table_list = (By.XPATH, "./..//p-accordion/parent::*")
    button_icon_plus = (By.XPATH, ".//button[contains(@icon,'plus')]")
