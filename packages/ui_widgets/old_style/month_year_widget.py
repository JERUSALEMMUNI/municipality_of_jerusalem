from selenium.webdriver.common.by import By
from infra import logger, config
from ui_widgets.base_widget import BaseWidget
import re
from ui_widgets.new_style.dropdown_field import Dropdown
from ui_widgets.old_style.button_icon_widget import ButtonIcon
from ui_widgets.old_style.multiselect import MultiSelect
from ui_widgets.old_style.widget_locators.month_year_widget_locator import MonthYearWidgetLocators

log = logger.get_logger(__name__)


class MonthYear(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)
        self.removeItemButton = ButtonIcon('הסר', index)
        self.year_dropdown = Dropdown('חודשים לבדיקה', index)
        self.month_multiselect = MultiSelect('חודשים לבדיקה',index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"following-sibling::div/div[{self.label}]"
        }

    def get_validation_text(self, path):
        return self.web_element.find_element(*MonthYearWidgetLocators.valid_text(path, self.label))

    def removeItem(self, path):
        remove_button = self.web_element.find_element(*MonthYearWidgetLocators.remove_item(path, self.label))
        remove_button.click()

    def set_year(self, path, year):
        dropdown = self.web_element.find_element(*MonthYearWidgetLocators.set_year(path, self.label))
        self.year_dropdown.set_web_element(dropdown)
        self.year_dropdown.web_element.click()
        self.year_dropdown.select_element(year)

    def get_month_element(self, path):
        return self.web_element.find_element(*MonthYearWidgetLocators.set_month(path, self.label))

    def set_month(self, path, month):
        self.month_multiselect.set_custom_multiselect(self.get_month_element(path))
        self.month_multiselect.set_month(config.months[month])

    def set_months(self, path, months, driver):
        self.month_multiselect.set_custom_multiselect(self.get_month_element(path))
        month_list = []
        for num in months.split(","):
            month_list.append(config.months[num])
        self.month_multiselect.set_months(month_list, driver)

    def validate_months(self, path, months):
        from_text = self.get_validation_text(path)
        numbers = re.findall(r'\d+', from_text.text)
        new_months = re.findall(r'\d+', months)
        return set(new_months) == set(numbers)
