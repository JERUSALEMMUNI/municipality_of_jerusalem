from screens.forms.base_page import BasePage
from ui_widgets.application_steps_field import Application_steps_field
from ui_widgets.new_btn_field import NewButtonField
from ui_widgets.new_header_field import New_Header_field
from ui_widgets.radio_button_field import Radio_button_field


class PlaceContainer(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'PlaceContainer'
        self.url_postfix = 'PlaceContainer'
        self.widgets['newHeader'] = New_Header_field('newHeader', driver)
        self.widgets['סוג זהות'] = Radio_button_field('סוג זהות')
        self.widgets['page_steps'] = Application_steps_field('page_steps')
        self.widgets['המשך'] = NewButtonField('המשך')
        self.widgets['חזור'] = NewButtonField('חזור')
        self.widgets['מידע'] = NewButtonField('מידע')
        self.widgets['שמור'] = NewButtonField('שמור')
        self.widgets['הדפס'] = NewButtonField('הדפס')

        self.main_elements_to_wait_when_load = [

        ]
