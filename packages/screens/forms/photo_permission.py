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
        self.widgets['דוא'] = create_widget('TextField', style=self.style, label='דוא')
        self.widgets['סוג זיהוי'] = create_widget('Dropdown', style=self.style, label='סוג זיהוי')
        self.widgets['מספר ת.ז.'] = create_widget('TextField', style=self.style, label='מספר ת.ז.')
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
        self.widgets['פרטי המיקום ומועדי הצילומים'] = create_widget('AccordionTable', style=self.style, label="פרטי המיקום ומועדי הצילומים")
