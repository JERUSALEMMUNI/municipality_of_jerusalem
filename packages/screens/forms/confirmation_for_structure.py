from screens.forms.base_page import BasePage
from ui_widgets.mobile_field import Mobile_Field
from ui_widgets.text_field import TextField


class ConfirmationForStructure(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'ConfirmationForStructure'
        self.url_postfix = 'ConfirmationForStructure'
        self.widgets['שם פרטי'] = TextField('שם פרטי')
        self.widgets['שם משפחה'] = TextField('שם משפחה')
        self.widgets['מספר ת.ז.'] = TextField('מספר ת.ז.')
        self.widgets['טלפון נייד'] = Mobile_Field('טלפון נייד')
        self.widgets['טלפון קווי'] = Mobile_Field('טלפון קווי')
        self.widgets['דוא"ל'] = TextField('דוא"ל')

        self.main_elements_to_wait_when_load = [
            self.widgets['שם פרטי'],
            self.widgets['המשך'],
            self.widgets['טלפון נייד']
        ]
