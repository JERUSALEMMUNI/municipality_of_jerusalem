from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.application_steps_field import ApplicationStepsField
from ui_widgets.new_style.widget_locators.header_locators import HeaderLocators

log = logger.get_logger(__name__)


class HeaderField(BaseWidget):
    def __init__(self,index):
        super().__init__(self,index)
        self.form_number = ApplicationStepsField(index)
        self.main_title = 'שרותים דיגיטליים'

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//lib-core-header",
        }

    def get_header_title(self):
        """
        :return:web element of header title
        """
        log.info("getting header title")
        header_title = self.web_element.find_element(*HeaderLocators.title)
        return header_title

    def validate_header_title_text(self, expected_title: str) -> bool:
        """
        :param expected_title: use it to validate header title
        :return: bool if expected title same as header title
        """
        log.debug(f'validate if Header tittle text is {expected_title}')
        log.info('validate if header title is equals the expected title')
        return self.get_header_title().text == expected_title

    def validate_header_title_with_default(self) -> bool:
        """
        :return: bool if header title is the default title
        """
        log.info("validating if header title is the default title")
        return self.get_header_title().text == self.main_title

    def get_language_button(self, language='he'):
        """
        :return: web element of button language
        """
        log.info("get language button as web element")
        return self.web_element.find_element(*HeaderLocators.language(language))

    def validate_header_language_button_is_displayed(self, language: str) -> bool:
        """
        :return: bool if language button is displayed on header or not
        """
        log.debug(f'validate if {language} language button in the header')
        header_language = self.get_language_button(language)
        return header_language.is_displayed()

    def get_current_selected_language(self) -> str:
        """
        :return: return selected language as ar for arabic and he for hebrew
        """
        log.info("getting current selected language of the form")
        hebrew_button = self.get_language_button()
        is_selected = hebrew_button.find_element(*HeaderLocators.language_parent)
        if 'active' in is_selected.get_attribute("class"):
            return 'he'
        return 'ar'

    def select_language(self, language='he'):
        """
        :language: select this language
        :return: clicking on language button
        """
        log.info("select language by clicking language button")
        log.debug(f"clicking on language button {language}")
        button = self.get_language_button(language)
        button.click()

    def validate_language_is_selected(self, language: str) -> bool:
        """
        :language:
        :return: return boolean
        """
        log.info("check if language is selected")
        log.debug(f"check if language {language} is selected")
        lang = self.get_current_selected_language()
        if lang == language:
            return True
        return False

    def validate_is_languages_buttons_is_displayed(self) -> bool:
        """
        :return: if both language buttons are displayed
        """
        log.info("check if both language button are displayed")
        arabic_button_language = self.get_language_button('ar')
        hebrew_button_language = self.get_language_button('he')
        return arabic_button_language.is_displayed() and hebrew_button_language.is_displayed()

    def validate_header_logo(self) -> bool:
        """
        :return: bool if logo is displayed
        """
        log.debug("validate if  Header logo is available")
        header_logo = self.web_element.find_element(*HeaderLocators.logo)
        return header_logo.is_displayed()

    def get_header_application_name(self) -> str:
        """
        :return: header application name
        """
        log.debug("Get Header Application name")
        application_name = self.web_element.find_element(*HeaderLocators.name)
        return application_name.text

    def validate_header_application_name(self, app_name):
        """
        :param app_name: form application name
        :return: bool validate of application name is same as app name
        """
        log.info("validating form application name")
        log.debug(f'validate if Application name is {app_name}')
        return self.get_header_application_name() == app_name

    def validate_header_steps(self) -> bool:
        """
        :return: validate if header from steps is displayed
        """
        log.debug(f'validate if header pages number are available')
        steps = self.web_element.find_element(*HeaderLocators.stepper)
        return steps.is_displayed()

    def get_header_explanation(self):
        """
        :return: explanation web element
        """
        log.info("Get Header explanation text as web element")
        explanation = self.web_element.find_element(*HeaderLocators.explanation)
        return explanation

    def validate_header_explanation_text(self, text:str) -> bool:
        """
        :param text: used to check if it in explanation text
        :return: bool in text in the explanation text
        """
        log.info("validate if text is in explanation text")
        log.debug(f"validate if text {text} is in header explanation text")
        return text in self.get_header_explanation().text

    def validate_header_explanation_is_displayed(self) -> bool:
        """
        :return: bool if header explanation text is displayed
        """
        log.debug('validate if header explanation is available')
        explanation = self.get_header_explanation()
        return explanation.is_displayed()

    def validate_header_explanation_contains_at_least_chars(self, number_of_chars:int) -> bool:
        """
        :number_of_chars: number of chars that at least should be in explanation text
        :return:
        """
        log.info('validate if header explanation have at least a number of chars')	
        log.debug(f'validate if header explanation have at least a {number_of_chars}')
        explanation = self.get_header_explanation()
        return len(explanation.text) > number_of_chars

    def get_header_rules(self):
        """
        :return: return header rule that its in the explanation field but in red color
        """
        log.info("Get Header rules text as web element")
        application_rules = self.web_element.find_element(*HeaderLocators.rules)
        return application_rules

    def validate_header_rules(self, rules:str) -> bool:
        """
        :rules: input text used for validations
        :return: return bool when rules equal to input text
        """
        log.debug(f'validate if header rules is {rules}')
        log.info("validating if rules text same as the input text")
        return self.get_header_rules().text == rules

    def init_widget(self):
        """
        used to initialise the web element of  widgets that are part of the header widget
        """
        if self.form_number.get_web_element() is None:
            web_element = self.web_element.find_element(self.form_number.locator['By'],
                                                        self.form_number.locator['Value'])
            self.form_number.set_web_element(web_element)

    def validate_total_number_of_forms(self, expected_number):
        """
        :param expected_number: expected number of forms
        :return: bool if number of forms same as expected
        """
        log.debug(f"validate if total number of forms same as {expected_number}")
        log.info("validate if total number of forms is same as the expected number")
        return self.form_number.validate_number_of_forms(expected_number)

    def validate_current_step_number(self, number):
        """
        :param number: expected form number
        :return: bool is expected form number is same as the current form we are in
        """
        log.debug(f"validate if current form we are in is same  as {number}")
        log.info("validate if current form we are in is same as expected number")
        return self.form_number.validate_current_step_number(number)
