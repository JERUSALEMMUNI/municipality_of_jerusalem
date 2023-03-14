from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.time_picker_widget_locator import TimePickerWidgetLocator

log = logger.get_logger(__name__)


class TimePickerWidget(BaseWidget):
    def __init__(self, label, index, path_locator="parent::div//div[contains(@class,'p-timepicker')]"):
        super().__init__(label, index)
        self.path_locator = path_locator

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]/{self.path_locator}"
        }

    def select_time(self, time):
        new_time = time.split(":")
        hour = new_time[0]
        minute = new_time[1]
        for i in range(24):
            hour_text = self.web_element.find_element(*TimePickerWidgetLocator.hour_text)
            if hour_text.text != hour:
                WebDriverWait(self.web_element, 10).until(
                    EC.presence_of_element_located(TimePickerWidgetLocator.up_arrow_hour_button)).click()

        for i in range(60):
            minute_text = self.web_element.find_element(*TimePickerWidgetLocator.minute_text)
            if minute_text.text != minute:
                WebDriverWait(self.web_element, 10).until(
                    EC.presence_of_element_located(TimePickerWidgetLocator.up_arrow_minutes_button)).click()
