from selenium.webdriver.common.by import By


class HeaderLocators:
    title = (By.XPATH, '//div[contains(@class,"lib-header__title")]')
    logo = (By.XPATH, "//img[contains(@class,'lib-header__logo')]")
    name = (By.XPATH, "//following-sibling::div/div/h1")
    stepper = (By.XPATH, "./div/div/following-sibling::div/div/lib-stepper")
    explanation = (By.XPATH, "//div[contains(@class,'lib-header__form-explanation')]/div/div[1]")
    rules = (By.XPATH, "//div[contains(@class,'lib-header__form-explanation')]/div/div[2]")



    @staticmethod
    def language(language):
        if language == 'ar':
            return By.XPATH, f"//a[contains(text(),'العربية')]"
        else:
            return By.XPATH, f"//a[contains(text(),'עברית')]"


