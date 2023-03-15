from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.accordion_row_locators import AccordionRowLocators

log = logger.get_logger(__name__)


class AccordionRow(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//following-sibling::div//p-accordiontab[{self.label}]"
        }

    def get_current_tab(self):
        return self.web_element.find_element(*AccordionRowLocators.tab)

    def validate_current_tab_is_expanded(self):
        tab = self.get_current_tab()
        return tab.get_attribute('aria-expanded') == 'true'

    def click_on_current_tab(self):
        self.get_current_tab().click()

    def get_current_tab_text(self):
        self.click_on_current_tab()
        return self.get_current_tab().text

    def removeItem(self):
        self.trash_button = self.create_widget('ButtonIcon', label='trash')
        element = self.web_element.find_element(*AccordionRowLocators.trash)
        self.set_widget_web_element(self.trash_button, element)
        self.trash_button.click_button()

    def set_text(self, label, text):
        if not self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        text_field = self.create_widget('TextField', label=label)
        element = self.web_element.find_element(*AccordionRowLocators.get_field_from_locator(label))
        self.set_widget_web_element(text_field, element)
        text_field.set_text(text)

    def set_time_text(self, label, text):
        if not self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        time_field = self.create_widget('TimeField', label=label)
        element = self.web_element.find_element(*AccordionRowLocators.get_field_from_locator(label))
        self.set_widget_web_element(time_field, element)
        time_field.set_text(text)

    def select_time(self, label, text):
        if not self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        time_field = self.create_widget('TimeField', label=label)
        element = self.web_element.find_element(*AccordionRowLocators.get_field_from_locator(label))
        self.set_widget_web_element(time_field, element)
        time_field.select_time(text)

    def choose_button_from_value(self, label, value_name):
        if not self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        big_button = self.create_widget('BigButtonField', label=label)
        element = self.web_element.find_element(*AccordionRowLocators.get_field_from_locator(label))
        self.set_widget_web_element(big_button, element)
        big_button.choose_value(value_name)

    def is_value_button_chosen(self, label, value_name):
        if not self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        big_button = self.create_widget('BigButtonField', label=label)
        element = self.web_element.find_element(*AccordionRowLocators.get_field_from_locator(label))
        self.set_widget_web_element(big_button, element)
        return big_button.is_chosen(value_name)

    def is_button_valid(self, label):
        if not self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        big_button = self.create_widget('BigButtonField', label=label)
        element = self.web_element.find_element(*AccordionRowLocators.get_field_from_locator(label))
        self.set_widget_web_element(big_button, element)
        return big_button.is_valid
