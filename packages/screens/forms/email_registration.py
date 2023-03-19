from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class EmailRegistration(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'EmailRegistration'
        self.url_postfix = 'EmailRegistration'
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
        self.widgets["חשבון ארנונה"] = create_widget('TextField', style=self.style, label="חשבון ארנונה")
        self.widgets['בעל/ת החשבון שונה ממגיש הבקשה'] = create_widget('ButtonGroup', style=self.style, label="בעל/ת החשבון שונה ממגיש הבקשה")
        self.widgets['מגיש הבקשה'] = create_widget('ButtonGroup', style=self.style, label="מגיש הבקשה")
        self.widgets['האם דירת שותפים?'] = create_widget('ButtonGroup', style=self.style, label="האם דירת שותפים?")
        self.widgets['צילום תעודת זהות + ספח'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח')
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets['תעודת התאגדות'] = create_widget('UploadFile', style=self.style, label='תעודת התאגדות')
        self.widgets['ייפוי כוח לקבלת מידע בשם התאגיד'] = create_widget('UploadFile', style=self.style, label='ייפוי כוח לקבלת מידע בשם התאגיד')
        self.widgets['תעודת זהות מיופה כוח'] = create_widget('UploadFile', style=self.style, label='תעודת זהות מיופה כוח')
        self.widgets['ייפוי כוח'] = create_widget('UploadFile', style=self.style, label='ייפוי כוח')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget('CheckBox', style=self.style, label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox', style=self.style, label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")

    def fill_form_to_reach_step(self, dst_step, mailbox):
        if dst_step == "תצהיר ושליחה":
            self.widgets['שם פרטי'].set_text('דני')
            self.widgets['שם משפחה'].set_text('גלעד')
            self.widgets['סוג זיהוי'].select_element('דרכון')
            self.widgets['מספר דרכון'].set_text('332796182')
            self.widgets['טלפון נייד'].set_full_phone('052-80768343')
            self.widgets['טלפון קווי'].set_full_phone('02-8236343')
            self.widgets['דוא"ל'].set_text(mailbox)


