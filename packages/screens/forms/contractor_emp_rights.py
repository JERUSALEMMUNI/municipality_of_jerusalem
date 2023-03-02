from screens.forms.base_page import BasePage
from ui_widgets.new_style.dropdown_search_selectbox_field import DropdownSearchSelectBox
from ui_widgets.new_style.phone_field import PhoneField
from ui_widgets.new_style.text_field import TextField


class ContractorEmpRights(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style='old')
        self.page_title = 'ContractorEmpRights'
        self.url_postfix = 'ContractorEmpRights'
        self.widgets[' נושא התלונה:'] = DropdownSearchSelectBox(' נושא התלונה:')
        self.widgets['מספר טלפון נייד'] = PhoneField('מספר טלפון נייד')
        self.widgets['שם פרטי'] = TextField('שם פרטי')
        self.widgets['מספר זהות'] = TextField('מספר זהות')
        self.widgets['שם משפחה'] = TextField('שם משפחה')
        self.widgets['אימייל'] = TextField('אימייל')
        self.widgets['רחוב'] = TextField('רחוב')
        self.widgets['מספר בית'] = TextField('מספר בית')
        self.widgets['מספר דירה'] = TextField('מספר דירה')
        self.widgets['תד'] = TextField('תד')

        self.main_elements_to_wait_when_load = [
        ]
