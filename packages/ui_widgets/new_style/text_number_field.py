from selenium.webdriver import Keys

from infra import logger
from ui_widgets.new_style.text_field import TextField

log = logger.get_logger(__name__)


class TextNumberField(TextField):
    def __init__(self, label, index):
        super().__init__(label, index)

    def get_element(self):
        return self.web_element.find_element(self.locator['By'], './parent::*/parent::p-inputnumber')

    def set_text(self, text):
        self.clear()
        self.web_element.send_keys(text)
        self.web_element.send_keys(Keys.RETURN)

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.get_element().get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.get_element().get_attribute('class')
