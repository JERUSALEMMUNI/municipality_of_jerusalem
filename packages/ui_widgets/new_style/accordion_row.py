from selenium.webdriver.common.by import By
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.button_icon_widget import ButtonIcon
from ui_widgets.new_style.text_field import TextField
from ui_widgets.new_style.widget_locators.accordion_row_locators import AccordionRowLocators

log = logger.get_logger(__name__)


class AccordionRow(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)
        self.trash_button = ButtonIcon('trash', index)

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
        element = self.web_element.find_element(*AccordionRowLocators.trash)
        self.trash_button.set_web_element(element)
        self.trash_button.click_button()

    def set_text(self, label, text):
        if not self.validate_current_tab_is_expanded():
            self.click_on_current_tab()
        text_field = TextField(label, self.index)
        element = self.web_element.find_element(*AccordionRowLocators.get_text_field_from_locator(label))
        text_field.set_web_element(element)
        text_field.set_text(text)
