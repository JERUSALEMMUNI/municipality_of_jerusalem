from ui_widgets.new_style.button_field import ButtonField
from ui_widgets.old_style.button_field import ButtonField
from ui_widgets.new_style.header_field import HeaderField
from ui_widgets.new_style.footer_field import FooterField
from ui_widgets.old_style.header_field import HeaderField as OldHeaderField
from ui_widgets.old_style.footer_field import FooterField as OldFooterField


class BasePage(object):
    def __init__(self, driver, style='new'):
        self.driver = driver
        self.style = style
        self.main_url = 'https://jeronlineforms.jerusalem.muni.il/'
        self.url_postfix = ''
        self.widgets = {}
        self.init_widgets()
        self.main_elements_to_wait_when_load = []

    def init_widgets(self):
        self.widgets['המשך'] = ButtonField('המשך')
        self.widgets['חזור'] = ButtonField('חזור')
        self.widgets['שמור'] = ButtonField('שמור טיוטה')
        self.widgets['שלח'] = ButtonField('שלח')
        self.widgets['header'] = HeaderField()
        self.widgets["footer"] = FooterField("footer")
        if self.style == 'old':
            self.widgets['header'] = OldHeaderField()
            self.widgets['המשך'] = ButtonField('המשך')
            self.widgets['חזור'] = ButtonField('חזור')
            self.widgets['footer'] = OldFooterField('footer', self.driver)


    def navigate_to_page_url(self):
        self.driver.get(self.main_url + self.url_postfix)

