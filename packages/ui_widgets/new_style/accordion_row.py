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
            'Value': f".//p-accordiontab[{self.label}]"
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

    def make_element_ready_to_action(self, widget_type, label):
        self.open_current_tab()
        widget = self.create_widget(widget_type, label=label)
        element = self.web_element.find_element(widget.locator['By'], '.' + widget.locator['Value'])
        self.set_widget_web_element(widget, element)
        return widget

    def removeItem(self):
        self.trash_button = self.create_widget('ButtonIcon', label='trash')
        element = self.web_element.find_element(*AccordionRowLocators.trash)
        self.set_widget_web_element(self.trash_button, element)
        if self.trash_button.is_clickable:
            self.trash_button.click_button()

    def set_text_field(self, label, text):
        text_field = self.make_element_ready_to_action('TextField', label)
        text_field.set_text(text)

    def set_textarea_field(self, label, text):
        textarea_field = self.make_element_ready_to_action('TextArea', label)
        textarea_field.set_text(text)

    def upload_file(self, label, file):
        upload = self.make_element_ready_to_action('UploadFile', label)
        upload.upload_file(file)

    def is_invalid(self, label):
        upload = self.make_element_ready_to_action('UploadFile', label)
        return upload.is_invalid

    def is_valid(self, label):
        upload = self.make_element_ready_to_action('UploadFile', label)
        return upload.is_valid

    def validate_warning_message(self, label):
        upload = self.make_element_ready_to_action('UploadFile', label)
        return upload.validate_warning_message()

    def choose_item(self, label, txt):
        select = self.make_element_ready_to_action('DropdownSearch', label)
        select.search_and_pick_first_element_and_validate(txt)

    def validate_text_is_valid(self, label):
        text_field = self.make_element_ready_to_action('TextField', label)
        return text_field.is_valid

    def validate_text_is_invalid(self, label):
        text_field = self.make_element_ready_to_action('TextField', label)
        return text_field.is_invalid

    def validate_textarea_is_valid(self, label):
        textarea_field = self.make_element_ready_to_action('TextArea', label)
        return textarea_field.is_valid

    def validate_textarea_is_invalid(self, label):
        textarea_field = self.make_element_ready_to_action('TextArea', label)
        return textarea_field.is_invalid

    def validate_text(self,label, text):
        text_field = self.make_element_ready_to_action('TextField', label)
        return text_field.validate_text(text)


    def validate_error_message(self, label, error_expectation):
        text_field = self.make_element_ready_to_action('TextField', label)
        return text_field.validate_error_message(error_expectation)

    def set_time_text(self, label, text):
        time_field = self.make_element_ready_to_action('TimeField', label)
        time_field.set_text(text)

    def select_time(self, label, text):
        time_field = self.make_element_ready_to_action('TimeField', label)
        time_field.select_time(text)

    def choose_button_from_value(self, label, value_name):
        big_button = self.make_element_ready_to_action('ButtonGroup', label)
        big_button.choose_value(value_name)

    def is_value_button_chosen(self, label, value_name):
        big_button = self.make_element_ready_to_action('ButtonGroup', label)
        return big_button.is_chosen(value_name)

    def is_button_valid(self, label):
        big_button = self.make_element_ready_to_action('ButtonGroup', label)
        return big_button.is_valid

    def check_file_name(self, label, file_name_index, file_name):
        upload = self.make_element_ready_to_action('UploadFile', label)
        return upload.check_file_name(file_name_index, file_name)

    def check_file_size(self, label, file_size_index):
        upload = self.make_element_ready_to_action('UploadFile', label)
        return upload.check_file_size(file_size_index)

    def delete_file(self, label, wanted_file_index):
        upload = self.make_element_ready_to_action('UploadFile', label)
        return upload.delete_file_by_index(wanted_file_index)

    def select_element(self, label, text):
        dropdown = self.make_element_ready_to_action('Dropdown', label)
        return dropdown.select_element(text)

    def close_dropdown(self, label):
        dropdown = self.make_element_ready_to_action('Dropdown', label)
        dropdown.close()
