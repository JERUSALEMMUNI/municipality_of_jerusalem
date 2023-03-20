from infra.enums import UIStyle, StepNumber
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
        self.widgets['שם פרטי'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.SECOND)
        }
        self.widgets['שם משפחה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.SECOND)
        }
        self.widgets['סוג זיהוי'] = {
            'פרטי מגיש': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('Dropdown', style=self.style, label='סוג זיהוי', step_number=StepNumber.SECOND)
        }

        self.widgets['מספר ת.ז.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.SECOND)
        }
        self.widgets['מספר דרכון'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='מספר דרכון',
                                        step_number=StepNumber.SECOND)
        }
        self.widgets['מספר ח.פ.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='מספר ח.פ.', step_number=StepNumber.SECOND)
        }
        self.widgets['מספר עמותה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר עמותה', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='מספר עמותה',
                                        step_number=StepNumber.SECOND)
        }
        self.widgets['מספר מוסד'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='מספר מוסד', step_number=StepNumber.SECOND)
        }
        self.widgets['טלפון נייד'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                       step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                        step_number=StepNumber.SECOND)
        }
        self.widgets['טלפון קווי'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                       step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                        step_number=StepNumber.SECOND)
        }
        self.widgets['דוא"ל'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FIRST),
            'פרטי תשלום': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.SECOND)
        }

        self.widgets['חשבון / נכס'] = create_widget('TextField', style=self.style, label='חשבון / נכס')
        self.widgets['כתובת נכס'] = create_widget('TextField', style=self.style, label='כתובת נכס')
        self.widgets['בית'] = create_widget('TextNumberField', style=self.style, label='בית')
        self.widgets['בעל/ת החשבון שונה ממגיש הבקשה'] = create_widget('ButtonGroup', style=self.style,
                                                                      label="בעל/ת החשבון שונה ממגיש הבקשה")
        self.widgets['קוד מוטב להקמת ההרשאה'] = create_widget('Dropdown', style=self.style,
                                                              label='קוד מוטב להקמת ההרשאה')
        self.widgets['בנק'] = create_widget('DropdownSearch', style=self.style, label='בנק')
        self.widgets['סניף'] = create_widget('DropdownSearch', style=self.style, label='סניף')
        self.widgets['מספר חשבון'] = create_widget('TextNumberField', style=self.style, label='מספר חשבון')
        self.widgets['יום גביה חודשי'] = create_widget('Dropdown', style=self.style, label='יום גביה חודשי')
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets['אישור הרשאה לחיוב חשבון'] = create_widget('UploadFile', style=self.style,
                                                                label='אישור הרשאה לחיוב חשבון')
        self.widgets['צילום תעודת זהות + ספח'] = create_widget('UploadFile', style=self.style,
                                                               label='צילום תעודת זהות + ספח')
        self.widgets["הריני מצהיר/ה בזה כי כל"] = create_widget('CheckBox', style=self.style,
                                                                label="הריני מצהיר/ה בזה כי כל")
        self.widgets["אני מודע/ת ומסכים/ה לכך"] = create_widget('CaptchaBox', style=self.style,
                                                                label="אני מודע/ת ומסכים/ה לכך")

    def fill_form_to_reach_step(self, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי תשלום":
            self.fill_first_page(mailbox, driver, current_page)

    def fill_first_page(self, mailbox, driver, current_page):
        self.widgets["סוג זיהוי"].select_element('דרכון')
        self.widgets["מספר דרכון"].set_text('332796184')
        self.widgets["שם פרטי"].set_text("סוהייב")
        self.widgets["שם משפחה"].set_text("אבו גנאם")
        self.widgets['טלפון נייד'].set_full_phone('058-8078687')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(driver, mailbox, current_page)
