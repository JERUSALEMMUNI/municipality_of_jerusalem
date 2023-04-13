from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class ConfirmationForStructure(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'ConfirmationForStructure'
        self.url_postfix = 'ConfirmationForStructure'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']

    def create_page_widgets(self):
        self.widgets['המשך'] = create_widget('ButtonField', style=self.style, label='המשך')
        self.widgets['מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי')
        self.widgets['דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        self.widgets['מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה')
        self.widgets['גוש'] = create_widget('TextField', style=self.style, label='גוש')
        self.widgets['חלקה'] = create_widget('TextField', style=self.style, label='חלקה')
        self.widgets['תת חלקה'] = create_widget('TextField', style=self.style, label='תת חלקה')
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets["אני מודע/ת ומסכים/ה לכך"] = create_widget('CaptchaBox', style=self.style,
                                                                label="אני מודע/ת ומסכים/ה לכך")
        self.widgets['שמור'] = create_widget('ButtonField', style=self.style, label='שמור')
        self.widgets['שמור טיוטה'] = create_widget('ButtonField', style=self.style, label='שמור טיוטה')

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הנכס":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "הזדהות ושליחה":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.widgets['רחוב'].search_and_pick_first_element_and_validate("א נחיל")
            self.widgets['מספר בית'].set_text("101")
            self.widgets['גוש'].set_text("324")
            self.widgets['מספר דירה'].set_text("22")
            self.widgets['חלקה'].set_text("907")
            self.widgets['תת חלקה'].set_text("907")
            self.widgets["המשך"].click_button()

    def fill_first_page(self, context, mailbox, driver, current_page):
        self.widgets["מספר ת.ז."].set_text('332796184')
        self.widgets["שם פרטי"].set_text("סוהייב")
        self.widgets["שם משפחה"].set_text("אבו גנאם")
        self.widgets['טלפון נייד'].set_full_phone('058-8078687')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)
