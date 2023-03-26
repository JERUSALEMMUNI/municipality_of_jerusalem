from infra.enums import UIStyle, StepNumber
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget
import os
from infra import config


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
            'פרטי נכס': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='שם פרטי',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='שם פרטי',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['שם משפחה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='שם משפחה',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='שם משפחה',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['סוג זיהוי'] = {
            'פרטי מגיש': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('Dropdown', style=self.style, label='סוג זיהוי',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('Dropdown', style=self.style, label='סוג זיהוי',
                                            step_number=StepNumber.FOURTH)
        }
        # todo: the page accept the id number without doing the dict
        self.widgets['מספר ת.ז.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר ת.ז.',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר ת.ז.',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר דרכון'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר דרכון',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר דרכון',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר ח.פ.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר ח.פ.',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר ח.פ.',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר עמותה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר עמותה',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר עמותה',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['מספר מוסד'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='מספר מוסד',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='מספר מוסד',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['טלפון נייד'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                       step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                      step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['טלפון קווי'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                       step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                      step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                            step_number=StepNumber.FOURTH)
        }
        self.widgets['דוא"ל'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FIRST),
            'פרטי נכס': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.SECOND),
            'פרטי מחזיק נוכחי': create_widget('TextField', style=self.style, label='דוא"ל',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FOURTH)
        }
        self.widgets['צילום תעודת זהות + ספח של בעל החשבון'] = {
            'פרטי מחזיק נוכחי': create_widget('UploadFile', style=self.style,
                                              label='צילום תעודת זהות + ספח של בעל החשבון',
                                              step_number=StepNumber.THIRD),
            'פרטי מחזיק חדש': create_widget('UploadFile', style=self.style,
                                            label='צילום תעודת זהות + ספח של בעל החשבון', step_number=StepNumber.FOURTH)
        }

        self.widgets['חשבון תושב בארנונה'] = create_widget('TextField', style=self.style, label='חשבון תושב בארנונה')
        self.widgets['בית'] = create_widget('TextNumberField', style=self.style, label='בית')
        self.widgets['תאריך עזיבה'] = create_widget('TextNumberField', style=self.style, label='תאריך עזיבה')
        self.widgets['תאריך כניסה'] = create_widget('TextNumberField', style=self.style, label='תאריך כניסה')
        self.widgets['הערות'] = create_widget('TextAreaField', style=self.style, label='הערות', index=2)
        self.widgets['סוג הנכס'] = create_widget('ButtonGroup', style=self.style, label="סוג הנכס")
        self.widgets['מי מגיש הבקשה?'] = create_widget('ButtonGroup', style=self.style, label="מגיש הבקשה: ")
        self.widgets['מהי הפעולה המבוקשת?'] = create_widget('ButtonGroup', style=self.style,
                                                            label="מהי הפעולה המבוקשת?")
        self.widgets['האם בעל הנכס הוא המחזיק הנוכחי?'] = create_widget('ButtonGroup', style=self.style,
                                                                        label="האם בעל הנכס הוא המחזיק הנוכחי?")
        self.widgets['חוזה שבו מופיע תאריך כניסה לדירה'] = create_widget('UploadFile', style=self.style,
                                                                         label='חוזה שבו מופיע תאריך כניסה לדירה')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget(
            'CheckBox', style=self.style,
            label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox',
                                                                                                 style=self.style,
                                                                                                 label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")
        self.widgets['דירת שותפים'] = create_widget('ButtonGroup', style=self.style, label="דירת שותפים")
        self.widgets['האם כל השותפים עוזבים'] = create_widget('ButtonGroup', style=self.style,
                                                              label="האם כל השותפים עוזבים")
        self.widgets['שמות השותפים שעוזבים'] = create_widget('TextAreaField', style=self.style,
                                                             label='שמות השותפים שעוזבים')
        self.widgets['צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות'] = create_widget('UploadFile',
                                                                                           style=self.style,
                                                                                           label='צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות')
        self.widgets['האם היורש הוא המחזיק הנוכחי?'] = create_widget('ButtonGroup', style=self.style,
                                                                     label="האם היורש הוא המחזיק הנוכחי?")
        self.widgets['יפוי כח'] = create_widget('UploadFile', style=self.style, label='יפוי כח')
        self.widgets['שמור'] = create_widget('ButtonField', style=self.style, label='שמור')
        self.widgets['שמור טיוטה'] = create_widget('ButtonField', style=self.style, label='שמור טיוטה')

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי נכס":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "פרטי מחזיק נוכחי":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()

        elif dst_step == "פרטי מחזיק חדש":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()
            self.fill_third_page(driver)

        elif dst_step == "תצהיר ושליחה":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()
            self.fill_third_page(driver)
            # self.widgets['שם פרטי'].set_text('דני')
            # self.widgets['שם משפחה'].set_text('גלעד')
            # self.widgets['סוג זיהוי'].select_element('דרכון')
            # self.widgets['מספר דרכון'].set_text('332796182')
            # self.widgets['טלפון נייד'].set_full_phone('052-8076834')
            # self.widgets['דוא"ל'].set_text(mailbox.address)
            # self.widgets['תאריך כניסה'].set_text('22022023')
            # self.widgets['צילום תעודת זהות + ספח של בעל החשבון'].upload_file(os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"), driver)
            # self.widgets['חוזה שבו מופיע תאריך כניסה לדירה'].upload_file(os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"), driver)
            # self.widgets["המשך"].click_button()

    def fill_first_page(self, context, mailbox, driver, current_page):
        self.widgets['שם פרטי'].set_text('דני')
        self.widgets['שם משפחה'].set_text('גלעד')
        self.widgets['סוג זיהוי'].select_element('דרכון')
        self.widgets['מספר דרכון'].set_text('332796182')
        self.widgets['טלפון נייד'].set_full_phone('052-8076834')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)

    def fill_second_page(self):
        self.widgets['חשבון תושב בארנונה'].set_text('5434533444')
        self.widgets['רחוב'].select_element('א טור')
        self.widgets['בית'].set_text('2')
        self.widgets['סוג הנכס'].choose_value('למגורים')
        self.widgets['מי מגיש הבקשה?'].choose_value('בעל הנכס')
        self.widgets['מהי הפעולה המבוקשת?'].choose_value('רישום שוכר חדש')
        self.widgets["המשך"].click_button()

    def fill_third_page(self, driver):
        self.widgets['האם בעל הנכס הוא המחזיק הנוכחי?'].choose_value('כן')
        self.widgets['תאריך עזיבה'].set_text('22022023')
        # self.widgets['צילום תעודת זהות + ספח של בעל החשבון'].upload_file(
        #     os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"), driver)
        # self.widgets["המשך"].click_button()
