from selenium.webdriver.common.by import By


class ButtonGroupLocators:
    error_msg = (By.XPATH, "./parent::div//div[@role='alert']")
    is_invalid = (By.XPATH, "./parent::div//p-selectbutton")
    list = (By.XPATH, "./parent::div//div[@role='group']/div[@role='button']")

    @property
    def get_item(self):
        def _get_item(selected_item):
            return By.XPATH, f"./parent::div//div[@role='group']/div[@aria-labelledby='{selected_item}']"
        return _get_item


