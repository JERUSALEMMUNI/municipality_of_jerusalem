from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class PlaceContainer(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'PlaceContainer'
        self.url_postfix = 'PlaceContainer'

        self.main_elements_to_wait_when_load = [
        ]

    def create_page_widgets(self):
        self.widgets['מתאריך:'] = create_widget('CalendarClock', style=self.style, label='מתאריך:')
