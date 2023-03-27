from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class PlanningInformation(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'PlanningInformation'
        self.url_postfix = 'PlanningInformation'
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

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הנכס וסיבת ההשגה":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "תצהיר ושליחה":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.widgets['בעל/ת הנכס שונה ממגיש הבקשה'].choose_value('לא')
            self.widgets['סוג חשבון / נכס'].select_element('מספר חשבון')
            self.widgets['חשבון / נכס'].set_text('3423423432')
            self.widgets['רחוב'].select_element('א טור')
            self.widgets['בית'].set_text('2')
            self.widgets['זיקה לנכס'].select_element('בעלות')
            self.widgets['מועד תחילת הטענה'].select_all_date('3/1/2023')
            self.widgets['סיבת ההשגה'].choose_value('שטח החיוב שנקבע לנכס שגוי')
            self.widgets['נא פרט את הטענה'].set_text('שטח')
            self.widgets["המשך"].click_button()

    def fill_first_page(self,context, mailbox, driver, current_page):
        self.widgets['שם פרטי'].set_text('דני')
        self.widgets['שם משפחה'].set_text('גלעד')
        self.widgets['סוג זיהוי'].select_element('דרכון')
        self.widgets['מספר דרכון'].set_text('332796182')
        self.widgets['טלפון נייד'].set_full_phone('052-8076834')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets['ממלא ההשגה'].select_element('המחזיק')
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)
