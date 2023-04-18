from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class TaboOnline(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'TaboOnline'
        self.url_postfix = 'TaboOnline'
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
        self.widgets['מספר ח.פ.'] = create_widget('TextField', style=self.style, label='מספר ח.פ.')
        self.widgets['מספר מוסד'] = create_widget('TextField', style=self.style, label='מספר מוסד')
        self.widgets['מספר עמותה'] = create_widget('TextField', style=self.style, label='מספר עמותה')
        self.widgets['פרטי הבקשה'] = create_widget('AccordionTable', style=self.style, label="פרטי הבקשה")
        self.widgets['סוג הבקשה'] = create_widget('ButtonGroup', style=self.style, label="סוג הבקשה")
        self.widgets['מגיש הבקשה הוא'] = create_widget('ButtonGroup', style=self.style, label="מגיש הבקשה הוא:")

        self.widgets["email"] = create_widget('EmailAuthentication', style=self.style, label="//..")
        self.widgets['סינופסיס קצר'] = create_widget('UploadFile', style=self.style, label='סינופסיס קצר')
        self.widgets['הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים'] = create_widget(
            'CheckBox', style=self.style,
            label='הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים')
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox',
                                                                                                 style=self.style,
                                                                                                 label="אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע")
        self.widgets['שמור'] = create_widget('ButtonField', style=self.style, label='שמור')
        self.widgets['שמור טיוטה'] = create_widget('ButtonField', style=self.style, label='שמור טיוטה')
        self.widgets['מנהל הרישום'] = create_widget('Dropdown', style=self.style, label='מנהל הרישום')
        self.widgets['סוג הנכס'] = create_widget('Dropdown', style=self.style, label='סוג הנכס')
        self.widgets['סוג הזכות'] = create_widget('Dropdown', style=self.style, label='סוג הזכות')
        self.widgets['סוג הפעולה המבוקשת'] = create_widget('Dropdown', style=self.style, label='סוג הפעולה המבוקשת')
        self.widgets['תאריך מסירת חזקה לקונה'] = create_widget('TextNumberField', style=self.style,
                                                               label='תאריך מסירת חזקה לקונה')
        self.widgets['סוג רישום'] = create_widget('Dropdown', style=self.style, label='סוג רישום')
        self.widgets['מס שטר חכירה'] = create_widget('TextField', style=self.style, label='שטר חכירה')
        self.widgets['תת חלקה'] = create_widget('TextField', style=self.style, label='תת חלקה')
        self.widgets['האם החלק מועבר בשלמות'] = create_widget('ButtonGroup', style=self.style,
                                                              label="האם החלק מועבר בשלמות")
        self.widgets['שם המחזיק המעודכן בארנונה זהה למגיש הבקשה'] = create_widget('ButtonGroup', style=self.style,
                                                                                  label="שם המחזיק המעודכן בארנונה זהה למגיש הבקשה")
        self.widgets['סך החלק המועבר'] = create_widget('TextNumberField', style=self.style,
                                                       label="סך החלק המועבר")
        self.widgets['סך החלק הרשום על שם המעבירים'] = create_widget('TextNumberField', style=self.style,
                                                                     label="סך החלק הרשום על שם המעבירים")

        self.widgets['שם המחזיק המעודכן בארנונה זהה למגיש הבקשה'] = create_widget('ButtonGroup', style=self.style,
                                                                                  label="שם המחזיק המעודכן בארנונה זהה למגיש הבקשה")
        self.widgets['האם יש שוכרים בנכס'] = create_widget('ButtonGroup', style=self.style,
                                                           label="האם יש שוכרים בנכס")
        self.widgets['סוג נכס'] = create_widget('Dropdown', style=self.style, label='סוג נכס')
        self.widgets['האם יש תת חלקה'] = create_widget('ButtonGroup', style=self.style, label='האם יש תת חלקה')
        self.widgets['סך החלק שמועבר'] = create_widget('TextNumberField', style=self.style,
                                                                     label="סך החלק שמועבר")

        self.widgets['מספר בית'] = create_widget('TextNumberField', style=self.style,
                                                                 label="מספר בית")

        self.widgets['גוש ברשם המקרקעין'] = create_widget('TextField', style=self.style,
                                           label="גוש ברשם המקרקעין")

        self.widgets['חלקה ברשם המקרקעין'] = create_widget('TextField', style=self.style,
                                                      label="חלקה ברשם המקרקעין")
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style,
                                                           label="רחוב")
    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי הבקשה":
            self.navigate_first_page(context, mailbox, driver, current_page)
        elif dst_step == "פרטי הנכס":
            self.navigate_first_page(context, mailbox, driver, current_page)
            self.navigate_to_second_page(mailbox)
        # elif dst_step == "צרופות":
        #     self.navigate_first_page(context, mailbox, driver, current_page)
        #     self.navigate_to_second_page(mailbox)
        #     self.navigate_to_third_page()

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
        self.widgets["סוג הבקשה"].choose_value("העברת זכויות")
        self.widgets["מנהל הרישום"].select_element('טאבו')
        self.widgets["סוג הנכס"].select_element('למגורים')
        self.widgets["סוג הזכות"].select_element('חכירה')
        self.widgets["סוג הפעולה המבוקשת"].select_element('מכירה או חכירה')
        self.widgets["תאריך מסירת חזקה לקונה"].set_text("11122022")
        self.widgets["מגיש הבקשה הוא"].choose_value("מעביר")

        self.widgets["פרטי הבקשה"].upload_file("1", "צילום תעודת זהות + ספח", "png_to_upload.png", table_index=1)

        self.widgets["פרטי הבקשה"].set_text_field("1", "שם פרטי", "סוהייב", table_index=2)
        self.widgets["פרטי הבקשה"].set_text_field("1", "שם משפחה", "אבו גנאם", table_index=2)
        self.widgets["פרטי הבקשה"].select_element("1", "סוג זיהוי", "ת.ז.", table_index=2)
        self.widgets["פרטי הבקשה"].set_text_field("1", "מספר ת.ז.", '319078861', table_index=2)
        self.widgets["פרטי הבקשה"].set_full_phone("1", 'טלפון נייד', '058-8078687', table_index=2)
        self.widgets["פרטי הבקשה"].set_text_field("1", 'דוא"ל', mailbox.address, table_index=2)
        self.widgets["פרטי הבקשה"].upload_file("1", "צילום תעודת זהות + ספח", "png_to_upload.png", table_index=2)

        self.widgets["המשך"].click_button()

    #
    # def navigate_to_third_page(self):
    #     self.widgets["פרטי המיקום ומועדי הצילומים"].set_text("1", "תאריך", "11112023")
    #     self.widgets["פרטי המיקום ומועדי הצילומים"].select_time("1", "שעת התחלה", "11:11")
    #     self.widgets["פרטי המיקום ומועדי הצילומים"].select_time("1", "שעת סיום", "22:11")
    #     self.widgets["פרטי המיקום ומועדי הצילומים"].set_text("1", "מספר אנשי צוות", "111")
    #     self.widgets["פרטי המיקום ומועדי הצילומים"].set_text("1", "שם האתר", "ירושלים")
    #     self.widgets["פרטי המיקום ומועדי הצילומים"].set_text("1", "כתובת", "גדגדכ")
    #     self.widgets["פרטי המיקום ומועדי הצילומים"].choose_button_from_value("1", "חסימת כביש", "נושמת")
    #     self.widgets["האם יש חיבור לחשמל/גנרטור"].choose_value("לא")
    #     self.widgets["פירוט שימוש באמצעי הפקה, אפקטים שונים (כגון ירי/פיצוץ)"].set_text(
    #         "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ")
    #     self.widgets["פירוט ציוד צילום"].set_text("גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ")
    #     self.widgets["המשך"].click_button()
