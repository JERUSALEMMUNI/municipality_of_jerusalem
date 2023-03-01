from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.application_steps_field import ApplicationStepsField
from ui_widgets.new_style.widget_locators.header_locators import HeaderLocators

log = logger.get_logger(__name__)


class HeaderField(BaseWidget):
    def __init__(self):
        super().__init__(self)
        self.page_number = ApplicationStepsField()

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//lib-core-header",
        }

    def get_header_title(self):
        header_title = self.web_element.find_element(*HeaderLocators.title)
        return header_title

    def validate_header_title_text(self, expected_title):
        log.debug(f'validate if Header tittle text is {expected_title}')
        return self.get_header_title().text == expected_title

    def validate_header_title_with_default(self):
        return self.get_header_title().text == 'שרותים דיגיטליים'

    def get_language_button(self, language='he'):
        return self.web_element.find_element(*HeaderLocators.language(language))

    def validate_header_language(self, language):
        log.debug(f'validate if {language} language in the header')
        header_language = self.get_language_button(language)
        return header_language.text == language

    def get_current_selected_language(self):
        hebrew_button = self.get_language_button()
        is_selected = hebrew_button.find_element(self.locator['By'], "//parent::li[contains(@class,'active')]")
        if 'active' in is_selected.get_attribute("class"):
            return 'he'
        return 'ar'

    def select_language(self, language='he'):
        button = self.get_language_button(language)
        button.click()

    def is_language_selected(self, language):
        lang = self.get_current_selected_language()
        if lang == language:
            return True
        return False

    def validate_is_languages_buttons_is_displayed(self):
        arabic_button_language = self.get_language_button('ar')
        hebrew_button_language = self.get_language_button('he')
        return arabic_button_language.is_displayed() and hebrew_button_language.is_displayed()

    def validate_header_logo(self):
        log.debug("validate if  Header logo is available")
        header_logo = self.web_element.find_element(*HeaderLocators.logo)
        return header_logo.is_displayed()

    def get_header_application_name(self):
        log.debug("Get Header Application name")
        application_name = self.web_element.find_element(*HeaderLocators.name)
        return application_name.text

    def validate_header_application_name(self, app_name):
        log.debug(f'validate if Application name is {app_name}')
        return self.get_header_application_name() == app_name

    def validate_header_steps(self):
        log.debug(f'validate if header pages number are available')
        steps = self.web_element.find_element(*HeaderLocators.stepper)
        return steps.is_displayed()

    def get_header_explanation(self):
        log.debug("Get Header explanation text")
        explanation = self.web_element.find_element(*HeaderLocators.explanation)
        return explanation

    def validate_header_explanation_text(self, text):
        return text in self.get_header_explanation().text

    def validate_header_explanation_is_displayed(self):
        log.debug(f'validate if header explanation is available')
        explanation = self.get_header_explanation()
        return explanation.is_displayed()

    def validate_header_explanation_contains_at_least_chars(self, number_of_chars):
        log.debug(f'validate if header explanation is available')
        explanation = self.get_header_explanation()
        return int(len(explanation.text)) > int(number_of_chars)

    def get_header_rules(self):
        log.debug("Get Header rules text")
        application_rules = self.web_element.find_element(*HeaderLocators.rules)
        return application_rules.text

    def validate_header_rules(self, rules):
        log.debug(f'validate if header rules is {rules}')
        return self.get_header_rules() == rules

    def init_widget(self):
        if self.page_number.get_web_element() is None:
            web_element = self.web_element.find_element(self.page_number.locator['By'],
                                                        self.page_number.locator['Value'])
            self.page_number.set_web_element(web_element)

    def get_current_pages_number(self):
        self.init_widget()
        return self.page_number.get_current_page_number()

    def validate_number_of_pages(self, expected_number):
        self.init_widget()
        return self.page_number.validate_number_of_pages(expected_number)

    def validate_current_page_number(self, number):
        self.init_widget()
        return self.page_number.validate_current_page_number(number)
