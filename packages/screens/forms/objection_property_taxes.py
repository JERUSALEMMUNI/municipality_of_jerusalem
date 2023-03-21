from infra.enums import UIStyle, StepNumber
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

        self.widgets['שם פרטי'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.THIRD),
        }
        self.widgets['שם משפחה'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.THIRD),
        }
        self.widgets['סוג זיהוי'] = {
            'פרטי מגיש הבקשה': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.THIRD),
        }

        self.widgets['מספר ת.ז.'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.THIRD),
        }
        self.widgets['מספר דרכון'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.THIRD),
        }
        self.widgets['מספר ח.פ.'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.THIRD),
        }
        self.widgets['מספר עמותה'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.THIRD),
        }
        self.widgets['מספר מוסד'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.THIRD),
        }
        self.widgets['טלפון נייד'] = {
            'פרטי מגיש הבקשה': create_widget('PhoneField', style=self.style, label='טלפון נייד', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('PhoneField', style=self.style, label='טלפון נייד', step_number=StepNumber.THIRD),
        }
        self.widgets['טלפון קווי'] = {
            'פרטי מגיש הבקשה': create_widget('PhoneField', style=self.style, label='טלפון קווי', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('PhoneField', style=self.style, label='טלפון קווי', step_number=StepNumber.THIRD),
        }
        self.widgets['דוא"ל'] = {
            'פרטי מגיש הבקשה': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FIRST),
            'פרטי הנכס וסיבת ההשגה': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.THIRD),
        }

        self.widgets['רחוב'] = {
            'פרטי הנכס וסיבת ההשגה': create_widget('DropdownSearch', style=self.style, label='רחוב', step_number=StepNumber.THIRD),
            'תצהיר ושליחה': create_widget('TextField', style=self.style, label='רחוב', step_number=StepNumber.FOURTH),
        }

        self.widgets['בית'] = {
            'פרטי הנכס וסיבת ההשגה': create_widget('TextNumberField', style=self.style, label='בית', step_number=StepNumber.THIRD),
            'תצהיר ושליחה': create_widget('TextNumberField', style=self.style, label='בית', step_number=StepNumber.FOURTH),
        }

        self.widgets['ממלא ההשגה'] = create_widget('DropdownSearch', style=self.style, label='ממלא ההשגה')
        self.widgets["עיר"] = create_widget('TextField', style=self.style, label="עיר")
        self.widgets['מיקוד'] = create_widget('TextField', style=self.style, label='מיקוד')
        self.widgets['ת.ד.'] = create_widget('TextField', style=self.style, label='ת.ד.')
        self.widgets['צילום תעודת זהות + ספח'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח')
        self.widgets['כניסה'] = create_widget('TextField', style=self.style, label='כניסה')
        self.widgets['קומה'] = create_widget('TextField', style=self.style, label='קומה')
        self.widgets['דירה'] = create_widget('TextField', style=self.style, label='דירה')
        self.widgets['בעל/ת הנכס שונה ממגיש הבקשה'] = create_widget('ButtonGroup', style=self.style, label="בעל/ת הנכס שונה ממגיש הבקשה")
        self.widgets['סוג חשבון / נכס'] = create_widget('DropdownSearch', style=self.style, label='סוג חשבון / נכס')
        self.widgets["חשבון / נכס"] = create_widget('TextField', style=self.style, label="חשבון / נכס", index=2)
        self.widgets['זיקה לנכס'] = create_widget('DropdownSearch', style=self.style, label='זיקה לנכס')
        self.widgets['מועד תחילת הטענה'] = create_widget('CalendarField', style=self.style.OLD, label='מועד תחילת הטענה')
        self.widgets['סיבת ההשגה'] = create_widget('ButtonGroup', style=self.style, label="סיבת ההשגה")
        self.widgets['האם הנכס נהרס עד היסוד?'] = create_widget('ButtonGroup', style=self.style, label="האם הנכס נהרס עד היסוד?")
        self.widgets['האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?'] = create_widget('ButtonGroup', style=self.style, label="האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?")
        self.widgets['נא פרט את הטענה'] = create_widget('TextAreaField', style=self.style, label='נא פרט את הטענה')
        self.widgets['ניתן לצרף מכתב נלווה'] = create_widget('UploadFile', style=self.style, label='ניתן לצרף מכתב נלווה')
        self.widgets['ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)'] = create_widget('UploadFile', style=self.style, label='ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)')
        self.widgets['דו"ח מהנדס'] = create_widget('UploadFile', style=self.style, label='דו"ח מהנדס')
        self.widgets['תאריך הריסת הנכס'] = create_widget('CalendarField', style=self.style.OLD, label='תאריך הריסת הנכס')
        self.widgets['מומלץ לצרף תשריט / סקיצה מטעמך'] = create_widget('UploadFile', style=self.style, label='מומלץ לצרף תשריט / סקיצה מטעמך')
        self.widgets['מומלץ לצרף חוזי שכירות של היחידות שפוצלו'] = create_widget('UploadFile', style=self.style, label='מומלץ לצרף חוזי שכירות של היחידות שפוצלו')
        self.widgets['אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס'] = create_widget('UploadFile', style=self.style, label='אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס')
        self.widgets['תמונות'] = create_widget('UploadFile', style=self.style, label='תמונות')
        self.widgets['ספח תעודת זהות'] = create_widget('UploadFile', style=self.style, label='ספח תעודת זהות')
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget('CheckBox', style=self.style, label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox', style=self.style, label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")
        self.widgets['דרוב אחרי החיוב אינו שלי'] = create_widget('Dropdown', style=self.style, label="סיבת ההשגה", path_locator="/../../../following-sibling::more-info-objection//p-dropdown")

    def fill_form_to_reach_step(self, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הנכס וסיבת ההשגה":
            self.fill_first_page(mailbox, driver, current_page)

        elif dst_step == "תצהיר ושליחה":
            self.fill_first_page(mailbox, driver, current_page)
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

    def fill_first_page(self, mailbox, driver, current_page):
        self.widgets['שם פרטי'].set_text('דני')
        self.widgets['שם משפחה'].set_text('גלעד')
        self.widgets['סוג זיהוי'].select_element('דרכון')
        self.widgets['מספר דרכון'].set_text('332796182')
        self.widgets['טלפון נייד'].set_full_phone('052-80768343')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets['ממלא ההשגה'].select_element('המחזיק')
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(driver, mailbox, current_page)
