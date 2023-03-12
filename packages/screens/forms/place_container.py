from infra.enums import UIStyle
from screens.forms.base_page import BasePage
from ui_widgets.widget_factory import create_widget


class PlaceContainer(BasePage):
    def __init__(self, driver):
        super().__init__(driver, style=UIStyle.OLD)
        self.page_title = 'PlaceContainer'
        self.url_postfix = 'PlaceContainer'

        self.main_elements_to_wait_when_load = [
        ]

    def create_page_widgets(self):
        # פרטי מציב המכולה
        self.widgets['סוג זהות:'] = create_widget('RadioButtonField', style=self.style, label='סוג זהות:')
        self.widgets['מספר מזהה'] = create_widget('TextField', style=self.style, label='מספר מזהה')
        self.widgets['שם פרטי'] = create_widget('TextField', style=self.style, label='שם פרטי')
        self.widgets['שם משפחה'] = create_widget('TextField', style=self.style, label='שם משפחה')
        self.widgets['מספר טלפון נייד'] = create_widget('PhoneField', style=self.style, label='מספר טלפון נייד')
        # ToDo : cahnge that to phone field
        self.widgets['prefix'] = create_widget('Dropdown', style=self.style, label='מספר טלפון נייד',
                                               path_locator="/following-sibling::div//p-dropdown")
        self.widgets['phone number'] = create_widget('TextField', style=self.style, label='מספר טלפון נייד',
                                                     path_locator="following-sibling::div//input")

        self.widgets['אימייל:'] = create_widget('TextField', style=self.style, label='אימייל:')

        # כתובת מקום העבודה:
        self.widgets['רחוב'] = create_widget('DropdownSearch', style=self.style, label='רחוב:')
        self.widgets['כתובת מקום העבודה:_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית')
        self.widgets['מספר דירה'] = create_widget('TextField', style=self.style, label='מספר דירה:')

        # פרטי הצבת המכולה:
        self.widgets['רחוב הצבת המכולה:'] = create_widget('DropdownSearch', style=self.style, label='רחוב הצבת המכולה:')
        self.widgets['פרטי הצבת המכולה:_מספר בית'] = create_widget('TextField', style=self.style, label='מספר בית',
                                                                   index=2)
        self.widgets['מספר מכולה:'] = create_widget('TextField', style=self.style, label='מספר מכולה:',
                                                    path_locator="following-sibling::div//input")
        self.widgets['מתאריך:'] = create_widget('CalendarClock', style=self.style, label='מתאריך:')
        self.widgets['עד תאריך:'] = create_widget('CalendarClock', style=self.style, label='עד תאריך:')

        self.widgets['סוג החניה:'] = create_widget('Dropdown', style=self.style, label='סוג החניה:')
        self.widgets['כתובת האתר לשפיכת הפסולת'] = create_widget('TextField', style=self.style,
                                                                 label='כתובת האתר לשפיכת הפסולת',
                                                                 path_locator="following-sibling::div//input")
