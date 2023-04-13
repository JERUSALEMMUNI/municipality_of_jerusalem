from selenium.webdriver.common.by import By


class ApplicationStepsLocators:
    step_list = (By.XPATH, "li")

    @staticmethod
    def wait_current_page(step_name):
        return By.XPATH, f".//span[contains(text(),'{step_name}')]/../.."
