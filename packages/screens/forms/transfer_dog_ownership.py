from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class TransferDogOwnership(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'TransferDogOwnership'
        self.url_postfix = 'TransferDogOwnership'

        self.main_elements_to_wait_when_load = [
        ]

    def create_page_widgets(self):
        self.widgets['פרטי מגיש הבקשה_תעודת זהות'] = create_widget('TextField', style=self.style, label='תעודת זהות')
        self.widgets['פרטי המוסר_תעודת זהות'] = create_widget('TextField', style=self.style, label='תעודת זהות', index=2)
        self.widgets['פרטי מגיש הבקשה_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['פרטי המוסר_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי', index=2)
        self.widgets['פרטי מגיש הבקשה_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['פרטי המוסר_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה', index=2)
        self.widgets['פרטי מגיש הבקשה_אימייל'] = create_widget('TextField', style=self.style, label='אימייל')
        self.widgets['פרטי המוסר_אימייל'] = create_widget('TextField', style=self.style, label='אימייל', index=2)
        self.widgets['פרטי מגיש הבקשה_מספר טלפון נייד'] = create_widget('PhoneField', style=self.style, label='מספר טלפון נייד')
        self.widgets['פרטי המוסר_מספר טלפון נייד'] = create_widget('PhoneField', style=self.style, label='מספר טלפון נייד', index=2)
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב:')
        self.widgets['פרטי מגיש הבקשה_רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב:')
        self.widgets['פרטי המוסר_רחוב'] = create_widget('TextField', style=self.style, label='רחוב', index=2)
        self.widgets['פרטי מגיש הבקשה_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['פרטי המוסר_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית', index=2)
        self.widgets['פרטי מגיש הבקשה_מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה')
        self.widgets['פרטי המוסר_מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה', index=2)
        self.widgets['פרטי מגיש הבקשה_ת.ד'] = create_widget('TextField', style=self.style, label='ת.ד')
        self.widgets['פרטי המוסר_ת.ד'] = create_widget('TextField', style=self.style, label='ת.ד', index=2)
        self.widgets['פרטי המוסר_יישוב'] = create_widget('TextField', style=self.style, label='יישוב', index=2)
        self.widgets['צילום תעודת זהות מוסר הכלב'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות מוסר הכלב')
        self.widgets['צילום תעודת זהות מקבל הכלב'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות מקבל הכלב')
        self.widgets['רישיון אחרון להחזקת כלב'] = create_widget('UploadFile', style=self.style, label='רישיון אחרון להחזקת כלב')
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets['הנני מצהיר/ה בזה כי החל מתאריך'] = create_widget('CheckBox', style=self.style, label='הנני מצהיר/ה בזה כי החל מתאריך')
        self.widgets['הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק.'] = create_widget('CheckBox', style=self.style, label='הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק.')
        self.widgets['הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים.'] = create_widget('CheckBox', style=self.style, label='הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים.')
        self.widgets['שם הכלב'] = create_widget('TextField', style=self.style, label='שם הכלב:')
        self.widgets['גזע'] = create_widget('TextField', style=self.style, label='גזע')
        self.widgets['מין'] = create_widget('RadioButtonField', style=self.style, label='מין')
        self.widgets['צבע'] = create_widget('TextField', style=self.style, label='צבע')
        self.widgets['מספר שבב'] = create_widget('TextField', style=self.style, label='מספר שבב')
        self.widgets['שנת לידה'] = create_widget('DropdownSearch', style=self.style, label='שנת לידה')
        self.widgets['הכלב מחוסן כנגד מחלת הכלבת?'] = create_widget('RadioButtonField', style=self.style, label='הכלב מחוסן כנגד מחלת הכלבת?')
        self.widgets['הכלב רשום ברשות המקומית'] = create_widget('DropdownSearch', style=self.style, label='הכלב רשום ברשות המקומית:')
        self.widgets['תאריך מסירת הכלב'] = create_widget('CalendarClock', style=self.style, label='תאריך מסירת הכלב')
        self.widgets['תאריך חיסון כלבת אחרון'] = create_widget('CalendarClock', style=self.style, label='תאריך חיסון כלבת אחרון')
        self.widgets['שלח'] = create_widget('ButtonIcon', style=self.style, label='שלח')
        self.widgets['המשך'] = create_widget('ButtonIcon', style=self.style, label='המשך')

    def fill_form_to_reach_step(self, dst_step, mailbox, driver,current_page):
        if dst_step == "פרטי הכלב":
            self.navigate(mailbox)

        elif dst_step == "צרופות והצהרה":
            self.navigate(mailbox)
            self.widgets['שם הכלב'].set_text('מרקוס')
            self.widgets['גזע'].set_text('ביטבול')
            self.widgets['מין'].choose_value('זכר')
            self.widgets['צבע'].set_text('לבן')
            self.widgets['מספר שבב'].set_text('2322322232')
            self.widgets['שנת לידה'].select_element('2020')
            self.widgets['הכלב מחוסן כנגד מחלת הכלבת?'].choose_value('כן')
            self.widgets['תאריך חיסון כלבת אחרון'].second_calender('8/3/2020')
            self.widgets['הכלב רשום ברשות המקומית'].select_element('אבו גוש')
            self.widgets['תאריך מסירת הכלב'].second_calender('8/5/2021')
            self.widgets["המשך"].click_button()

    def navigate(self,mailbox):
        self.widgets['פרטי מגיש הבקשה_תעודת זהות'].set_text('332796184')
        self.widgets['פרטי המוסר_תעודת זהות'].set_text('332796184')
        self.widgets['פרטי מגיש הבקשה_שם פרטי'].set_text('שלום')
        self.widgets['פרטי המוסר_שם פרטי'].set_text('שבת')
        self.widgets['פרטי מגיש הבקשה_שם משפחה'].set_text('שלום')
        self.widgets['פרטי המוסר_שם משפחה'].set_text('שבת')
        self.widgets['פרטי מגיש הבקשה_אימייל'].set_text(mailbox)
        self.widgets['פרטי מגיש הבקשה_מספר טלפון נייד'].set_full_phone('052-80768343')
        self.widgets['פרטי המוסר_מספר טלפון נייד'].set_full_phone('052-80768343')
        self.widgets['פרטי מגיש הבקשה_מספר בית'].set_text('23')
        self.widgets['פרטי המוסר_מספר בית'].set_text('23')
        self.widgets['פרטי המוסר_יישוב'].set_text('23')
        self.widgets['פרטי המוסר_רחוב'].set_text('23')
        self.widgets['פרטי מגיש הבקשה_רחוב'].select_element('א טור')
        self.widgets["המשך"].click_button()