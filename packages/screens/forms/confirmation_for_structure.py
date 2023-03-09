from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class ConfirmationForStructure(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'ConfirmationForStructure'
        self.url_postfix = 'ConfirmationForStructure'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']
        self.main_elements_to_wait_when_load = ['המשך']

    def create_page_widgets(self):
        self.widgets['המשך'] = create_widget('ButtonField', style=self.style, label='המשך')
        self.widgets['מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי')
        self.widgets['דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        self.widgets['מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה')
        self.widgets['גוש'] = create_widget('TextField', style=self.style, label='גוש')
        self.widgets['חלקה'] = create_widget('TextField', style=self.style, label='חלקה')
        self.widgets['תת חלקה'] = create_widget('TextField', style=self.style, label='תת חלקה')
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')