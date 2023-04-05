from infra import config
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget
from infra.enums import UIStyle, StepNumber
import os


class ExemptionVolunteerInstitution(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.NEW)
        self.page_title = 'ExemptionVolunteerInstitution'
        self.url_postfix = 'ExemptionVolunteerInstitution'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי']

    def create_page_widgets(self):
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['טלפון נייד'] = create_widget('PhoneField', style=self.style, label='טלפון נייד')
        self.widgets['טלפון קווי'] = {
            'פרטי מגיש': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                       step_number=StepNumber.FIRST),
            'פרטי מוסד': create_widget('PhoneField', style=self.style, label='טלפון קווי',
                                       step_number=StepNumber.SECOND),
        }
        self.widgets['דוא"ל'] = create_widget('TextField', style=self.style, label='דוא"ל')
        self.widgets['סוג זיהוי'] = create_widget('Dropdown', style=self.style, label='סוג זיהוי')
        self.widgets['מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
        self.widgets['מספר דרכון'] = create_widget('TextField', style=self.style, label='מספר דרכון')
        self.widgets['מספר מוסד'] = create_widget('TextField', style=self.style, label='מספר מוסד')
        self.widgets['מספר ח.פ.'] = create_widget('TextField', style=self.style, label='מספר ח.פ.')
        self.widgets['מספר עמותה'] = create_widget('TextField', style=self.style, label='מספר עמותה')
        # step2-פרטי מוסד
        self.widgets['שם מוסד'] = create_widget('TextField', style=self.style, label='שם מוסד')
        self.widgets['צורת ההתאגדות'] = create_widget('Dropdown', style=self.style, label='צורת ההתאגדות')
        self.widgets['מספר רישום'] = create_widget('TextField', style=self.style, label='מספר רישום')
        # step2-כתובת מלאה של משרדו הרשום של המוסד
        self.widgets['ישוב'] = create_widget('DropdownSearch', style=self.style, label='ישוב')
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets["מס' בית"] = create_widget('TextField', style=self.style, label="מס' בית")
        self.widgets['האם העמותה מחזיקה בדירות מגורים?'] = create_widget('ButtonGroup', style=self.style,
                                                                         label="האם העמותה מחזיקה בדירות מגורים?")
        self.widgets['המטרות העיקריות של המוסד'] = create_widget('TextAreaField', style=self.style,
                                                                 label='המטרות העיקריות של המוסד')
        self.widgets['סקירת השירותים הניתנים על ידי המוסד והפעילויות המתבצעות במסגרתו'] = create_widget('TextAreaField',
                                                                                                        style=self.style,
                                                                                                        label='סקירת השירותים הניתנים על ידי המוסד והפעילויות המתבצעות במסגרתו')
        self.widgets['פירוט מלא של התמורה שהמוסד גובה עבור שירותיו/פעולותיו'] = create_widget('TextAreaField',
                                                                                              style=self.style,
                                                                                              label='פירוט מלא של התמורה שהמוסד גובה עבור שירותיו/פעולותיו')
        self.widgets['הקריטריונים/תנאי הזכאות לקבלת שירותים מהמוסד'] = create_widget('TextAreaField', style=self.style,
                                                                                     label='הקריטריונים/תנאי הזכאות לקבלת שירותים מהמוסד')
        self.widgets['פירוט האוכלוסיה הנהנית משירותי המוסד'] = create_widget('TextAreaField', style=self.style,
                                                                             label='פירוט האוכלוסיה הנהנית משירותי המוסד')
        self.widgets['האם המוסד קשור לארגון/תאגיד מקומי או ארצי אחר'] = create_widget('TextAreaField', style=self.style,
                                                                                      label='האם המוסד קשור לארגון/תאגיד מקומי או ארצי אחר')
        self.widgets['אחוז תושבי ירושלים המקבלים שירות מהעמותה מבין כלל מקבלי השירותים מהעמותה'] = create_widget(
            'TextField', style=self.style,
            label='אחוז תושבי ירושלים המקבלים שירות מהעמותה מבין כלל מקבלי השירותים מהעמותה')
        self.widgets['שמור טיוטה'] = create_widget('ButtonField', style=self.style, label='שמור טיוטה')
        # step3
        self.widgets['בעלי תפקידים'] = create_widget('AccordionTable', style=self.style, label="בעלי תפקידים")
        # step4
        self.widgets['פרוט נכסים'] = create_widget('AccordionTable', style=self.style, label="פרוט נכסים")

        # step5-files
        self.widgets["תעודת רישום כתאגיד"] = create_widget('UploadFile', style=self.style, label="תעודת רישום כתאגיד")
        self.widgets["מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)"] = create_widget('UploadFile',
                                                                                               style=self.style,
                                                                                               label="מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)")
        self.widgets['דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*'] = create_widget('UploadFile',
                                                                                           style=self.style,
                                                                                           label='דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*')
        self.widgets['דו"ח כספי לשנה החולפת*'] = create_widget('UploadFile', style=self.style,
                                                               label='דו"ח כספי לשנה החולפת*')
        self.widgets['תקציב המוסד לשנה הנוכחית'] = create_widget('UploadFile', style=self.style,
                                                                 label='תקציב המוסד לשנה הנוכחית')
        self.widgets[
            "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)"] = create_widget(
            'UploadFile', style=self.style,
            label="אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף) ")
        self.widgets["אישור בדבר ניהול תקין תקף"] = create_widget('UploadFile', style=self.style,
                                                                  label="אישור בדבר ניהול תקין תקף")
        self.widgets['אישור מלכ"ר ממשרדי מע"מ'] = create_widget('UploadFile', style=self.style,
                                                                label='אישור מלכ"ר ממשרדי מע"מ')
        self.widgets['אישור מוסד ציבורי'] = create_widget('UploadFile', style=self.style, label='אישור מוסד ציבורי')
        self.widgets[
            'דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין'] = create_widget(
            'UploadFile', style=self.style,
            label='דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין')
        self.widgets['חוזה שכירות או נסח טאבו'] = create_widget('UploadFile', style=self.style,
                                                                label='חוזה שכירות או נסח טאבו')
        self.widgets[
            'תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים'] = create_widget(
            'UploadFile', style=self.style,
            label='תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים')
        self.widgets['הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד'] = create_widget('UploadFile', style=self.style,
                                                                                         label='הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד')
        self.widgets["אחר"] = create_widget('UploadFile', style=self.style, label="אחר")

        # step6
        self.widgets["הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"] = create_widget(
            'CheckBox', style=self.style,
            label="הריני מצהיר/ה בזה כי כל")
        self.widgets["אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"] = create_widget('CaptchaBox',
                                                                                                 style=self.style,
                                                                                                 label="אני מודע/ת ומסכים/ה לכך")
        self.widgets['הערות'] = create_widget('TextAreaField', style=self.style, label='הערות', index=2)

    def fill_form_to_reach_step(self, context, dst_step, mailbox, driver, current_page):
        if dst_step == "פרטי מוסד":
            self.fill_first_page(context, mailbox, driver, current_page)

        elif dst_step == "בעלי תפקידים":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()

        elif dst_step == "פרוט נכסים":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()
            self.fill_third_page()

        elif dst_step == "מסמכים":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()
            self.fill_third_page()
            self.fill_fourth_page()

        elif dst_step == "תצהיר ושליחה":
            self.fill_first_page(context, mailbox, driver, current_page)
            self.fill_second_page()
            self.fill_third_page()
            self.fill_fourth_page()
            self.fill_fifth_page()

    def fill_first_page(self, context, mailbox, driver, current_page):
        self.widgets['שם פרטי'].set_text('דני')
        self.widgets['שם משפחה'].set_text('גלעד')
        self.widgets['סוג זיהוי'].select_element('דרכון')
        self.widgets['מספר דרכון'].set_text('332796182')
        self.widgets['טלפון נייד'].set_full_phone('052-8076834')
        self.widgets['דוא"ל'].set_text(mailbox.address)
        self.widgets["המשך"].click_button()
        self.widgets["email"].go_to_next_step(context, driver, mailbox, current_page)

    def fill_second_page(self):
        self.widgets.current_step = 'פרטי מוסד'
        self.widgets['שם מוסד'].set_text('ווסאם')
        self.widgets['צורת ההתאגדות'].select_element('חברה')
        self.widgets['מספר רישום'].set_text('1')
        self.widgets['ישוב'].search_and_pick_first_element_and_validate('ירושלים')
        self.widgets['רחוב'].search_and_pick_first_element_and_validate('א טברי')
        self.widgets["מס' בית"].set_text('1')
        self.widgets['טלפון קווי'].set_full_phone('02-8076834')
        self.widgets['האם העמותה מחזיקה בדירות מגורים?'].choose_value('כן')
        self.widgets['המטרות העיקריות של המוסד'].set_text('2')
        self.widgets['סקירת השירותים הניתנים על ידי המוסד והפעילויות המתבצעות במסגרתו'].set_text('2')
        self.widgets['פירוט מלא של התמורה שהמוסד גובה עבור שירותיו/פעולותיו'].set_text('2')
        self.widgets['הקריטריונים/תנאי הזכאות לקבלת שירותים מהמוסד'].set_text('2')
        self.widgets['פירוט האוכלוסיה הנהנית משירותי המוסד'].set_text('2')
        self.widgets['האם המוסד קשור לארגון/תאגיד מקומי או ארצי אחר'].set_text('2')
        self.widgets['אחוז תושבי ירושלים המקבלים שירות מהעמותה מבין כלל מקבלי השירותים מהעמותה'].set_text('2')
        self.widgets["המשך"].click_button()

    def fill_third_page(self):
        self.widgets.current_step = 'בעלי תפקידים'
        self.widgets["בעלי תפקידים"].select_element("1", "בעל תפקיד", "עורך דין")
        self.widgets["בעלי תפקידים"].choose_button_from_value("1", "האם בעל התפקיד שונה ממגיש הבקשה?", "לא")
        self.widgets["המשך"].click_button()

    def fill_fourth_page(self):
        self.widgets.current_step = 'פרוט נכסים'
        self.widgets["פרוט נכסים"].set_text_field("1", "זיהוי נכס או מס' חשבון ארנונה", "1234567890")
        self.widgets["פרוט נכסים"].search_and_pick_first_element_and_validate("רחוב", "1", "א טברי")
        self.widgets["פרוט נכסים"].set_text_field("1", "מס' בית", "2")
        self.widgets["פרוט נכסים"].set_text_field("1", 'שטח החיוב במ"ר', "123")
        self.widgets["פרוט נכסים"].set_text_field("1", "סכום הארנונה הנדרש", "1222")
        self.widgets["פרוט נכסים"].select_element("1", "האם הנכס משמש אדם או גוף אחר?", "כן")
        self.widgets["פרוט נכסים"].set_textarea_field("1", "סוג הפעילות המפורט בנכס", "דדדדדד")
        self.widgets["המשך"].click_button()

    def fill_fifth_page(self):
        self.widgets.current_step = 'מסמכים'
        self.widgets['תעודת רישום כתאגיד'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['דו"ח כספי לשנה החולפת*'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['תקציב המוסד לשנה הנוכחית'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets[
            'אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['אישור בדבר ניהול תקין תקף'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['אישור מלכ"ר ממשרדי מע"מ'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['אישור מוסד ציבורי'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets[
            'דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['חוזה שכירות או נסח טאבו'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets[
            'תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד'].upload_file(
            os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets['אחר'].upload_file(os.path.join(config.utilities_folder, 'files_to_upload', "png_to_upload.png"))
        self.widgets["המשך"].click_button()
