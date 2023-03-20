from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class PhotoPermission(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'PhotoPermission'
        self.url_postfix = 'PhotoPermission'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']

    def create_page_widgets(self):
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['טלפון קווי'] = create_widget('PhoneField', style=self.style, label='טלפון קווי')
        self.widgets['דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        # todo:check change it to dropdown or keep it as dropdownsearch
        self.widgets['סוג זיהוי'] = create_widget('DropdownSearch', style=self.style, label='סוג זיהוי')
        self.widgets['מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['מספר דרכון'] = create_widget('TextField', style=self.style, label='מספר דרכון')
        self.widgets["שם חברת ההפקה"] = create_widget('TextField', style=self.style, label="שם חברת ההפקה")
        self.widgets["טלפון חברת ההפקה"] = create_widget('PhoneField', style=self.style, label="טלפון חברת ההפקה")
        self.widgets["כתובת חברת ההפקה"] = create_widget('TextField', style=self.style, label="כתובת חברת ההפקה")
        self.widgets['שם מתאם ההפקה'] = create_widget('TextField', style=self.style, label="שם מתאם ההפקה")
        self.widgets["טלפון מתאם ההפקה"] = create_widget('PhoneField', style=self.style, label="טלפון מתאם ההפקה")
        self.widgets["שם הגורם עבורו מתבצע הצילום"] = create_widget('TextField', style=self.style,
                                                                    label="שם הגורם עבורו מתבצע הצילום")
        self.widgets["תיאור הצילום"] = create_widget('TextAreaField', style=self.style, label="תיאור הצילום")
        self.widgets["סוג המדיה"] = create_widget('DropdownSearch', style=self.style, label="סוג המדיה")
        self.widgets['פרטי ההפקה_דוא'] = create_widget('TextField', style=self.style, label="דוא", index=2)
        self.widgets['פרטי המיקום ומועדי הצילומים'] = create_widget('AccordionTable', style=self.style,
                                                                    label="פרטי המיקום ומועדי הצילומים")
        self.widgets['האם יש חיבור לחשמל/גנרטור'] = create_widget('ButtonGroup', style=self.style,
                                                                  label="האם יש חיבור לחשמל/גנרטור")
        self.widgets["דוא''ל"] = create_widget('TextField', style=self.style, label="דוא''ל")
        self.widgets["פירוט"] = create_widget('TextField', style=self.style, label="פירוט")
        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")

    def fill_form_to_reach_step(self, dst_step, mailbox):
        if dst_step == "פרטי מגיש הבקשה":
            self.navigate(mailbox)

        elif dst_step == "פרטי ההפקה":
            self.navigate(mailbox)
            # self.widgets['שם הכלב'].set_text('מרקוס')
            # self.widgets['גזע'].set_text('ביטבול')
            # self.widgets['מין'].choose_value('זכר')
            # self.widgets['צבע'].set_text('לבן')
            # self.widgets['מספר שבב'].set_text('2322322232')
            # self.widgets['שנת לידה'].select_element('2020')
            # self.widgets['הכלב מחוסן כנגד מחלת הכלבת?'].choose_value('כן')
            # self.widgets['תאריך חיסון כלבת אחרון'].second_calender('8/3/2020')
            # self.widgets['הכלב רשום ברשות המקומית'].select_element('אבו גוש')
            # self.widgets['תאריך מסירת הכלב'].second_calender('8/5/2021')
            # self.widgets["המשך"].click_button()

    def navigate(self,mailbox):
        self.widgets["סוג זיהוי"].select_element('דרכון')
        self.widgets["מספר דרכון"].set_text('332796184')
        self.widgets["שם פרטי"].set_text("סוהייב")
        self.widgets["שם משפחה"].set_text("אבו גנאם")
        self.widgets['טלפון נייד'].set_full_phone('058-8078687')
        self.widgets['דוא"ל'].set_text(mailbox)
        self.widgets["המשך"].click_button()
