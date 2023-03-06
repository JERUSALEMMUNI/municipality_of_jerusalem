from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from packages.infra import logger, config
from packages.ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.text_field import TextField
from ui_widgets.old_style.alert_message_field import AlertMessageField
from ui_widgets.old_style.widget_locators.calender_locators import CalenderLocators

log = logger.get_logger(__name__)


class CalendarField(BaseWidget):
    def __init__(self, label):
        super().__init__(label)
        self.text_widget = TextField(label)
        self.alert_error_message = AlertMessageField(self.label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/following-sibling::p-calendar/span/input",
        }

    def initial_widgets(self):
        # text_field_element = self.web_element.find_element(self.locator['By'], self.locator['Value'])
        self.text_widget.set_web_element(self.web_element)

    def date_by_select_day_year(self, day, year):
        select_year = self.web_element.find_element(*CalenderLocators.year)
        year_selected = Select(select_year)
        year_selected.select_by_visible_text(year)
        WebDriverWait(self.web_element, 10).until(
            #Todo: it should be in a locator file
            EC.element_to_be_clickable((CalenderLocators.day(day)))).click()

    def select_all_date(self, date):
        self.click_on()
        new_date = date.split("/")
        day = new_date[0]
        month = new_date[1]
        year = new_date[2]
        select_month = self.web_element.find_element(*CalenderLocators.month)
        month_selected = Select(select_month)
        month_selected.select_by_visible_text(config.months[month])
        self.date_by_select_day_year(day, year)

    def date_by_write(self, date):
        self.text_widget.set_text(date)
        WebDriverWait(self.web_element, 10).until(
            EC.element_to_be_clickable(CalenderLocators.active_day)).click()


    def dialog_alert(self):
        try:
            self.web_element.find_element(*CalenderLocators.dialog).is_displayed()
            WebDriverWait(self.web_element, 10).until(
                EC.element_to_be_clickable(CalenderLocators.accept_alert)
            ).click()
            return True
        except:
            return False

    def click_on(self):
        WebDriverWait(self.web_element, 10).until(
            EC.element_to_be_clickable(self.web_element)
        ).click()

    def get_date(self):
        return self.web_element.get_attribute('value')

    def check_date(self, date):
        return self.get_date() in date

    def initial_error(self):
        error_message_element = self.web_element.find_element(By.XPATH, "./parent::span/parent::p-calendar/following-sibling::span")
        self.alert_error_message.set_web_element(error_message_element)

    def get_error_message(self):
        self.initial_error()
        self.alert_error_message.get_error_message()

    def check_error_message(self, expected_error):
        self.initial_error()
        self.alert_error_message.check_expected_error(expected_error)

