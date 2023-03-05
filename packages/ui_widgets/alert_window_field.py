from selenium.webdriver.common.by import By
from ui_widgets.base_widget import BaseWidget
from infra import logger

log = logger.get_logger(__name__)


class AlertWindowField(BaseWidget):
    def __init__(self, label):
        super().__init__(label)


    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': f"//div[@class='ng-trigger ng-trigger-animation ng-tns-c41-11 p-dialog p-component p-dialog-draggable p-dialog-resizable ng-star-inserted']"
        }

    def cancel_button(self):
        btn = self.web_element.find_element(by=By.XPATH, value=f"./div/div")
        btn.click()

    def get_alert_tittle(self):
        alert_tittle = self.web_element.find_element(by=By.XPATH, value=f"./div/span")
        return alert_tittle.text

    def get_alert_msg(self):
        alert_msg = self.web_element.find_element(by=By.XPATH, value=f"./div/following-sibling::div/div")
        return alert_msg.text

    def close_button(self):
        btn = self.web_element.find_element(by=By.XPATH, value=f"./div/following-sibling::div/following-sibling::div/div/button[@class='p-button p-component ng-star-inserted']")
        btn.click()

    def save_button(self):
        btn = self.web_element.find_element(by=By.XPATH, value=f"./div/following-sibling::div/following-sibling::div/div/button/following-sibling::button")
        btn.click()



