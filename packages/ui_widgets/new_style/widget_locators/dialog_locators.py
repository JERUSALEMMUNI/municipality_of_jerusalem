from selenium.webdriver.common.by import By


class DialogLocators:
    main_title = (By.XPATH, '//strong')
    picture = (By.XPATH, "//div[@class='p-mb-2']//*[name()='svg']")
    close_button = (By.XPATH, "//span[@class='p-dialog-header-close-icon ng-tns-c40-4 pi pi-times']")
    close_button_new = (By.XPATH, "//span[contains(@class, 'close-icon')]")