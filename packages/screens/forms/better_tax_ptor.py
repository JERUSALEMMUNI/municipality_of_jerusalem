from infra.enums import UIStyle
from screens.forms.base_page import BasePage


class BetterTaxPtor(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'BetterTaxPtor'
        self.url_postfix = 'BetterTaxPtor'

        self.main_elements_to_wait_when_load = [
        ]

    def create_page_widgets(self):
        pass

