from screens.forms.base_page import BasePage
from ui_widgets.old_style.calender_time import CalendarClock
from ui_widgets.old_style.footer_field import FooterField


class PlaceContainer(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style='old')
        self.page_title = 'PlaceContainer'
        self.url_postfix = 'PlaceContainer'
        self.widgets['מתאריך:'] = CalendarClock('מתאריך:')

        self.main_elements_to_wait_when_load = [

        ]
