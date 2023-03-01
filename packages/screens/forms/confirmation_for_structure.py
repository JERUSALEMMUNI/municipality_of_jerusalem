from screens.forms.base_page import BasePage


class ConfirmationForStructure(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'ConfirmationForStructure'
        self.url_postfix = 'ConfirmationForStructure'

        self.main_elements_to_wait_when_load = [

        ]
