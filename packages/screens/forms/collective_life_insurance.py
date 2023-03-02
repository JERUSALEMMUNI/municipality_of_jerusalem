from screens.forms.base_page import BasePage


class CollectiveLifeInsurance(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style='old')
        self.page_title = 'CollectiveLifeInsurance'
        self.url_postfix = 'CollectiveLifeInsurance'

        self.main_elements_to_wait_when_load = [

        ]
