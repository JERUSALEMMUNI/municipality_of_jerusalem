from selenium.webdriver.common.by import By
from infra import logger, config
from ui_widgets.base_widget import BaseWidget
import re
from ui_widgets.new_style.dropdown_field import Dropdown
from ui_widgets.old_style.button_icon_widget import ButtonIcon
from ui_widgets.old_style.multiselect import MultiSelect

log = logger.get_logger(__name__)


class MonthYear(BaseWidget):
    def __init__(self, label):
        super().__init__(label)
        self.removeItemButton = ButtonIcon('הסר')
        self.year_dropdown = Dropdown('חודשים לבדיקה')
        self.month_multiselect = MultiSelect('חודשים לבדיקה')

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"following-sibling::div/div[{self.label}]"
        }

    def get_validation_text(self, path):
        return self.web_element.find_element(By.XPATH,
                                             f"{path}//following-sibling::div/div[{self.label}]/div/div[2]")

    def removeItem(self, path):
        remove_button = self.web_element.find_element(By.XPATH,
                                                      f"{path}//following-sibling::div/div[{self.label}]//button[@title='הסר']//i[@class='pi pi-times-circle']")
        remove_button.click()

    def set_year(self, path, year):
        dropdown = self.web_element.find_element(By.XPATH,
                                                 f"{path}//following-sibling::div/div[{self.label}]//p-dropdown[@formcontrolname='year']")
        self.year_dropdown.set_web_element(dropdown)
        self.year_dropdown.web_element.click()
        self.year_dropdown.select_element(year)

    def set_month(self, path, month, driver):
        multiselect = self.web_element.find_element(By.XPATH,
                                                    f"{path}//following-sibling::div/div[{self.label}]//p-multiselect[@formcontrolname='months']")
        self.month_multiselect.set_custom_multiselect(multiselect)
        self.month_multiselect.set_month(config.months[month], driver)

    def set_months(self, path, months, driver):
        multiselect = self.web_element.find_element(By.XPATH,
                                                    f"{path}//following-sibling::div/div[{self.label}]//p-multiselect[@formcontrolname='months']")
        self.month_multiselect.set_custom_multiselect(multiselect)
        month_list = []
        for num in months.split(","):
            month_list.append(config.months[num])
        self.month_multiselect.set_months(month_list, driver)

    def validate_months(self, path, months):
        from_text = self.get_validation_text(path)
        numbers = re.findall(r'\d+', from_text.text)
        new_months = re.findall(r'\d+', months)
        return set(new_months) == set(numbers)

