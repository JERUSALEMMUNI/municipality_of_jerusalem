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
        self.widgets['פרטי המוסר_תעודת זהות'] = create_widget('TextField', style=self.style, label='תעודת זהות',
                                                              index=2)
        self.widgets['פרטי מגיש הבקשה_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['פרטי המוסר_שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי', index=2)
        self.widgets['פרטי מגיש הבקשה_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['פרטי המוסר_שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה', index=2)
        self.widgets['פרטי מגיש הבקשה_אימייל'] = create_widget('TextField', style=self.style, label='אימייל')
        self.widgets['פרטי המוסר_אימייל'] = create_widget('TextField', style=self.style, label='אימייל', index=2)
        self.widgets['פרטי מגיש הבקשה_מספר טלפון נייד'] = create_widget('PhoneField', style=self.style,
                                                                        label='מספר טלפון נייד')
        self.widgets['פרטי המוסר_מספר טלפון נייד'] = create_widget('PhoneField', style=self.style,
                                                                   label='מספר טלפון נייד', index=2)
        self.widgets['פרטי מגיש הבקשה_רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב')
        self.widgets['פרטי המוסר_רחוב'] = create_widget('TextField', style=self.style, label='רחוב')
        self.widgets['פרטי מגיש הבקשה_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['פרטי המוסר_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית', index=2)
        self.widgets['פרטי מגיש הבקשה_מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה')
        self.widgets['פרטי המוסר_מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה', index=2)
        self.widgets['פרטי מגיש הבקשה_ת.ד'] = create_widget('TextField', style=self.style, label='ת.ד')
        self.widgets['פרטי המוסר_ת.ד'] = create_widget('TextField', style=self.style, label='ת.ד', index=2)
        self.widgets['פרטי המוסר_יישוב'] = create_widget('TextField', style=self.style, label='יישוב', index=2)
