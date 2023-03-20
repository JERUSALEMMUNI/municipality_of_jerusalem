from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class TreeCut(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'TreeCut'
        self.url_postfix = 'TreeCut'
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
        self.widgets['פרטי העקירה_מספר בית'] = create_widget('TextNumberField', style=self.style, label='מספר בית',
                                                             index=2)
        self.widgets['פרטי מגיש הבקשה_מספר בית'] = create_widget('TextNumberField', style=self.style, label='מספר בית')
        self.widgets['פרטי העקירה_רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב', index=2)
        self.widgets['פרטי מגיש הבקשה_רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets['רשימת עצים'] = create_widget('AccordionTable', style=self.style, label="רשימת עצים")
        self.widgets['גוש'] = create_widget('TextField', style=self.style, label='גוש')
        self.widgets['חלקה'] = create_widget('TextField', style=self.style, label='חלקה')
        self.widgets['סיבת העקירה'] = create_widget('Dropdown', style=self.style, label='סיבת העקירה')
        self.widgets['האם מדובר בבית משותף?'] = create_widget('ButtonGroup', style=self.style,
                                                              label="האם מדובר בבית משותף?")
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets['אישור לבית משותף'] = create_widget('UploadFile', style=self.style, label='אישור לבית משותף')
        self.widgets["מגיש הבקשה מצהיר"] = create_widget('CheckBox', style=self.style, label="מגיש הבקשה מצהיר")
        self.widgets["אני מודע/ת ומסכים/ה לכך"] = create_widget('CaptchaBox', style=self.style,
                                                                label="אני מודע/ת ומסכים/ה לכך")

        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")

    def fill_form_to_reach_step(self, dst_step, mailbox):
        if dst_step == "פרטי מגיש הבקשה":
            self.navigate(mailbox)

        elif dst_step == "פרטי הבקשה":
            self.navigate(mailbox)

    def navigate(self, mailbox):
        self.widgets["סוג זיהוי"].select_element('דרכון')
        self.widgets["מספר דרכון"].set_text('332796184')
        self.widgets["שם פרטי"].set_text("סוהייב")
        self.widgets["שם משפחה"].set_text("אבו גנאם")
        self.widgets['טלפון נייד'].set_full_phone('058-8078687')
        self.widgets['דוא"ל'].set_text(mailbox)
        self.widgets['פרטי מגיש הבקשה_מספר בית'].set_text("2")
        self.widgets['פרטי מגיש הבקשה_רחוב'].search_element("א נחיל")
        self.widgets["המשך"].click_button()
