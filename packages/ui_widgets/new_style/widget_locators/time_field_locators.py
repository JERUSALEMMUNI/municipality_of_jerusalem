from selenium.webdriver.common.by import By


class TimeFieldLocators:
    parent_element = (By.XPATH, "./parent::div/p-calendar")
    alert_text = (By.XPATH, "/parent::div/div[@role='alert']")
    text_input = (By.XPATH, ".//parent::div//input")