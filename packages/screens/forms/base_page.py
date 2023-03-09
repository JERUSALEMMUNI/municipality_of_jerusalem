from abc import abstractmethod

from infra.enums import UIStyle
from infra.widgets_dict import WidgetsDict
from ui_widgets.widget_factory import create_widget


class BasePage(object):
    def __init__(self, driver, style=UIStyle.NEW):
        self.main_elements_to_wait_when_load = []
        self.driver = driver
        self.style = style
        self.main_url = 'https://jeronlineforms.jerusalem.muni.il/'
        self.url_postfix = ''
        self.widgets = WidgetsDict({}, driver=driver)
        self.create_widgets()
        self.fill_need_to_wait_element()

    def fill_need_to_wait_element(self):
        self.main_elements_to_wait_when_load = []

    def create_base_widgets(self):
        self.widgets['המשך'] = create_widget('ButtonField', style=self.style, label='המשך')
        self.widgets['חזור'] = create_widget('ButtonField', style=self.style, label='חזור')
        self.widgets['שמור'] = create_widget('ButtonField', style=self.style, label='שמור טיוטה')
        self.widgets['שלח'] = create_widget('ButtonField', style=self.style, label='שלח')
        self.widgets['header'] = create_widget('HeaderField', style=self.style)
        self.widgets["footer"] = create_widget('FooterField', style=self.style)

    def navigate_to_page_url(self):
        self.driver.get(self.main_url + self.url_postfix)

    @abstractmethod
    def create_page_widgets(self):
        ...

    def create_widgets(self):
        self.create_base_widgets()
        self.create_page_widgets()
