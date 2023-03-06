from selenium.webdriver.common.by import By
from infra import logger, custom_exceptions as ce
from ui_widgets.base_widget import BaseWidget
from ui_widgets.old_style.alert_message_field import AlertMessageField
from ui_widgets.old_style.button_icon_widget import ButtonIcon
from ui_widgets.old_style.month_year_widget import MonthYear

log = logger.get_logger(__name__)


class MonthYearList(BaseWidget):
    def __init__(self, label):
        super().__init__(label)
        self.addItemButton = ButtonIcon('הוסף')
        self.alert_error_message = AlertMessageField(self.label)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//label[contains(text(),'{self.label}')]",
            'List': "following-sibling::div/div"
        }

    def get_list(self):
        return self.web_element.find_elements(self.locator['By'], self.locator['List'])

    def get_list_length(self):
        return len(self.get_list())

    def create_widget(self, index):
        widget = MonthYear(index)
        widget_element = self.web_element.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(widget_element)
        return widget

    def init_widget(self):
        add_item_button = self.web_element.find_element(self.addItemButton.locator['By'],
                                                        self.addItemButton.locator['Value'])
        self.addItemButton.set_custom_locator(add_item_button)

    def add_item(self):
        self.addItemButton.click_button()

    def remove_item(self, index):
        widget = self.create_widget(index)
        widget.removeItem(self.locator['Value'])

    def set_year(self, year, index):
        widget = self.create_widget(index)
        widget.set_year(self.locator['Value'], year)

    def set_month(self, month, index, driver):
        widget = self.create_widget(index)
        widget.set_month(self.locator['Value'], month, driver)

    def set_months(self, month, index, driver):
        widget = self.create_widget(index)
        widget.set_months(self.locator['Value'], month, driver)

    def validate_months(self, month, index):
        widget = self.create_widget(index)
        assert widget.validate_months(self.locator['Value'], month), "the selected months are not shown as selected"

    def initial_error(self):
        error_message_element = self.web_element.find_element(By.XPATH, "./following-sibling::div/div[1]/div/div/following-sibling::div")
        self.alert_error_message.set_web_element(error_message_element)

    def get_error_message(self):
        self.initial_error()
        self.alert_error_message.get_error_message()

    def check_error_message(self, expected_error):
        self.initial_error()
        self.alert_error_message.check_expected_error(expected_error)