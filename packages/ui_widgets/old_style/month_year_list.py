from selenium.webdriver.common.by import By
from infra import logger, custom_exceptions as ce
from ui_widgets.base_widget import BaseWidget
from ui_widgets.old_style.button_icon_widget import ButtonIcon
from ui_widgets.old_style.month_year_widget import MonthYear
from ui_widgets.old_style.widget_locators.month_year_list_locator import MonthYearListLocators

log = logger.get_logger(__name__)


class MonthYearList(BaseWidget):
    def __init__(self, label,index):
        super().__init__(label,index)
        self.addItemButton = ButtonIcon('הוסף',index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]"
        }

    def get_list(self):
        return self.web_element.find_elements(*MonthYearListLocators.list)

    def get_list_length(self):
        return len(self.get_list())

    def create_widget_from_index(self, index):
        widget = MonthYear(index,self.index)
        widget.set_web_element(self.web_element)
        return widget

    def init_widget(self):
        add_item_button = self.web_element.find_element(self.addItemButton.locator['By'],
                                                        self.addItemButton.locator['Value'])
        self.addItemButton.set_web_element(add_item_button)

    def add_item(self):
        self.addItemButton.click_button()

    def remove_item(self, index):
        widget = self.create_widget_from_index(index)
        widget.removeItem(self.locator['Value'])

    def set_year(self, year, index):
        self.init_widget()
        widget = self.create_widget_from_index(index)
        widget.set_year(self.locator['Value'], year)

    def set_month(self, month, index):
        self.init_widget()
        widget = self.create_widget_from_index(index)
        widget.set_month(self.locator['Value'], month)

    def set_months(self, month, index, driver):
        widget = self.create_widget_from_index(index)
        widget.set_months(self.locator['Value'], month, driver)

    def validate_months(self, month, index):
        widget = self.create_widget_from_index(index)
        #todo: validate should return true/false
        assert widget.validate_months(self.locator['Value'], month), "the selected months are not shown as selected"

    def validate_error_message(self, error_expected):
        error_msg = self.web_element.find_element(*MonthYearListLocators.error_msg)
        return error_msg.text == error_expected
