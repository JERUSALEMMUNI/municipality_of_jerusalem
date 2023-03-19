from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class HoldersExchange(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'HoldersExchange'
        self.url_postfix = 'HoldersExchange'
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
        self.widgets['חשבון תושב בארנונה'] = create_widget('TextField', style=self.style, label='חשבון תושב בארנונה')
        self.widgets['בית'] = create_widget('TextField', style=self.style, label='בית')
        self.widgets['תאריך עזיבה'] = create_widget('TextField', style=self.style, label='תאריך עזיבה')
        self.widgets['תאריך כניסה'] = create_widget('TextField', style=self.style, label='תאריך כניסה')
        self.widgets['הערות'] = create_widget('TextAreaField', style=self.style, label='הערות')
        self.widgets['סוג הנכס'] = create_widget('ButtonGroup', style=self.style, label="סוג הנכס")
        self.widgets['מי מגיש הבקשה?'] = create_widget('ButtonGroup', style=self.style, label="מי מגיש הבקשה?")
        self.widgets['מהי הפעולה המבוקשת?'] = create_widget('ButtonGroup', style=self.style, label="מהי הפעולה המבוקשת?")
        self.widgets['האם בעל הנכס הוא המחזיק הנוכחי?'] = create_widget('ButtonGroup', style=self.style, label="האם בעל הנכס הוא המחזיק הנוכחי?")
        self.widgets['צילום תעודת זהות + ספח של בעל החשבון'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח של בעל החשבון', driver=self.driver)
        self.widgets['חוזה שבו מופיע תאריך כניסה לדירה'] = create_widget('UploadFile', style=self.style, label='חוזה שבו מופיע תאריך כניסה לדירה', driver=self.driver)
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget('CheckBox', style=self.style, label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox', style=self.style, label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')