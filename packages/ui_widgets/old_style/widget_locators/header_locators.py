from selenium.webdriver.common.by import By


class HeaderLocators:
    title = (By.XPATH, "//nav//div//span")
    logo = (By.XPATH, "//img[@class='desktop-logo']")
    name = (By.XPATH, "//div[@class='form-title']//h1")
    status = (By.XPATH, "//div[@class='form-status']/div[1]")
    date = (By.XPATH, "//div[@class='form-status']/div[2]")
    explanation = (By.XPATH, "//div[contains(@class,'explain')]")
    explanation_title = (By.XPATH, "//div[contains(@class,'explain')]/div[1]")
    explanation_text = (By.XPATH, "//div[contains(@class,'explain')]/div[2]")
    save_dialog = (By.XPATH,"//div[@class='alert-dialog ng-tns-c36-2']")
    save_dialog_text = (By.XPATH,"//div[@class='alert-body']")
    save_dialog_continue_button = (By.XPATH,"//div[@class='generalBtn']")

