from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.new_style.dropdown_field import Dropdown
from ui_widgets.new_style.text_field import TextField

log = logger.get_logger(__name__)


class PhoneField(BaseWidget):
    def __init__(self, label):
        super().__init__(label)
        self.dropdown_widget = Dropdown(label)
        self.text_widget = TextField(label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",

        }

    def initial_widgets(self):
        dropdown_element = self.web_element.find_element(By.XPATH, "following-sibling::div//p-dropdown")
        self.dropdown_widget.set_web_element(dropdown_element)
        text_element = self.web_element.find_element(By.XPATH, "following-sibling::div/input")
        self.text_widget.set_web_element(text_element)

    def set_text(self, text):
        new_text = text.split("-")
        start_phone = new_text[0]
        rest_phone = new_text[1]
        self.initial_widgets()
        self.text_widget.set_text(rest_phone)
        self.dropdown_widget.click_button()
        self.dropdown_widget.select_element(start_phone)

    @property
    def is_invalid(self):
        return self.text_widget.is_invalid is True

    @property
    def is_valid(self):
        return self.text_widget.is_valid is True
