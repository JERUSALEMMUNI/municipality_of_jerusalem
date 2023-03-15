from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class ObjectionPropertyTaxes(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'ObjectionPropertyTaxes'
        self.url_postfix = 'ObjectionPropertyTaxes'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']

    def create_page_widgets(self):
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי')
        self.widgets['דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        self.widgets['סוג זיהוי'] = create_widget('DropdownSearch', style=self.style, label='סוג זיהוי')
        self.widgets['מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['מספר דרכון'] = create_widget('TextField', style=self.style, label='מספר דרכון')
        self.widgets['מספר ח.פ.'] = create_widget('TextField', style=self.style, label='מספר ח.פ.')
        self.widgets['מספר מוסד'] = create_widget('TextField', style=self.style, label='מספר מוסד')
        self.widgets['מספר עמותה'] = create_widget('TextField', style=self.style, label='מספר עמותה')
        self.widgets['ממלא ההשגה'] = create_widget('DropdownSearch', style=self.style, label='ממלא ההשגה')
        self.widgets['מועד תחילת הטענה'] = create_widget('CalendarField', style=self.style.OLD, label='מועד תחילת הטענה')
        self.widgets['בעל/ת הנכס שונה ממגיש הבקשה'] = create_widget('BigButtonField', style=self.style, label='בעל/ת הנכס שונה ממגיש הבקשה')
        self.widgets['סיבת ההשגה'] = create_widget('BigButtonField', style=self.style,label='סיבת ההשגה')



