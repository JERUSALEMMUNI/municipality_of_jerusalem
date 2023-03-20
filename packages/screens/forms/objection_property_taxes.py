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
        self.main_elements_to_wait_when_load = ['פרטי מגיש הבקשה_שם פרטי']

    def create_page_widgets(self):
        self.widgets['פרטי מגיש הבקשה_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['פרטי הנכס וסיבת ההשגה_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי',
                                                                      index=2)

        self.widgets['פרטי מגיש הבקשה_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['פרטי הנכס וסיבת ההשגה_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה',
                                                                       index=2)

        self.widgets['פרטי מגיש הבקשה_סוג זיהוי'] = create_widget('DropdownSearch', style=self.style, label='סוג זיהוי')
        self.widgets['פרטי הנכס וסיבת ההשגה_סוג זיהוי'] = create_widget('DropdownSearch', style=self.style,
                                                                        label='סוג זיהוי', index=2)

        self.widgets['פרטי מגיש הבקשה_מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['פרטי הנכס וסיבת ההשגה_מספר ת.ז.'] = create_widget('TextField', style=self.style,
                                                                        label='מספר ת.ז.', index=2)

        self.widgets['פרטי מגיש הבקשה_מספר דרכון'] = create_widget('TextField', style=self.style, label='מספר דרכון')
        self.widgets['פרטי הנכס וסיבת ההשגה_מספר דרכון'] = create_widget('TextField', style=self.style,
                                                                         label='מספר דרכון', index=2)

        self.widgets['פרטי מגיש הבקשה_מספר ח.פ.'] = create_widget('TextField', style=self.style, label='מספר ח.פ.')
        self.widgets['פרטי הנכס וסיבת ההשגה_.מספר ח.פ'] = create_widget('TextField', style=self.style,
                                                                        label='מספר ח.פ.', index=2)

        self.widgets['פרטי מגיש הבקשה_מספר עמותה'] = create_widget('TextField', style=self.style, label='מספר עמותה')
        self.widgets['פרטי הנכס וסיבת ההשגה_מספר עמותה'] = create_widget('TextField', style=self.style,
                                                                         label='מספר עמותה', index=2)

        self.widgets['פרטי מגיש הבקשה_מספר מוסד'] = create_widget('TextField', style=self.style, label='מספר מוסד')
        self.widgets['פרטי הנכס וסיבת ההשגה_מספר מוסד'] = create_widget('TextField', style=self.style,
                                                                        label='מספר מוסד', index=2)

        self.widgets['פרטי מגיש הבקשה_טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['פרטי הנכס וסיבת ההשגה_טלפון נייד'] = create_widget('PhoneField', style=self.style,
                                                                         label='טלפון נייד', index=2)

        self.widgets['פרטי מגיש הבקשה_דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        self.widgets['פרטי הנכס וסיבת ההשגה_דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל',
                                                                    index=2)

        self.widgets['פרטי מגיש הבקשה_ממלא ההשגה'] = create_widget('DropdownSearch', style=self.style,
                                                                   label='ממלא ההשגה')

        self.widgets['פרטי מגיש הבקשה_טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי')
        self.widgets['פרטי הנכס וסיבת ההשגה_טלפון קווי'] = create_widget('PhoneField', style=self.style,
                                                                         label='טלפון קווי', index=2)

        self.widgets['בעל/ת הנכס שונה ממגיש הבקשה'] = create_widget('ButtonGroup', style=self.style,
                                                                    label="בעל/ת הנכס שונה ממגיש הבקשה")
        self.widgets['סוג חשבון / נכס'] = create_widget('DropdownSearch', style=self.style, label='סוג חשבון / נכס')
        self.widgets["חשבון / נכס"] = create_widget('TextField', style=self.style, label="חשבון / נכס", index=2)
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets['בית'] = create_widget('TextNumberField', style=self.style, label='בית')
        self.widgets['כניסה'] = create_widget('TextField', style=self.style, label='כניסה')
        self.widgets['קומה'] = create_widget('TextField', style=self.style, label='קומה')
        self.widgets['דירה'] = create_widget('TextField', style=self.style, label='דירה')
        self.widgets['זיקה לנכס'] = create_widget('DropdownSearch', style=self.style, label='זיקה לנכס')
        self.widgets['מועד תחילת הטענה'] = create_widget('CalendarField', style=self.style.OLD,
                                                         label='מועד תחילת הטענה')
        self.widgets['סיבת ההשגה'] = create_widget('ButtonGroup', style=self.style, label="סיבת ההשגה")
        self.widgets['האם הנכס נהרס עד היסוד?'] = create_widget('ButtonGroup', style=self.style,
                                                                label="האם הנכס נהרס עד היסוד?")
        self.widgets['האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?'] = create_widget('ButtonGroup', style=self.style,
                                                                                 label="האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?")
        self.widgets['נא פרט את הטענה'] = create_widget('TextAreaField', style=self.style, label='נא פרט את הטענה')
        self.widgets['ניתן לצרף מכתב נלווה'] = create_widget('UploadFile', style=self.style,
                                                             label='ניתן לצרף מכתב נלווה')
        self.widgets['ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)'] = create_widget('UploadFile',
                                                                                                        style=self.style,
                                                                                                        label='ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)')
        self.widgets['דו"ח מהנדס'] = create_widget('UploadFile', style=self.style, label='דו"ח מהנדס')
        self.widgets['תאריך הריסת הנכס'] = create_widget('CalendarField', style=self.style.OLD,
                                                         label='תאריך הריסת הנכס')
        self.widgets['מומלץ לצרף תשריט / סקיצה מטעמך'] = create_widget('UploadFile', style=self.style,
                                                                       label='מומלץ לצרף תשריט / סקיצה מטעמך')
        self.widgets['מומלץ לצרף חוזי שכירות של היחידות שפוצלו'] = create_widget('UploadFile', style=self.style,
                                                                                 label='מומלץ לצרף חוזי שכירות של היחידות שפוצלו')
        self.widgets['אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס'] = create_widget('UploadFile',
                                                                                              style=self.style,
                                                                                              label='אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס')
        self.widgets['תמונות'] = create_widget('UploadFile', style=self.style, label='תמונות')
        self.widgets['ספח תעודת זהות'] = create_widget('UploadFile', style=self.style, label='ספח תעודת זהות')
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")

    def fill_form_to_reach_step(self, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הנכס וסיבת ההשגה":
            self.fill_first_page(mailbox)

        elif dst_step == "תצהיר ושליחה":
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

    def fill_first_page(self, mailbox):
        self.widgets['פרטי מגיש הבקשה_שם פרטי'].set_text('דני')
        self.widgets['פרטי מגיש הבקשה_שם משפחה'].set_text('גלעד')
        self.widgets['פרטי מגיש הבקשה_סוג זיהוי'].select_element('דרכון')
        self.widgets['פרטי מגיש הבקשה_מספר דרכון'].set_text('332796182')
        self.widgets['פרטי מגיש הבקשה_טלפון נייד'].set_full_phone('052-80768343')
        self.widgets['פרטי מגיש הבקשה_דוא"ל'].set_text(mailbox)
        self.widgets['פרטי מגיש הבקשה_ממלא ההשגה'].select_element('המחזיק')
        self.widgets["המשך"].click_button()
