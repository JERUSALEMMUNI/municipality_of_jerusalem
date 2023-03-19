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

    def validate_current_tab_is_not_expanded(self):
        return not self.validate_current_tab_is_expanded()

    def open_current_tab(self):
        if self.validate_current_tab_is_not_expanded():
            self.click_on_current_tab()
        return self.validate_current_tab_is_expanded()

    def close_current_tab(self):
        if self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        return self.validate_current_tab_is_not_expanded()

    def click_on_current_tab(self):
        self.get_current_tab().click()

    def get_current_tab_text(self):
        self.click_on_current_tab()
        return self.get_current_tab().text

    def removeItem(self):
        self.trash_button = self.create_widget('ButtonIcon', label='trash')
        element = self.web_element.find_element(*AccordionRowLocators.trash)
        self.set_widget_web_element(self.trash_button, element)
        if self.trash_button.is_clickable:
            self.trash_button.click_button()

    def set_text(self, label, text):
        self.open_current_tab()
        text_field = self.create_widget('TextField', label=label)
        element = self.web_element.find_element(text_field.locator['By'],'.'+text_field.locator['Value'])
        self.set_widget_web_element(text_field, element)
        text_field.set_text(text)

    def upload_file(self, label, file, driver):
        self.open_current_tab()
        upload = self.create_widget('UploadFile', label=label)
        element = self.web_element.find_element(upload.locator['By'],'.'+upload.locator['Value'])
        # element = self.web_element.find_element(*AccordionRowLocators.get_field_from_locator(label))
        self.set_widget_web_element(upload, element)
        upload.upload_file(file, driver)

    def choose_item(self, label, txt):
        self.open_current_tab()
        select = self.create_widget('DropdownSearch', label=label)
        element = self.web_element.find_element(select.locator['By'],'.'+select.locator['Value'])
        self.set_widget_web_element(select, element)
        select.search_element(txt)

    def validate_text_is_valid(self, label):
        self.open_current_tab()
        text_field = self.create_widget('TextField', label=label)
        element = self.web_element.find_element(text_field.locator['By'],'.'+text_field.locator['Value'])
        self.set_widget_web_element(text_field, element)
        return text_field.is_valid

    def validate_text_is_invalid(self, label):
        self.open_current_tab()
        text_field = self.create_widget('TextField', label=label)
        element = self.web_element.find_element(text_field.locator['By'],'.'+text_field.locator['Value'])
        self.set_widget_web_element(text_field, element)
        return text_field.is_invalid

    def validate_error_message(self, label, error_expectation):
        self.open_current_tab()
        text_field = self.create_widget('TextField', label=label)
        element = self.web_element.find_element(text_field.locator['By'],'.'+text_field.locator['Value'])
        self.set_widget_web_element(text_field, element)
        return text_field.validate_error_message(error_expectation)

    def set_time_text(self, label, text):
        self.open_current_tab()
        time_field = self.create_widget('TimeField', label=label)
        element = self.web_element.find_element(time_field.locator['By'],'.'+time_field.locator['Value'])
        self.set_widget_web_element(time_field, element)
        time_field.set_text(text)

    def select_time(self, label, text):
        self.open_current_tab()
        time_field = self.create_widget('TimeField', label=label)
        element = self.web_element.find_element(time_field.locator['By'],'.'+time_field.locator['Value'])
        self.set_widget_web_element(time_field, element)
        time_field.select_time(text)

    def choose_button_from_value(self, label, value_name):
        self.open_current_tab()
        big_button = self.create_widget('ButtonGroup', label=label)
        element = self.web_element.find_element(big_button.locator['By'],'.'+big_button.locator['Value'])
        self.set_widget_web_element(big_button, element)
        big_button.choose_value(value_name)

    def is_value_button_chosen(self, label, value_name):
        self.open_current_tab()
        big_button = self.create_widget('ButtonGroup', label=label)
        element = self.web_element.find_element(big_button.locator['By'],'.'+big_button.locator['Value'])
        self.set_widget_web_element(big_button, element)
        return big_button.is_chosen(value_name)

    def is_button_valid(self, label):
        self.open_current_tab()
        big_button = self.create_widget('ButtonGroup', label=label)
        element = self.web_element.find_element(big_button.locator['By'],'.'+big_button.locator['Value'])
        self.set_widget_web_element(big_button, element)
        return big_button.is_valid
