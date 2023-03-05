from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class ContractorEmpRights(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'ContractorEmpRights'
        self.url_postfix = 'ContractorEmpRights'

        self.main_elements_to_wait_when_load = [
        ]

    def create_page_widgets(self):
        self.widgets[' נושא התלונה:'] = create_widget('DropdownSearchSelectBox', style=self.style,
                                                      label=' נושא התלונה:')
        self.widgets['מספר טלפון נייד'] = create_widget('PhoneField', style=self.style, label='מספר טלפון נייד')
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['מספר זהות'] = create_widget('TextField', style=self.style, label='מספר זהות')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['אימייל'] = create_widget('TextField', style=self.style, label='אימייל')
        self.widgets['רחוב'] = create_widget('TextField', style=self.style, label='רחוב')
        self.widgets['מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה')
        self.widgets['תד'] = create_widget('TextField', style=self.style, label='תד')
