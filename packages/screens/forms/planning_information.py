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
        self.widgets['הדרך המועדפת לקבלת התשובה ופרטים נוספים הנדרשים לבירור'] = create_widget('ButtonGroup', style=self.style, label="הדרך המועדפת לקבלת התשובה ופרטים נוספים הנדרשים לבירור")
        self.widgets['חלקות רצופות'] = create_widget('TextField', style=self.style, label='חלקות רצופות')
        self.widgets['חלקות בודדות'] = create_widget('TextField', style=self.style, label='חלקות בודדות')
        self.widgets['כתובת'] = create_widget('TextField', style=self.style, label='כתובת')
        self.widgets['נא מלא את את בקשתך, יש לציין גוש וחלקה ו/או תוכנית ומגרש ו/או כתובת ו/או קורדינאטות'] = create_widget('TextAreaField', style=self.style, label='נא מלא את את בקשתך, יש לציין גוש וחלקה ו/או תוכנית ומגרש ו/או כתובת ו/או קורדינאטות')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget('CheckBox', style=self.style, label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox', style=self.style, label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הבקשה":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "הצהרה":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.widgets['הדרך המועדפת לקבלת התשובה ופרטים נוספים הנדרשים לבירור'].choose_value('דואר אלקטרוני')
            self.widgets['חלקות רצופות'].set_text('2')
            self.widgets['חלקות בודדות'].set_text('3')
            self.widgets['נא מלא את את בקשתך, יש לציין גוש וחלקה ו/או תוכנית ומגרש ו/או כתובת ו/או קורדינאטות'].set_text('שלום')
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
