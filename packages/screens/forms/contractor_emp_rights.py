from screens.forms.base_page import BasePage
from ui_widgets.calendar_field import CalendarField
from ui_widgets.old_button_field import OldButtonField
from ui_widgets.radio_button_field import RadioButtonField


class ContractorEmpRights(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'ContractorEmpRights'
        self.url_postfix = 'ContractorEmpRights'
        self.widgets['תאריך לידה:'] = CalendarField('תאריך לידה:')
        self.widgets['האם היתה'] = RadioButtonField('האם היתה')
        self.widgets['המשך'] = OldButtonField('המשך')
        self.main_elements_to_wait_when_load = [
            self.widgets['תאריך לידה:']
        ]
