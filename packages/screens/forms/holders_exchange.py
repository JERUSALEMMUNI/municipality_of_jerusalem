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
        self.main_elements_to_wait_when_load = ['פרטי מגיש_שם פרטי']

    def create_page_widgets(self):
        self.widgets['פרטי מגיש_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['פרטי מחזיק חדש_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי', index=2)

        self.widgets['פרטי מגיש_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['פרטי מחזיק חדש_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה', index=2)

        self.widgets['פרטי מגיש_טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['פרטי מחזיק חדש_טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד', index=2)

        self.widgets['פרטי מגיש_טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי')
        self.widgets['פרטי מחזיק חדש_טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי', index=2)

        self.widgets['פרטי מגיש_דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        self.widgets['פרטי מחזיק חדש_דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל', index=2)

        self.widgets['פרטי מגיש_סוג זיהוי'] = create_widget('DropdownSearch', style=self.style, label='סוג זיהוי')
        self.widgets['פרטי מחזיק חדש_סוג זיהוי'] = create_widget('DropdownSearch', style=self.style, label='סוג זיהוי', index=2)

        self.widgets['פרטי מגיש_מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['פרטי מחזיק חדש_מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.', index=2)

        self.widgets['פרטי מגיש_מספר דרכון'] = create_widget('TextField', style=self.style, label='מספר דרכון')
        self.widgets['פרטי מחזיק חדש_מספר דרכון'] = create_widget('TextField', style=self.style, label='מספר דרכון', index=2)

        self.widgets['חשבון תושב בארנונה'] = create_widget('TextField', style=self.style, label='חשבון תושב בארנונה')
        self.widgets['בית'] = create_widget('TextField', style=self.style, label='בית')
        self.widgets['תאריך עזיבה'] = create_widget('TextField', style=self.style, label='תאריך עזיבה')
        self.widgets['תאריך כניסה'] = create_widget('TextField', style=self.style, label='תאריך כניסה')
        self.widgets['הערות'] = create_widget('TextAreaField', style=self.style, label='הערות')
        self.widgets['סוג הנכס'] = create_widget('ButtonGroup', style=self.style, label="סוג הנכס")
        self.widgets['מי מגיש הבקשה?'] = create_widget('ButtonGroup', style=self.style, label="מי מגיש הבקשה?")
        self.widgets['מהי הפעולה המבוקשת?'] = create_widget('ButtonGroup', style=self.style, label="מהי הפעולה המבוקשת?")
        self.widgets['האם בעל הנכס הוא המחזיק הנוכחי?'] = create_widget('ButtonGroup', style=self.style, label="האם בעל הנכס הוא המחזיק הנוכחי?")
        self.widgets['צילום תעודת זהות + ספח של בעל החשבון'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח של בעל החשבון')
        self.widgets['חוזה שבו מופיע תאריך כניסה לדירה'] = create_widget('UploadFile', style=self.style, label='חוזה שבו מופיע תאריך כניסה לדירה')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget('CheckBox', style=self.style, label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox', style=self.style, label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')