from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger
from ui_widgets.dropDown_field import DropDown_field

log = logger.get_logger(__name__)


class SelectField(BaseWidget):
    def __init__(self, label):
        super().__init__(label)
        self.dropdown_widget = DropDown_field(label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",
        }

    def initial_widgets(self):
        dropdown_element = self.web_element.find_element(By.XPATH, "following-sibling::p-dropdown/div/span")
        self.dropdown_widget.set_web_element(dropdown_element)

    def set_text(self, text):
        self.initial_widgets()
        self.dropdown_widget.set_text(text)

    @property
    def is_invalid(self):
        return self.text_widget.is_invalid is True or self.dropdown_widget.is_valid is False

    @property
    def is_valid(self):
        return self.text_widget.is_valid is True and self.dropdown_widget.is_valid is True
