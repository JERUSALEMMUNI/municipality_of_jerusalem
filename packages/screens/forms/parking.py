from screens.forms.base_page import BasePage
from ui_widgets.big_btn_field import BigButtonField


class Parking(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'Parking'
        self.url_postfix = 'Parking'
        self.widgets['זהות'] = BigButtonField('זהות')
        self.widgets['רכב/דוח'] = BigButtonField('רכב/דוח')

        self.main_elements_to_wait_when_load = [

        ]
