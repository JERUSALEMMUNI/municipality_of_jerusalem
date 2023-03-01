from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

from infra import logger, config
from ui_widgets.old_style.calendar_field import CalendarField
from ui_widgets.old_style.widget_locators.calender_clock_locatores import CalenderClockLocators
from ui_widgets.old_style.widget_locators.calender_locators import CalenderLocators

log = logger.get_logger(__name__)


class CalendarClock(CalendarField):
    def __init__(self, label):
        super().__init__(label)


    def with_time(self, date):
        new_date = date.split("/")
        month = new_date[1]
        day = new_date[0]
        year = new_date[2]
        select_month = self.web_element.find_element(*CalenderLocators.month)
        log.info(select_month.text)
        log.info(config.months[month])
        for i in range(12):
            if select_month.text != config.months[month]:
                click = WebDriverWait(self.web_element, 10).until(
                    EC.element_to_be_clickable((By.XPATH, "//a[starts-with(@class,'ui-datepicker-prev')]")))
                click.click()
                select_month = self.web_element.find_element(*CalenderLocators.month)

            else:
                break
        self.date_by_select_day_year(day,year)

    def select_time(self,date,time):
        new_time = time.split(":")
        hour = new_time[0]
        minute = new_time[1]
        self.click_on()
        h = self.web_element.find_element(*CalenderClockLocators.hour)
        m = self.web_element.find_element(*CalenderClockLocators.minutes)
        for i in range(24):
            if h.text != hour:
                click = WebDriverWait(self.web_element, 10).until(
                    EC.element_to_be_clickable((By.XPATH, "//div[starts-with(@class,'ui-hour-picker')]//a[1]")))
                click.click()
                h = self.web_element.find_element(*CalenderClockLocators.hour)
            else:
                break

        for i in range(60):
            if m.text != minute:
                click = WebDriverWait(self.web_element, 10).until(
                    EC.element_to_be_clickable((By.XPATH, "//div[starts-with(@class,'ui-minute-picker')]//a[1]")))
                click.click()
                m = self.web_element.find_element(*CalenderClockLocators.minutes)
            else:
                break

        self.with_time(date)


