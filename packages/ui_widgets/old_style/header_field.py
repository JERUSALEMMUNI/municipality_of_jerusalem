from datetime import datetime

from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from webdriver_manager.core import driver
from ui_widgets.old_style.widget_locators.header_locators import HeaderLocators
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.old_style.button_field import ButtonField
from ui_widgets.old_style.dialog_widget import Dialog

log = logger.get_logger(__name__)


class HeaderField(BaseWidget):
    def __init__(self):
        super().__init__(self)
        self.info_dialog = Dialog()

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//core-header"
        }

    #### header title ####
    def get_header_title(self):
        header_title = self.web_element.find_element(*HeaderLocators.title)
        log.debug(header_title)
        return header_title

    def validate_header_title_with_default(self):
        return self.get_header_title().text == 'שרותים דיגיטליים'

    def validate_header_title_text(self, title):
        return self.get_header_title().text == title

    def validate_header_title_is_displayed(self):
        title = self.get_header_title()
        return title.is_displayed()

    #### header logo #####
    def get_header_logo(self):
        return self.web_element.find_element(*HeaderLocators.logo)

    def validate_header_logo(self):
        header_logo = self.get_header_logo()
        return header_logo.is_displayed()

    ##### header form name #####
    def get_header_application_name(self):
        return self.web_element.find_element(*HeaderLocators.name)

    def validate_header_application_name_text(self, name):
        return self.get_header_application_name().text == name

    def validate_header_application_name_is_displayed(self):
        title = self.get_header_title()
        return title.is_displayed()

    ###### header status #####
    def get_header_status(self):
        return self.web_element.find_element(*HeaderLocators.status)

    def validate_header_status_is_displayed(self):
        status = self.get_header_status()
        return status.is_displayed()

    def validate_header_status_text(self):
        header_status = self.get_header_status()
        return 'סטטוס:' in header_status.text

    def validate_current_header_status(self, status):
        header_status = self.get_header_status()
        return status in header_status.text

    ###### header status date  #####
    def get_header_status_date(self):
        return self.web_element.find_element(*HeaderLocators.date)

    def validate_header_status_date_text(self):
        header_status_date_text = self.get_header_status_date()
        return 'תאריך מילוי הטופס' in header_status_date_text.text

    def validate_header_status_date_with_today_date(self):
        now = datetime.now()
        date = now.strftime("%d/%m/%Y")
        header_status_date_text = self.get_header_status_date().text
        form_date = header_status_date_text.split(": ", 1)[1]
        return form_date == date

    ##### header buttons #####
    def get_header_buttons_list(self):
        return self.web_element.find_elements(self.locator['By'], "//div[@class='actions-row']/button")

    def validate_number_of_header_buttons(self, number):
        count_btn = self.get_header_buttons_list()
        log.info(f"number of buttons is '{len(count_btn)}'")
        return len(count_btn) == int(number)

    def init_buttons_widgets(self, button):
        if button.get_web_element() is None:
            temp_btn = self.web_element.find_element(button.locator['By'], button.locator['Value'])
            button.set_web_element(temp_btn)

    def click_header_button(self, label):
        button = ButtonField(label)
        self.init_buttons_widgets(button)
        button.click_button()
        log.info(f"the button you clicked is : {label}")

    def init_info_dialog(self):
        if self.info_dialog.get_web_element() is None:
            info_dialog = WebDriverWait(driver, 30).until(
                EC.visibility_of((self.web_element.find_element(self.info_dialog.locator['By'],
                                                                self.info_dialog.locator['Value']))))
            self.info_dialog.set_web_element(info_dialog)

    def close_info_dialog(self):
        self.init_info_dialog()
        self.info_dialog.click_close_button()

    def validate_info_dialog_is_opened(self):
        self.init_info_dialog()
        return self.info_dialog.validate_dialog_is_displayed()

    def validate_info_dialog_is_closed(self):
        self.init_info_dialog()
        return self.info_dialog.validate_dialog_is_not_display()

    def validate_info_dialog_contains_text(self,text):
        self.init_info_dialog()
        if self.validate_info_dialog_is_opened():
            return self.info_dialog.validate_dialog_text(text)
        return False

    def validate_info_dialog_text_contains_at_least_chars(self,number):
        self.init_info_dialog()
        if self.validate_info_dialog_is_opened():
            return self.info_dialog.validate_dialog_text_contains_at_least_chars(number)
        return False

    #### header explanation ######

    def validate_header_explanation_area_is_displayed(self):
        log.info(f'Check if header explanation area is available')
        explanation = self.web_element.find_element(*HeaderLocators.explanation)
        return explanation.is_displayed()

    #### header explanation title ####

    def get_header_explanation_title(self):
        header_title = self.web_element.find_element(*HeaderLocators.explanation_title)
        return header_title

    def validate_header_explanation_title_with_default(self):
        return self.get_header_explanation_title().text == 'הסבר למילוי הטופס:'

    def validate_header_explanation_title_text(self, title):
        return self.get_header_explanation_title().text == title

    def validate_header_explanation_title_is_displayed(self):
        ex_title = self.get_header_explanation_title()
        return ex_title.is_displayed()

    #### header explanation text ####
    def get_header_explanation_text(self):
        explanation_text = self.web_element.find_element(*HeaderLocators.explanation_text)
        return explanation_text

    def validate_header_explanation_text_is_default(self):
        log.info("Get Header explanation title")
        explanation_title = self.get_header_explanation_text().text
        default_text = 'טופס זה נועד לסייע לך בהגשת תלונה בגין פגיעה בשכרך ובזכויותיך הסוציאליות על-פי החוק להגברת האכיפה של דיני עבודה, התשע"ב – 2011 כעובד קבלן של מזמין שירות בתחומי ניקיון, שמירה והסעדה.'
        return explanation_title in default_text

    def validate_header_explanation_text(self, text):
        return text in self.get_header_explanation_text().text

    def check_header_explanation_text_is_displayed(self):
        return self.get_header_explanation_text().is_displayed()

    def validate_header_explanation_contains_at_least_chars(self, number_of_chars):
        log.debug(f'validate if header explanation is available')
        explanation = self.get_header_explanation_text()
        return int(len(explanation.text)) > int(number_of_chars)
