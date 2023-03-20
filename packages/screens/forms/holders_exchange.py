from infra.enums import UIStyle, StepNumber
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
        self.widgets['שם פרטי'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.FOURTH)
        }
        self.widgets['שם משפחה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.FOURTH)
        }
        self.widgets['סוג זיהוי'] = {
            'פרטי מגיש': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.FOURTH)
        }
        #todo: the page accept the id number without doing the dict
        self.widgets['מספר ת.ז.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר דרכון'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר ח.פ.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר עמותה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר מוסד'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.FOURTH)
        }
        self.widgets['טלפון נייד'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון נייד', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('PhoneField', style=self.style, label='טלפון נייד', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('PhoneField', style=self.style, label='טלפון נייד', step_number=StepNumber.FOURTH)
        }
        self.widgets['טלפון קווי'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון קווי', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('PhoneField', style=self.style, label='טלפון קווי', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('PhoneField', style=self.style, label='טלפון קווי', step_number=StepNumber.FOURTH)
        }
        self.widgets['דוא"ל'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FOURTH)
        }
        self.widgets['צילום תעודת זהות + ספח של בעל החשבון'] = {
            'פרטי מגיש': create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח של בעל החשבון', step_number=StepNumber.FIRST),
            'פרטי מחזיק נוכחי': create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח של בעל החשבון', step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח של בעל החשבון', step_number=StepNumber.FOURTH)
        }

        self.widgets['חשבון תושב בארנונה'] = create_widget('TextField', style=self.style, label='חשבון תושב בארנונה')
        self.widgets['בית'] = create_widget('TextNumberField', style=self.style, label='בית')
        self.widgets['תאריך עזיבה'] = create_widget('TextNumberField', style=self.style, label='תאריך עזיבה')
        self.widgets['תאריך כניסה'] = create_widget('TextNumberField', style=self.style, label='תאריך כניסה')
        self.widgets['הערות'] = create_widget('TextAreaField', style=self.style, label='הערות', index=2)
        self.widgets['סוג הנכס'] = create_widget('ButtonGroup', style=self.style, label="סוג הנכס")
        self.widgets['מי מגיש הבקשה?'] = create_widget('ButtonGroup', style=self.style, label="מי מגיש הבקשה?")
        self.widgets['מהי הפעולה המבוקשת?'] = create_widget('ButtonGroup', style=self.style, label="מהי הפעולה המבוקשת?")
        self.widgets['האם בעל הנכס הוא המחזיק הנוכחי?'] = create_widget('ButtonGroup', style=self.style, label="האם בעל הנכס הוא המחזיק הנוכחי?")
        self.widgets['חוזה שבו מופיע תאריך כניסה לדירה'] = create_widget('UploadFile', style=self.style, label='חוזה שבו מופיע תאריך כניסה לדירה')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget('CheckBox', style=self.style, label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox', style=self.style, label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")

    def fill_form_to_reach_step(self, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי נכס":
            self.fill_first_page(mailbox, driver)

    def fill_first_page(self, mailbox, driver):
        self.widgets['שם פרטי'].set_text('דני')
        self.widgets['שם משפחה'].set_text('גלעד')
        self.widgets['סוג זיהוי'].select_element('דרכון')
        self.widgets['מספר דרכון'].set_text('332796182')
        self.widgets['טלפון נייד'].set_full_phone('052-80768343')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(driver, mailbox)
