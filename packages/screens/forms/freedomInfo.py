from screens.forms.base_page import BasePage
from ui_widgets.alert_window_field import Alert_window_field
from ui_widgets.mobile_field import Mobile_Field
from ui_widgets.selctor_button import SelctorButton
from ui_widgets.select_field import SelectField
from ui_widgets.select_input_field import SelectInputField
from ui_widgets.text_field import TextField


class FreedomInfo(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'FreedomInfo'
        self.init_widgets(driver)

        self.main_elements_to_wait_when_load = [
            self.widgets['שם פרטי']
        ]

    def init_widgets(self, driver):
        self.url_postfix = 'FreedomInfo'
        self.widgets['שם פרטי'] = TextField('שם פרטי')
        self.widgets['שם משפחה'] = TextField('שם משפחה')
        self.widgets["זיהוי"] = TextField("זיהוי")
        self.widgets['דוא"ל'] = TextField('דוא"ל')
        self.widgets["סוג זיהוי"] = SelectField("סוג זיהוי")
        self.widgets["סוג זיהוי"] = SelctorButton("סוג זיהוי", driver)
        self.widgets["מספר בית"] = TextField("מספר בית")
        self.widgets["מיקוד"] = TextField("מיקוד")
        self.widgets['טלפון נייד'] = Mobile_Field('טלפון נייד')
        self.widgets['טלפון קווי'] = Mobile_Field('טלפון קווי')
        self.widgets["alert_window"] = Alert_window_field("alert_window")
        self.widgets["יישוב"] = SelectInputField("יישוב", driver)
        self.widgets["רחוב"] = SelectInputField("רחוב", driver)
