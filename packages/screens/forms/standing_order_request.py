from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class StandingOrderRequest(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'StandingOrderRequest'
        self.url_postfix = 'StandingOrderRequest'
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
        self.widgets['חשבון / נכס'] = create_widget('TextField', style=self.style, label='חשבון / נכס')
        self.widgets['כתובת נכס'] = create_widget('TextField', style=self.style, label='כתובת נכס')
        self.widgets['בית'] = create_widget('TextNumberField', style=self.style, label='בית')
        self.widgets['בעל/ת החשבון שונה ממגיש הבקשה'] = create_widget('ButtonGroup', style=self.style,
                                                                      label="בעל/ת החשבון שונה ממגיש הבקשה")
        self.widgets['קוד מוטב להקמת ההרשאה'] = create_widget('Dropdown', style=self.style, label='קוד מוטב להקמת ההרשאה')
        self.widgets['בנק'] = create_widget('DropdownSearch', style=self.style, label='בנק')
        self.widgets['סניף'] = create_widget('DropdownSearch', style=self.style, label='סניף')
        self.widgets['מספר חשבון'] = create_widget('TextNumberField', style=self.style, label='מספר חשבון')
        self.widgets['יום גביה חודשי'] = create_widget('Dropdown', style=self.style, label='יום גביה חודשי')
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets['אישור הרשאה לחיוב חשבון'] = create_widget('UploadFile', style=self.style, label='אישור הרשאה לחיוב חשבון')
        self.widgets['צילום תעודת זהות + ספח'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות + ספח')
        self.widgets["הריני מצהיר/ה בזה כי כל"] = create_widget('CheckBox', style=self.style, label="הריני מצהיר/ה בזה כי כל")
        self.widgets["אני מודע/ת ומסכים/ה לכך"] = create_widget('CaptchaBox', style=self.style,
                                                                label="אני מודע/ת ומסכים/ה לכך")

    def fill_form_to_reach_step(self, dst_step, mailbox):
        if dst_step == "פרטי מגיש":
            self.navigate(mailbox)

        elif dst_step == "פרטי תשלום":
            self.navigate(mailbox)

    def navigate(self, mailbox):
        self.widgets["סוג זיהוי"].select_element('דרכון')
        self.widgets["מספר דרכון"].set_text('332796184')
        self.widgets["שם פרטי"].set_text("סוהייב")
        self.widgets["שם משפחה"].set_text("אבו גנאם")
        self.widgets['טלפון נייד'].set_full_phone('058-8078687')
        self.widgets['דוא"ל'].set_text(mailbox)
        self.widgets["המשך"].click_button()
