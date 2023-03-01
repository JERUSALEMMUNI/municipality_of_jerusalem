from screens.forms.base_page import BasePage
from ui_widgets.old_style.calendar_field import CalendarField


class MedicalAssistant(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'MedicalAssistant'
        self.url_postfix = 'MedicalAssistant'
        self.widgets['תאריך לידה תלמיד/ה'] = CalendarField('תאריך לידה תלמיד/ה')
        self.main_elements_to_wait_when_load = [
            self.widgets['תאריך לידה תלמיד/ה']
        ]


