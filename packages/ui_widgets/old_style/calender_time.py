from time import sleep

from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from infra import logger, config
from ui_widgets.old_style.calendar_field import CalendarField
from ui_widgets.old_style.widget_locators.calender_clock_locatores import CalenderClockLocators
from ui_widgets.old_style.widget_locators.calender_locators import CalenderLocators

log = logger.get_logger(__name__)


class CalendarClock(CalendarField):
    def __init__(self, label, index):
        super().__init__(label, index)

    def with_time(self, date):
        self.click_on()
        new_date = date.split("/")
        month = new_date[1]
        day = new_date[0]
        year = new_date[2]

        for i in range(12):
            select_month = self.web_element.find_element(*CalenderLocators.month)
            if select_month.text != config.months[month]:
                WebDriverWait(self.web_element, 10).until(
                    EC.presence_of_element_located(CalenderClockLocators.click_months)).click()
        self.date_by_select_day_year(day, year)

    def select_time(self, date, time):
        new_time = time.split(":")
        hour = new_time[0]
        minute = new_time[1]
        self.click_on()
        for i in range(24):
            h = self.web_element.find_element(*CalenderClockLocators.hour)
            if h.text != hour:
                WebDriverWait(self.web_element, 10).until(
                    EC.presence_of_element_located(CalenderClockLocators.click_hours)).click()

        for i in range(60):
            m = self.web_element.find_element(*CalenderClockLocators.minutes)
            if m.text != minute:
                WebDriverWait(self.web_element, 10).until(
                    EC.presence_of_element_located(CalenderClockLocators.click_minutes)).click()
        self.with_time(date)

