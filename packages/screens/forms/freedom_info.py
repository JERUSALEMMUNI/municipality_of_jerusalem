from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class FreedomInfo(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'FreedomInfo'
        self.url_postfix = 'FreedomInfo'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']

    def create_page_widgets(self):
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי')
        self.widgets['דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        self.widgets['סוג זיהוי'] = create_widget('Dropdown', style=self.style, label='סוג זיהוי')
        self.widgets['מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['מספר דרכון'] = create_widget('TextField', style=self.style, label='מספר דרכון')
        self.widgets['יישוב'] = create_widget('DropdownSearch',style=self.style,label='יישוב')
        self.widgets['רחוב'] = create_widget('DropdownSearch',style=self.style,label='רחוב: ')
        self.widgets['מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['מיקוד'] = create_widget('TextField', style=self.style, label='מיקוד')
        self.widgets['סוג המידע המבוקש'] = create_widget('Dropdown', style=self.style, label='סוג המידע המבוקש')
        self.widgets['המידע מבוקש על ידי מקבל קצבה'] = create_widget('ButtonGroup', style=self.style, label="המידע "
                                                                                                            "מבוקש על"
                                                                                                            " ידי "
                                                                                                            "מקבל קצבה")
        self.widgets['המידע מבוקש'] = create_widget('ButtonGroup', style=self.style, label="המידע מבוקש")
        self.widgets['נושא הבקשה'] = create_widget('TextField', style=self.style, label='נושא הבקשה')
        self.widgets['תיאור הבקשה'] = create_widget('TextAreaField', style=self.style, label='תיאור הבקשה')

        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")
        self.widgets['צילום תעודה מזהה'] = create_widget('UploadFile', style=self.style, label='צילום תעודה מזהה')
        self.widgets['מסמכים נוספים'] = create_widget('UploadFile', style=self.style, label='מסמכים נוספים')
        self.widgets['הנני מתחייב לשאת באגרת איתור וטיפול באגרת הפקה'] = create_widget('CheckBox', style=self.style,
                                                                                       label='הנני מתחייב לשאת באגרת '
                                                                                             'איתור וטיפול באגרת הפקה')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox',
                                                                                                 style=self.style,
                                                                                                 label="אני מודע/ת "
                                                                                                       "ומסכים/ה לכך "
                                                                                                       "שהעירייה תהיה "
                                                                                                       "רשאית"
                                                                                                       "להשתמש במידע")
        self.widgets['שמור'] = create_widget('ButtonField', style=self.style, label='שמור')
        self.widgets['שמור טיוטה'] = create_widget('ButtonField', style=self.style, label='שמור טיוטה')

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי המגיש":
            self.navigate_first_page(context, mailbox, driver, current_page)
        elif dst_step == "סוג המידע":
            self.navigate_first_page(context, mailbox, driver, current_page)
            self.navigate_to_second_page(mailbox)
        elif dst_step == "פרטי הבקשה":
            self.navigate_first_page(context, mailbox, driver, current_page)
            self.navigate_to_second_page(mailbox)
            self.navigate_to_third_page()

    def navigate_first_page(self, context, mailbox, driver, current_page):
        self.widgets["שם פרטי"].set_text("סוהייב")
        self.widgets["שם משפחה"].set_text("אבו גנאם")
        self.widgets["סוג זיהוי"].select_element('ת.ז.')
        self.widgets["מספר ת.ז."].set_text('332796184')
        self.widgets['טלפון נייד'].set_full_phone('058-8078687')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)

    def navigate_to_second_page(self, mailbox):
        pass

    def navigate_to_third_page(self):
        pass
