from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class Header_field(BaseWidget):
    def __init__(self, label):
        super().__init__(label)

    @property
    def get_text(self):
        return self.web_element.text

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//lib-core-header"
        }

    def get_header_tittle(self):
        log.debug("Get Header tittle text")
        header_tittle = self.web_element.find_element(by=By.XPATH, value=f"./div/div/div/nav/div/div")
        return header_tittle.text

    def check_header_tittle(self, expected_tittle):
        log.debug(f'Check if Header tittle text is {expected_tittle}')
        return self.get_header_tittle() == expected_tittle

    def check_header_language(self, language):
        log.debug(f'Check if {language} language in the header')
        header_language = self.web_element.find_element(by=By.XPATH, value=f"./div/div/div/nav/div/ul/li/a[contains(text(),'{language}')]")
        return header_language.text == language

    def change_page_language(self, language):
        log.debug(f'Change page language to {language}')
        header_language = self.web_element.find_element(by=By.XPATH, value=f"./div/div/div/nav/div/ul/li/a[contains(text(),'{language}')]")
        header_language.click()

    def check_header_picture(self):
        log.debug("Check if  Header picture is available")
        header_logo = self.web_element.find_element(by=By.XPATH, value=f"./div/div/div/nav/div/following-sibling::a")
        return header_logo.is_displayed()

    def check_header_application_name(self, app_name):
        log.debug(f'Check if Application name is {app_name}')
        return self.get_header_application_name() == app_name

    def get_header_application_name(self):
        log.debug("Get Header Application name")
        application_name = self.web_element.find_element(by=By.XPATH, value=f"./div/div/following-sibling::div/div/h1")
        return application_name.text

    def check_header_steps(self):
        log.debug(f'Check if header pages number are available')
        steps = self.web_element.find_element(by=By.XPATH, value=f"./div/div/following-sibling::div/div/lib-stepper")
        return steps.is_displayed()

    def check_header_explanation(self):
        log.debug(f'Check if header explanation is available')
        explanation = self.web_element.find_element(by=By.XPATH, value=f"./div/div/following-sibling::div/following-sibling::div/div/div")
        return explanation.is_displayed()

    def get_header_explanation(self):
        log.debug("Get Header explanation text")
        explanation = self.web_element.find_element(by=By.XPATH, value=f"./div/div/following-sibling::div/following-sibling::div/div/div")
        return explanation.text

    def check_header_rules(self, rules):
        log.debug(f'Check if header rules is {rules}')
        return self.get_header_rules() == rules

    def get_header_rules(self):
        log.debug("Get Header rules text")
        application_rules = self.web_element.find_element(by=By.XPATH, value=f"./div/div/following-sibling::div/following-sibling::div/div/div/following-sibling::div")
        return application_rules.text

    def is_language_selected(self, language):
        lang = self.web_element.find_element(by=By.XPATH, value=f"./div/div/div/nav/div/ul/li[{language}]")

        if lang.text == "עברית" and "active" in lang.get_attribute('class') or None:
            return True
        elif lang.text == "العربية" and "active" in lang.get_attribute('class'):
            return True
        else:
            return False






