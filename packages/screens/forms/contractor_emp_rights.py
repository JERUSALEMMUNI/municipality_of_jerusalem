from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class ContractorEmpRights(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'ContractorEmpRights'
        self.url_postfix = 'ContractorEmpRights'
        self.driver = driver

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = ['שם פרטי', 'נושא התלונה']

    def create_page_widgets(self):
        self.widgets['מספר זהות'] = create_widget('TextField', style=self.style, label='מספר זהות')
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['תאריך לידה'] = create_widget('CalendarField', style=self.style, label='תאריך לידה')
        self.widgets['רחוב'] = create_widget('TextField', style=self.style, label='רחוב')
        self.widgets['מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה')
        self.widgets['מספר טלפון'] = create_widget('TextField', style=self.style, label='מספר טלפון')
        self.widgets['מספר טלפון נייד'] = create_widget('PhoneField', style=self.style, label='מספר טלפון נייד')
        self.widgets['אימייל'] = create_widget('TextField', style=self.style, label='אימייל')
        self.widgets['ענף'] = create_widget('DropdownSearch', style=self.style, label='ענף')
        self.widgets['שם חברה'] = create_widget('DropdownSearch', style=self.style, label='שם חברה')
        self.widgets['שם אתר עירוני'] = create_widget('TextField', style=self.style, label='שם אתר עירוני')
        self.widgets['תאריך תחילת העבודה בחברה'] = create_widget('CalendarField', style=self.style,
                                                                 label='תאריך תחילת העבודה בחברה')
        self.widgets['נושא התלונה'] = create_widget('DropdownSearchSelectBox', style=self.style, label='נושא התלונה')
        self.widgets['פרטי התלונה'] = create_widget('TextAreaField', style=self.style, label='פרטי התלונה')
        self.widgets['חודשים לבדיקה'] = create_widget('MonthYearList', style=self.style, label='חודשים לבדיקה')
        self.widgets['האם היתה פניה למעסיק קודם הגשת תלונה זו?'] = create_widget('RadioButtonField', style=self.style,
                                                                                 label='האם היתה פניה למעסיק קודם הגשת תלונה זו?')
        self.widgets['התשובה שקיבלתי'] = create_widget('TextField', style=self.style, label='התשובה שקיבלתי')
        self.widgets['הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים.'] = create_widget(
            'CheckBox', style=self.style,
            label='הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים.')
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר')
        self.widgets['אסמכתאות לתשלום שכר'] = create_widget('UploadFile', style=self.style, label='אסמכתאות לתשלום שכר')
        self.widgets['דוחו"ת נוכחות'] = create_widget('UploadFile', style=self.style, label='דוחו"ת נוכחות')
        self.widgets['תלושי שכר'] = create_widget('UploadFile', style=self.style, label='תלושי שכר')
        self.widgets['שלח'] = create_widget('ButtonIcon', style=self.style, label='שלח')
        self.widgets['המשך'] = create_widget('ButtonIcon', style=self.style, label='המשך')

    def fill_form_to_reach_step(self, dst_step, mailbox, driver, current_page):
        if dst_step == "צרופות והצהרה":
            self.widgets['מספר זהות'].set_text('332796184')
            self.widgets['שם פרטי'].set_text('דני')
            self.widgets['שם משפחה'].set_text('גלעד')
            self.widgets['מספר טלפון נייד'].set_full_phone('058-8078687')
            self.widgets['אימייל'].set_text(mailbox.address)
            self.widgets['ענף'].select_element('ניקיון')
            self.widgets['שם חברה'].select_element('מוקד יסעור נקיון ותחזוקה בע"מ')
            self.widgets['תאריך תחילת העבודה בחברה'].select_all_date('8/1/2019')
            self.widgets['נושא התלונה'].select_element('אי צבירה נאותה - ימי חופשה')
            self.widgets['פרטי התלונה'].set_text('א טור')
            self.widgets["חודשים לבדיקה"].set_year('2018', '1')
            self.widgets["חודשים לבדיקה"].set_month('1', '1')
            self.widgets['האם היתה פניה למעסיק קודם הגשת תלונה זו?'].choose_value('כן')
            self.widgets["המשך"].click_button()
