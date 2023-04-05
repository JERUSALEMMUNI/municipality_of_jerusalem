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
        self.widgets['סוג זיהוי'] = create_widget('Dropdown', style=self.style, label='סוג זיהוי')
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
        self.widgets["סוג המדיה"] = create_widget('Dropdown', style=self.style, label="סוג המדיה")
        self.widgets['פרטי ההפקה_דוא'] = create_widget('TextField', style=self.style, label="דוא", index=2)
        self.widgets['פרטי המיקום ומועדי הצילומים'] = create_widget('AccordionTable', style=self.style,
                                                                    label="פרטי המיקום ומועדי הצילומים")
        self.widgets['האם יש חיבור לחשמל/גנרטור'] = create_widget('ButtonGroup', style=self.style,
                                                                  label="האם יש חיבור לחשמל/גנרטור")
        self.widgets["דוא''ל"] = create_widget('TextField', style=self.style, label="דוא''ל")
        self.widgets["פירוט"] = create_widget('TextField', style=self.style, label="פירוט")
        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")
        self.widgets["פירוט השימוש בחשמל"] = create_widget('TextAreaField', style=self.style,
                                                           label="פירוט השימוש בחשמל")
        self.widgets["פירוט ציוד צילום"] = create_widget('TextAreaField', style=self.style, label="פירוט ציוד צילום")
        self.widgets["פירוט שימוש באמצעי הפקה, אפקטים שונים (כגון ירי/פיצוץ)"] = create_widget('TextAreaField',
                                                                                               style=self.style,
                                                                                               label="פירוט שימוש באמצעי הפקה, אפקטים שונים (כגון ירי/פיצוץ)")
        self.widgets['צילום ת.ז. / דרכון'] = create_widget('UploadFile', style=self.style, label='צילום ת.ז. / דרכון')
        self.widgets['כתב התחייבות'] = create_widget('UploadFile', style=self.style, label='כתב התחייבות')
        self.widgets['העתק ביטוח צד ג'] = create_widget('UploadFile', style=self.style, label='העתק ביטוח צד ג')
        self.widgets['סינופסיס קצר'] = create_widget('UploadFile', style=self.style, label='סינופסיס קצר')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget(
            'CheckBox', style=self.style,
            label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox',
                                                                                                 style=self.style,
                                                                                                 label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")
        self.widgets['שמור'] = create_widget('ButtonField', style=self.style, label='שמור')
        self.widgets['שמור טיוטה'] = create_widget('ButtonField', style=self.style, label='שמור טיוטה')

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי ההפקה":
            self.navigate_first_page(context, mailbox, driver, current_page)
        elif dst_step == "פרטי המיקום ומועדי הצילומים":
            self.navigate_first_page(context, mailbox, driver, current_page)
            self.navigate_to_second_page(mailbox)
        elif dst_step == "צרופות":
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
        self.widgets["סוג זיהוי"].select_element('דרכון')
        self.widgets["מספר דרכון"].set_text('332796184')
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)

    def navigate_to_second_page(self, mailbox):
        self.widgets["שם חברת ההפקה"].set_text("ככגדכגד")
        self.widgets['טלפון חברת ההפקה'].set_full_phone('058-8078687')
        self.widgets["כתובת חברת ההפקה"].set_text("ככגדכגד")
        self.widgets["שם מתאם ההפקה"].set_text("ככגדכגד")
        self.widgets['טלפון מתאם ההפקה'].set_full_phone('058-8078687')
        self.widgets["דוא''ל"].set_text(mailbox.address)
        self.widgets["שם הגורם עבורו מתבצע הצילום"].set_text("ככגדכגד")
        self.widgets["סוג המדיה"].select_element('סרט סטודנטים')
        self.widgets["תיאור הצילום"].set_text("גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ")
        self.widgets["המשך"].click_button()

    def navigate_to_third_page(self):
        self.widgets["פרטי המיקום ומועדי הצילומים"].set_text_field("1", "תאריך", "11112023")
        self.widgets["פרטי המיקום ומועדי הצילומים"].select_time("1", "שעת התחלה", "11:11")
        self.widgets["פרטי המיקום ומועדי הצילומים"].select_time("1", "שעת סיום", "22:11")
        self.widgets["פרטי המיקום ומועדי הצילומים"].set_text_field("1", "מספר אנשי צוות", "111")
        self.widgets["פרטי המיקום ומועדי הצילומים"].set_text_field("1", "שם האתר", "ירושלים")
        self.widgets["פרטי המיקום ומועדי הצילומים"].set_text_field("1", "כתובת", "גדגדכ")
        self.widgets["פרטי המיקום ומועדי הצילומים"].choose_button_from_value("1", "חסימת כביש", "נושמת")
        self.widgets["האם יש חיבור לחשמל/גנרטור"].choose_value("לא")
        self.widgets["פירוט שימוש באמצעי הפקה, אפקטים שונים (כגון ירי/פיצוץ)"].set_text(
            "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ")
        self.widgets["פירוט ציוד צילום"].set_text("גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ")
        self.widgets["המשך"].click_button()
