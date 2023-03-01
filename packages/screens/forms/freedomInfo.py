from screens.forms.base_page import BasePage


class FreedomInfo(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'FreedomInfo'
        self.url_postfix = 'FreedomInfo'
        self.init_widgets()

        self.main_elements_to_wait_when_load = [

        ]


