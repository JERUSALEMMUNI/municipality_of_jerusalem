from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class ImprovementTax(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'ImprovementTax'
        self.url_postfix = 'ImprovementTax'
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
        self.widgets['מספר מוסד'] = create_widget('TextField', style=self.style, label='מספר מוסד')
        self.widgets['מספר ח.פ.'] = create_widget('TextField', style=self.style, label='מספר ח.פ.')
        self.widgets['מספר עמותה'] = create_widget('TextField', style=self.style, label='מספר עמותה')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget(
            'CheckBox', style=self.style,
            label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets['זיהוי נכס (מתוך חשבון הארנונה)'] = create_widget('TextField', style=self.style,
                                                                       label='זיהוי נכס (מתוך חשבון הארנונה)')
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets['מספר בית'] = create_widget('TextNumberField', style=self.style, label='מספר בית')
        self.widgets['גוש'] = create_widget('TextField', style=self.style, label='גוש')
        self.widgets['חלקה'] = create_widget('TextField', style=self.style, label='חלקה')
        self.widgets['מהות נכס'] = create_widget('DropdownSearch', style=self.style, label='מהות נכס')

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הנכס":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "הצהרה":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.widgets['רחוב'].search_and_pick_first_element_and_validate("א טור")
            self.widgets['זיהוי נכס (מתוך חשבון הארנונה)'].set_text('2332432433')
            self.widgets['מספר בית'].set_text('232')
            self.widgets['גוש'].set_text('223')
            self.widgets['חלקה'].set_text('123')
            self.widgets['מהות נכס'].select_element('למגורים')
            self.widgets["המשך"].click_button()

    def fill_first_page(self, context, mailbox, driver, current_page):
        self.widgets['שם פרטי'].set_text('דני')
        self.widgets['שם משפחה'].set_text('גלעד')
        self.widgets['סוג זיהוי'].select_element('דרכון')
        self.widgets['מספר דרכון'].set_text('332796182')
        self.widgets['טלפון נייד'].set_full_phone('052-8076834')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)
