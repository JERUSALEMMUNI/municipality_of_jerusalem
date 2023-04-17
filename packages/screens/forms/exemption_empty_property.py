from infra import config
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget
from infra.enums import UIStyle, StepNumber
import os


class ExemptionEmptyProperty(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'ExemptionEmptyProperty'
        self.url_postfix = 'ExemptionEmptyProperty'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']

    def create_page_widgets(self):
        self.widgets['שם פרטי'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.SECOND),
        }

        self.widgets['שם משפחה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.SECOND),
        }

        self.widgets['סוג זיהוי'] = {
            'פרטי מגיש': create_widget('DropdownSearch', style=self.style, label='סוג זיהוי',
                                       step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('DropdownSearch', style=self.style, label='סוג זיהוי',
                                       step_number=StepNumber.SECOND),
        }

        self.widgets['מספר ת.ז.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.SECOND),
        }

        self.widgets['מספר דרכון'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='מספר דרכון',
                                       step_number=StepNumber.SECOND),
        }
        self.widgets['מספר מוסד'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='מספר מוסד',
                                       step_number=StepNumber.SECOND),
        }
        self.widgets['מספר ח.פ.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='מספר ח.פ.',
                                       step_number=StepNumber.SECOND),
        }
        self.widgets['מספר עמותה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='מספר עמותה',
                                       step_number=StepNumber.SECOND),
        }
        self.widgets['טלפון נייד'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                       step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                       step_number=StepNumber.SECOND),
        }

        self.widgets['טלפון קווי'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                       step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                       step_number=StepNumber.SECOND),
        }
        self.widgets['דוא"ל'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FIRST),
            'פרטי הנכס': create_widget('TextField', style=self.style, label='דוא"ל',
                                       step_number=StepNumber.SECOND),
        }

        # step2-פרטי הנכס
        self.widgets["מס' חשבון תושב בארנונה"] = create_widget('TextField', style=self.style,
                                                               label="מס' חשבון תושב בארנונה")
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets["מס' בית"] = create_widget('TextNumberField', style=self.style, label="מס' בית")
        self.widgets['שטח החיוב במ"ר'] = create_widget('TextField', style=self.style, label='שטח החיוב במ"ר')

        self.widgets['האם הארנונה רשומה על שם מבקש ההנחה?'] = create_widget('ButtonGroup', style=self.style,
                                                                            label="האם הארנונה רשומה על שם מבקש ההנחה?")
        self.widgets['זיקה לנכס'] = create_widget('Dropdown', style=self.style, label='זיקה לנכס')

        self.widgets['מצב הנכס'] = create_widget('ButtonGroup', style=self.style, label="מצב הנכס")
        self.widgets['שימוש בנכס'] = create_widget('ButtonGroup', style=self.style, label="שימוש בנכס")

        self.widgets['תאריך התחלה (לפני 30 ימים לפחות)'] = create_widget('TextNumberField', style=self.style,
                                                                         label='תאריך התחלה (לפני 30 ימים לפחות)')
        self.widgets['תאריך סיום'] = create_widget('TextNumberField', style=self.style, label='תאריך סיום')

        self.widgets['סיבת היות הנכס ריק'] = create_widget('ButtonGroup', style=self.style, label="סיבת היות הנכס ריק")
        self.widgets["הסבר מה נעשה עם החפצים"] = create_widget('TextAreaField', style=self.style,
                                                               label="הסבר מה נעשה עם החפצים בנכס", index=1)

        self.widgets['הסבר מה נעשה עם העסק'] = create_widget('TextField', style=self.style,
                                                             label='הסבר מה נעשה עם העסק')

        self.widgets['הסבר היכן התגורר'] = create_widget('TextField', style=self.style, label='הסבר היכן התגורר')

        self.widgets['הסבר להיות הנכס ריק'] = create_widget('TextField', style=self.style, label='הסבר להיות הנכס ריק')

        self.widgets['תצהיר מעו"ד בגין נכס לא למגורים'] = create_widget('UploadFile', style=self.style,
                                                                        label='תצהיר מעו"ד בגין נכס לא למגורים')
        self.widgets["צילום תעודת זהות + ספח של מגיש הבקשה"] = create_widget('UploadFile', style=self.style,
                                                                             label="צילום תעודת זהות + ספח של מגיש הבקשה")
        self.widgets["חשבונות חשמל לתקופה בה הנכס עמד ריק"] = create_widget('UploadFile', style=self.style,
                                                                            label="חשבונות חשמל לתקופה בה הנכס עמד ריק")
        self.widgets["חשבונות המים לתקופה בה הנכס עמד ריק"] = create_widget('UploadFile', style=self.style,
                                                                            label="חשבונות המים לתקופה בה הנכס עמד ריק")
        self.widgets["הסבר מה נעשה עם החפצים בנכס"] = create_widget('UploadFile', style=self.style,
                                                                    label="הסבר מה נעשה עם החפצים בנכס", index=2)
        self.widgets["תמונות של הנכס המעידות על היותו ריק מחפצים"] = create_widget('UploadFile', style=self.style,
                                                                                   label="תמונות של הנכס המעידות על היותו ריק מחפצים")
        self.widgets["אחר"] = create_widget('UploadFile', style=self.style, label="אחר")
        self.widgets["קבלות על שיפוצים"] = create_widget('UploadFile', style=self.style, label="קבלות על שיפוצים")
        self.widgets["ת.ז. / דרכון של בעל חשבון הארנונה"] = create_widget('UploadFile', style=self.style,
                                                                          label="ת.ז. / דרכון של בעל חשבון הארנונה")
        self.widgets["חוזה שכירות"] = create_widget('UploadFile', style=self.style, label="חוזה שכירות")
        self.widgets["צו ירושה"] = create_widget('UploadFile', style=self.style, label="צו ירושה")
        self.widgets["ייפוי כח"] = create_widget('UploadFile', style=self.style, label="ייפוי כח")
        self.widgets['תצהיר עו"ד על רשימת נכסים חדשים שנבנו'] = create_widget('UploadFile', style=self.style,
                                                                              label='תצהיר עו"ד על רשימת נכסים חדשים שנבנו')
        self.widgets["מסמך מבעל הנכס על אישור היות הנכס ריק בזמן השכרתו"] = create_widget('UploadFile',
                                                                                          style=self.style,
                                                                                          label="מסמך מבעל הנכס על אישור היות הנכס ריק בזמן השכרתו")
        self.widgets["אישור על מינוי ככונס"] = create_widget('UploadFile', style=self.style,
                                                             label="אישור על מינוי ככונס")

        #STEP3
        self.widgets["הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"] = create_widget(
            'CheckBox', style=self.style,
            label="הריני מצהיר/ה בזה כי כל")
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox',
                                                                                                 style=self.style,
                                                                                                 label="אני מודע/ת ומסכים/ה לכך")
        self.widgets['הערות'] = create_widget('TextAreaField', style=self.style, label='הערות', index=2)

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הנכס":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "תצהיר ושליחה":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()

    def fill_first_page(self, context, mailbox, driver, current_page):
        self.widgets['שם פרטי'].set_text('דני')
        self.widgets['שם משפחה'].set_text('גלעד')
        self.widgets['סוג זיהוי'].select_element('ת.ז.')
        self.widgets['מספר ת.ז.'].set_text('1111111')
        self.widgets['טלפון נייד'].set_full_phone('052-8076834')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)

    def fill_second_page(self):
        self.widgets.current_step = 'פרטי הנכס'
        self.widgets["מס' חשבון תושב בארנונה"].set_text('2432434323')
        self.widgets['רחוב'].search_and_pick_first_element_and_validate('א טברי')
        self.widgets["מס' בית"].set_text('1')
        self.widgets['שטח החיוב במ"ר'].set_text('123')
        self.widgets['האם הארנונה רשומה על שם מבקש ההנחה?'].choose_value('כן')
        self.widgets['מצב הנכס'].choose_value('ריק')
        self.widgets['שימוש בנכס'].choose_value('מגורים')
        self.widgets["תאריך התחלה (לפני 30 ימים לפחות)"].set_text('01032023')
        self.widgets["תאריך סיום"].set_text('10042023')
        self.widgets['סיבת היות הנכס ריק'].choose_value('העדר שוכר/קונה')
        self.widgets['הסבר מה נעשה עם החפצים'].set_text('1')
        self.widgets['צילום תעודת זהות + ספח של מגיש הבקשה'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['חשבונות חשמל לתקופה בה הנכס עמד ריק'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets["המשך"].click_button()
