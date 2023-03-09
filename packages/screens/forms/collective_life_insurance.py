from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class CollectiveLifeInsurance(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'CollectiveLifeInsurance'
        self.url_postfix = 'CollectiveLifeInsurance'

        self.main_elements_to_wait_when_load = [
        ]

    def create_page_widgets(self):
        self.widgets['מספר זהות'] = create_widget('TextField', style=self.style, label='מספר זהות:')
        self.widgets['שלח קוד זיהוי'] = create_widget('ButtonField', style=self.style, label='שלח קוד זיהוי')
