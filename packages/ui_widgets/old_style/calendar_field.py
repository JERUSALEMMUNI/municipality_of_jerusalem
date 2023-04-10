from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from packages.infra import logger, config
from packages.ui_widgets.base_widget import BaseWidget

from ui_widgets.old_style.widget_locators.calender_locators import CalenderLocators

log = logger.get_logger(__name__)


class CalendarField(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/following-sibling::p-calendar/span/input"
        }

    def get_locator(self):
        return CalenderLocators()

    def set_web_element(self, web_element):
        self.web_element = web_element
        self.text_widget = self.create_widget('TextField', label=self.label, index=self.index)
        self.set_widget_web_element(self.text_widget)

    def date_by_select_day_year(self, day, year):
        select_year = self.web_element.find_element(*CalenderLocators.year)
        year_selected = Select(select_year)
        year_selected.select_by_visible_text(year)
        x = WebDriverWait(self.web_element, 10).until(
            EC.element_to_be_clickable((CalenderLocators.day(day))))

        x.click()
        WebDriverWait(self.web_element, 10).until(
            EC.invisibility_of_element(x))

    def select_all_date(self, date):
        try:
            self.click_on()
            new_date = date.split("/")
            day = new_date[0]
            month = new_date[1]
            year = new_date[2]
            select_month = self.web_element.find_element(*CalenderLocators.month)
            month_selected = Select(select_month)
            month_selected.select_by_visible_text(config.months[month])
            self.date_by_select_day_year(day, year)
        except:
            raise AssertionError("Not valid date")

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

    @property
    def get_date(self):
        return self.web_element.get_attribute('value')

    def check_date(self, date):
        return self.get_date in date

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*CalenderLocators.error_msg)
        return error_expected in error_msg.text, error_expected == error_msg.text

    @property
    def is_invalid(self):
        x = self.web_element.find_element(*CalenderLocators.valid_checker)
        return 'invalid' in x.get_attribute('class')

    @property
    def is_valid(self):
        x = self.web_element.find_element(*CalenderLocators.valid_checker)
        return 'valid' in x.get_attribute('class')
