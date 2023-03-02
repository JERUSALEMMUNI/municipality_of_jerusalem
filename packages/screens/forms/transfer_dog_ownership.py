from screens.forms.base_page import BasePage
from ui_widgets.old_style.calender_time import CalendarClock


class TransferDogOwnership(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style='old')
        self.page_title = 'TransferDogOwnership'
        self.url_postfix = 'TransferDogOwnership'

        self.main_elements_to_wait_when_load = [

        ]
