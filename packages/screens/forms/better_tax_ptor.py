from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class BetterTaxPtor(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'BetterTaxPtor'
        self.url_postfix = 'BetterTaxPtor'

        self.main_elements_to_wait_when_load = [
        ]

    def create_page_widgets(self):
        self.widgets['מספר תיק בנין'] = create_widget('TextField', style=self.style, label='מספר תיק בנין')
        self.widgets['בדיקת אופציה לפטור'] = create_widget('ButtonField', style=self.style, label='בדיקת אופציה לפטור')


