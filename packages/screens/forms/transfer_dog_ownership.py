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
        self.widgets['פרטי מגיש הבקשה_רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets['פרטי המוסר_רחוב'] = create_widget('TextField', style=self.style, label='רחוב')
        self.widgets['פרטי מגיש הבקשה_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['פרטי המוסר_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית', index=2)
        self.widgets['פרטי מגיש הבקשה_מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה')
        self.widgets['פרטי המוסר_מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה', index=2)
        self.widgets['פרטי מגיש הבקשה_ת.ד'] = create_widget('TextField', style=self.style, label='ת.ד')
        self.widgets['פרטי המוסר_ת.ד'] = create_widget('TextField', style=self.style, label='ת.ד', index=2)
        self.widgets['פרטי המוסר_יישוב'] = create_widget('TextField', style=self.style, label='יישוב', index=2)
        self.widgets['צילום תעודת זהות מוסר הכלב'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות מוסר הכלב', driver=self.driver)
        self.widgets['צילום תעודת זהות מקבל הכלב'] = create_widget('UploadFile', style=self.style, label='צילום תעודת זהות מקבל הכלב', driver=self.driver)
        self.widgets['רישיון אחרון להחזקת כלב'] = create_widget('UploadFile', style=self.style, label='רישיון אחרון להחזקת כלב', driver=self.driver)
        self.widgets['אחר'] = create_widget('UploadFile', style=self.style, label='אחר', driver=self.driver)
        self.widgets['הנני מצהיר/ה בזה כי החל מתאריך 14/03/2023 קיבלתי את כלבו של'] = create_widget('CheckBox', style=self.style, label='הנני מצהיר/ה בזה כי החל מתאריך 14/03/2023 קיבלתי את כלבו של')
        self.widgets['הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק.'] = create_widget('CheckBox', style=self.style, label='הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק.')
        self.widgets['הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים.'] = create_widget('CheckBox', style=self.style, label='הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים.')

