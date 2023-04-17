from infra import config
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget
from infra.enums import UIStyle, StepNumber
import os


class DirectContactToAssessment(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'DirectContactToAssessment'
        self.url_postfix = 'DirectContactToAssessment'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']

    def create_page_widgets(self):
        self.widgets['שם פרטי'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם פרטי', step_number=StepNumber.FIRST)
        }

        self.widgets['שם משפחה'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='שם משפחה', step_number=StepNumber.FIRST)
        }

        self.widgets['סוג זיהוי'] = {
            'פרטי מגיש': create_widget('DropdownSearch', style=self.style, label='סוג זיהוי',
                                       step_number=StepNumber.FIRST)
        }
        self.widgets['מספר ת.ז.'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר ת.ז.', step_number=StepNumber.FIRST)
        }
        self.widgets['מספר דרכון'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='מספר דרכון', step_number=StepNumber.FIRST)
        }


        self.widgets['טלפון נייד'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון נייד',
                                       step_number=StepNumber.FIRST)
        }

        self.widgets['טלפון קווי'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                       step_number=StepNumber.FIRST)
        }
        self.widgets['דוא"ל'] = {
            'פרטי מגיש': create_widget('TextField', style=self.style, label='דוא"ל', step_number=StepNumber.FIRST)
        }

        # step2-פרטי בקשה
        self.widgets["מס' חשבון / נכס"] = create_widget('TextField', style=self.style, label="מס' חשבון / נכס")
        self.widgets['רחוב'] = create_widget('TextField', style=self.style, label='רחוב')
        self.widgets['עיר'] = create_widget('TextField', style=self.style, label='עיר')
        self.widgets["מספר בית"] = create_widget('TextNumberField', style=self.style, label="מספר בית")
        self.widgets["תוכן הפניה"] = create_widget('TextAreaField', style=self.style, label="תוכן הפניה", index=2)
        self.widgets["אנא פרט..."] = create_widget('TextAreaField', style=self.style, label="אנא פרט...")
        self.widgets["אנא פרט 2"] = create_widget('TextAreaField', style=self.style, label="אנא פרט...", index=2)
        self.widgets['האם פנית בנושא זה בעבר?'] = create_widget('ButtonGroup', style=self.style,
                                                                         label="האם פנית בנושא זה בעבר?")
        self.widgets['האם פנית במקביל לגורם נוסף בעירייה?'] = create_widget('ButtonGroup', style=self.style,
                                                                label="האם פנית במקביל לגורם נוסף בעירייה?")


        self.widgets['האם הארנונה רשומה על שם מבקש ההנחה?'] = create_widget('ButtonGroup', style=self.style,
                                                                            label="האם הארנונה רשומה על שם מבקש ההנחה?")

        self.widgets["אחר"] = create_widget('UploadFile', style=self.style, label="אחר")

        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים'] = create_widget('CheckBox', style=self.style,
                                                                                       label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox',
                                                                                                 style=self.style,
                                                                                                 label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי בקשה":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "צרופות":
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
        self.widgets.current_step = 'פרטי בקשה'
        self.widgets["מס' חשבון / נכס"].set_text('2432434323')
        self.widgets['רחוב'].set_text('א טברי')
        self.widgets["מספר בית"].set_text('1')
        self.widgets['עיר'].set_text('ירושלים')
        self.widgets['תוכן הפניה'].set_text('גדגדגדגדגדדגגג')
        self.widgets['האם פנית בנושא זה בעבר?'].choose_value('כן')
        self.widgets['אנא פרט...'].set_text('גדגדגדגדגדדגגג')
        self.widgets['האם פנית במקביל לגורם נוסף בעירייה?'].choose_value('לא')
        self.widgets["המשך"].click_button()

