import os
from infra import config
from infra.enums import UIStyle, StepNumber
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

        self.widgets['מספר בית'] = {
            'פרטי מגיש הבקשה': create_widget('TextNumberField', style=self.style, label='מספר בית', step_number=StepNumber.FIRST),
            'פרטי הבקשה': create_widget('TextNumberField', style=self.style, label='מספר בית', step_number=StepNumber.SECOND)
        }
        self.widgets['רחוב'] = {
            'פרטי מגיש הבקשה': create_widget('DropdownSearch', style=self.style, label='רחוב', step_number=StepNumber.FIRST),
            'פרטי הבקשה': create_widget('DropdownSearch', style=self.style, label='רחוב', step_number=StepNumber.SECOND)
        }

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

    def fill_form_to_reach_step(self,context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הבקשה":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "הצהרה":
            self.fill_first_page(context, mailbox, driver, current_page)
            # current_page = "פרטי הבקשה"
            # self.widgets['רחוב'].search_element("א נחיל")
            # self.widgets['מספר בית']['פרטי הבקשה'].set_text("101")
            # self.widgets['גוש'].set_text("324")
            # self.widgets['חלקה'].set_text("907")
            # self.widgets['רשימת עצים'].upload_file("1", "תמונה של העץ", os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"), driver)
            # self.widgets['רשימת עצים'].choose_item("1", "סוג העץ", "הסלע")
            # self.widgets['סיבת העקירה'].select_element('סכנה')
            # self.widgets['האם מדובר בבית משותף?'].choose_value('לא')
            # self.widgets["המשך"].click_button()

    def fill_first_page(self, context, mailbox, driver, current_page):
        self.widgets["סוג זיהוי"].select_element('דרכון')
        self.widgets["מספר דרכון"].set_text('332796184')
        self.widgets["שם פרטי"].set_text("סוהייב")
        self.widgets["שם משפחה"].set_text("אבו גנאם")
        self.widgets['טלפון נייד'].set_full_phone('058-8078687')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets['מספר בית'].set_text("2")
        self.widgets['רחוב'].search_and_pick_first_element_and_validate("א נחיל")
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)

