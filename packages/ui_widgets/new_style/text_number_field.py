from infra import logger
from ui_widgets.new_style.text_field import TextField

log = logger.get_logger(__name__)


class TextNumberField(TextField):
    def __init__(self, label, index):
        super().__init__(label, index)

    def get_element(self):
        return self.web_element.find_element(self.locator['By'], './parent::*/parent::p-inputnumber').get_attribute('class')

    @property
    def is_invalid(self):
        if 'ng-invalid' in self.get_element():
            return True
        else:
            return False
