from screens.forms.base_page import BasePage
from ui_widgets.new_style.upload_file import UploadFile
from ui_widgets.old_style.check_box_field import CheckBox
from ui_widgets.new_style.footer_field import FooterField
from ui_widgets.old_style.button_field import ButtonField
from ui_widgets.old_style.radio_button_field import RadioButtonField


class BusinessLicenseExists(BasePage):
    def __init__(self, driver):
        super().__init__(driver)
        self.page_title = 'BusinessLicenseExists'
        self.url_postfix = 'BusinessLicenseExists'
        self.widgets["new_footer"] = FooterField("new_footer")
        self.widgets["הנני מאשר/ת בזאת כי עצם משלוח מסמך זה"] = CheckBox("הנני מאשר/ת בזאת כי עצם משלוח מסמך זה")
        self.widgets['סוג זיהוי'] = RadioButtonField('סוג זיהוי')
        self.widgets['חיפוש'] = ButtonField('חיפוש')
        self.widgets['מגיש הבקשה'] = RadioButtonField('מגיש הבקשה')
        self.widgets['המשך'] = ButtonField('המשך')
        self.widgets['הצהרת בקשה לשינוי כינוי העסק חתומה ע"י בעל העסק'] = UploadFile('הצהרת בקשה לשינוי כינוי העסק חתומה ע"י בעל העסק', driver)

        self.main_elements_to_wait_when_load = [

        ]
