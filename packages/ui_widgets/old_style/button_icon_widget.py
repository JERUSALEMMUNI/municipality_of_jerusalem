from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger, custom_exceptions as ce
from ui_widgets.old_style.button_field import ButtonField

log = logger.get_logger(__name__)


class ButtonIcon(ButtonField):
    def __init__(self, label, index):
        super().__init__(label, index)

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//button[@title='{self.label}']"
        }
