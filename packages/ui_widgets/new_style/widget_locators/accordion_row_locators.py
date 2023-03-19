from selenium.webdriver.common.by import By


class AccordionRowLocators:
    tab = (By.XPATH, ".//a[@role='tab']")
    trash = (By.XPATH, ".//button[contains(@icon,'trash')]")
