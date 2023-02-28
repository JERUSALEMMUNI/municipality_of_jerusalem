from selenium.webdriver.common.by import By
from ui_widgets.button_field import ButtonField
from ui_widgets.footer_field import Footer_field
from ui_widgets.header_field import Header_field
from ui_widgets.old_button_field import OldButtonField
from ui_widgets.page_number_field import Page_number_field


class BasePage(object):
    def __init__(self, driver):
        self.driver = driver
        self.main_url = 'https://jeronlineforms.jerusalem.muni.il/'
        self.url_postfix = ''
        self.widgets = {}
        self.widgets['המשך'] = ButtonField('המשך')
        self.widgets['חזור'] = ButtonField('חזור')
        self.widgets['שמור טיוטה'] = ButtonField('שמור טיוטה')
        self.widgets['שלח'] = ButtonField('שלח')
        self.widgets['header'] = Header_field('header')
        self.widgets['footer'] = Footer_field('footer')
        self.widgets['pages'] = Page_number_field('pages')
        self.widgets['המשך'] = OldButtonField('המשך')
        self.widgets['חזור'] = OldButtonField('חזור')
        self.main_elements_to_wait_when_load = []

    def navigate_to_page_url(self):
        self.driver.get(self.main_url + self.url_postfix)

    def get_page_number(self):
        elements = self.driver.find_elements(By.XPATH, "//ul[@class='lib-stepper-list']/li")
        for element in elements:
            if element.get_attribute('aria-selected') == "true":
                return element.text.split("\n")[0]
        return "-1"

    def get_amount_of_pages(self):
        pages = self.driver.find_elements(By.XPATH, f"//ul[@class='lib-stepper-list']/li")
        return len(pages)

    def open_disabled_list(self):
        disabled_list = self.driver.find_element(By.XPATH, "//button[@id='INDmenu-btn']")
        disabled_list.click()

    def close_disabled_list(self):
        close_list = self.driver.find_element(By.XPATH, ".//button[@id='INDcloseAccMenu']")
        close_list.click()



