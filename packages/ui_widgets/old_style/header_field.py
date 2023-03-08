from datetime import datetime

import pyautogui
from selenium.webdriver.common.alert import Alert
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
    def __init__(self,index):
        super().__init__(self,index)
        self.info_dialog = Dialog(index)
        self.save_dialog = Dialog(index)
        self.main_title = 'שרותים דיגיטליים'
        self.header_status_text = 'סטטוס:'
        self.header_date_text = 'תאריך מילוי הטופס'
        self.header_explanation_title = 'הסבר למילוי הטופס:'
        self.default_explanation_text = 'טופס זה נועד לסייע לך בהגשת תלונה בגין פגיעה בשכרך ובזכויותיך הסוציאליות על-פי החוק להגברת האכיפה של דיני עבודה, התשע"ב – 2011 כעובד קבלן של מזמין שירות בתחומי ניקיון, שמירה והסעדה.'

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': "//core-header"
        }

    #### header title ####
    def get_header_title(self):
        '''
        :return: header title web element
        '''
        header_title = self.web_element.find_element(*HeaderLocators.title)
        return header_title

    def validate_header_title_with_default(self) -> bool:
        """
        :return: bool if header title same as default title
        """
        log.info("validating if header title same as default title")
        return self.get_header_title().text == self.main_title

    def validate_header_title_text(self, title) -> bool:
        """
        :param title: expected header title
        :return: bool if header title same as expected
        """
        log.info("check if header title same  as expected title")
        log.debug(f"check if header title same  as expected {title}")
        return self.get_header_title().text == title

    def validate_header_title_is_displayed(self) -> bool:
        """
        :return: bool if header title is displayed
        """
        log.info("validating if header title is displayed")
        title = self.get_header_title()
        return title.is_displayed()

    #### header logo #####
    def get_header_logo(self):
        """
        :return: header logo as web element
        """
        log.info("getting header logo")
        return self.web_element.find_element(*HeaderLocators.logo)

    def validate_header_logo(self) -> bool:
        """
        :return: bool if header logo is displayed
        """
        log.info("validating if header logo is displayed")
        header_logo = self.get_header_logo()
        return header_logo.is_displayed()

    ##### header form name #####
    def get_header_application_name(self):
        """
        :return: web element of header application name
        """
        log.info("getting header application name")
        return self.web_element.find_element(*HeaderLocators.name)

    def validate_header_application_name_text(self, name: str) -> bool:
        """
        :name: expected application name
        :return: bool if header application name same as expected
        """
        log.info("validating if header application name same as expected")
        log.info(f"validating if header application name same as {name}")
        return self.get_header_application_name().text == name

    def validate_header_application_name_is_displayed(self) -> bool:
        """
        :return: bool if header application name is displayed
        """
        log.info("validate if header application name is displayed")
        title = self.get_header_title()
        return title.is_displayed()

    ###### header status #####
    def get_header_status(self):
        """
        :return: web element of form status
        """
        log.info("getting from status from header")
        return self.web_element.find_element(*HeaderLocators.status)

    def validate_header_status_is_displayed(self) -> bool:
        """
        :return: bool if form statuts is displayed on header
        """
        log.info("validating form status from header is displayed")
        status = self.get_header_status()
        return status.is_displayed()

    def validate_header_status_text(self) -> bool:
        """
        :return: bool is default status text is part of header form status
        """
        log.info("validating form status default text is part of header form status")
        header_status = self.get_header_status()
        return self.header_status_text in header_status.text

    def validate_current_header_status(self, status):
        """
        :status: expected status
        :return: bool if current form status same as expected
        """
        log.info("validating if header form status is same as expected")
        log.debug(f"validating if header form status is same as {status}")
        header_status = self.get_header_status()
        return status in header_status.text

    ###### header status date  #####
    def get_header_status_date(self):
        """
        :return: web element of header form date
        """
        log.info("getting header form date")
        return self.web_element.find_element(*HeaderLocators.date)

    def validate_header_status_date_text(self) -> bool:
        """
        :return: bool if header form date same as default
        """
        log.info("validating header form date same as default")
        header_status_date_text = self.get_header_status_date()
        return self.header_date_text in header_status_date_text.text

    def validate_header_status_date_with_today_date(self) -> bool:
        """
        :return: bool if header form date same as today's date
        """
        now = datetime.now()
        date = now.strftime("%d/%m/%Y")
        log.debug(f"today's date is {date}")
        header_status_date_text = self.get_header_status_date().text
        form_date = header_status_date_text.split(": ", 1)[1]
        log.info("validating if header form date same as today's date")
        log.info(f"validating if header form date same as today's date {date}")
        return form_date == date

    ##### header buttons #####
    def get_header_buttons_list(self):
        """
        :return: list of web elements of header buttons
        """
        return self.web_element.find_elements(self.locator['By'], "//div[@class='actions-row']/button")

    def validate_number_of_header_buttons(self, number: int) -> bool:
        """
        :number: expected number of total buttons on header
        :return: bool if total number of button same as expected
        """
        count_btn = self.get_header_buttons_list()
        log.info("validating if total number of button same as expected")
        log.debug(f"number of buttons is '{len(count_btn)}'")
        return len(count_btn) == number

    def init_buttons_widgets(self, button):
        """
        :button: button title to initialise
        """
        if button.get_web_element() is None:
            temp_btn = self.web_element.find_element(button.locator['By'], button.locator['Value'])
            button.set_web_element(temp_btn)

    def click_header_button(self, label: str, chrome_driver):
        """
        initialise button form text then click on it
        """
        button = ButtonField(label)
        self.init_buttons_widgets(button)
        if 'הדפס' != label:
            button.click_button()
        else:
            chrome_driver.execute_script("window.scrollTo(0,0)")
            rect = button.web_element.rect
            browser_navigation_panel_height = chrome_driver.execute_script(
                'return window.outerHeight - window.innerHeight;')
            y_absolute_coord = button.web_element.location['y'] + browser_navigation_panel_height
            x_absolute_coord = button.web_element.location['x']
            pyautogui.click(x_absolute_coord + rect['width'] / 2, y_absolute_coord + rect['height'] / 2)
        log.info("clicking on button")
        log.debug(f"the button you clicked is : {label}")

    def init_info_dialog(self):
        """
        initialise information dialog when its displayed
        """
        if self.info_dialog.get_web_element() is None:
            info_dialog = WebDriverWait(driver, 10).until(
                EC.visibility_of((self.web_element.find_element(self.info_dialog.locator['By'],
                                                                self.info_dialog.locator['Value']))))
            self.info_dialog.set_web_element(info_dialog)

    def close_info_dialog(self):
        """
        click on X button of information dialog
        """
        self.info_dialog.click_close_button()
        WebDriverWait(driver, 10).until(
            EC.invisibility_of_element((self.web_element.find_element(self.info_dialog.locator['By'],
                                                                      self.info_dialog.locator['Value']))))

    def validate_info_dialog_is_opened(self) -> bool:
        """
        :return:bool if information dialog is displayed
        """
        return self.info_dialog.validate_dialog_is_displayed()

    def validate_info_dialog_is_closed(self) -> bool:
        """
        :return: bool if information dialog is closed
        """
        return self.info_dialog.validate_dialog_is_not_display()

    def validate_info_dialog_contains_text(self, text: str) -> bool:
        """
        :text: should be part of information dialog text
        :return: bool if information dialog text constains input text
        """
        log.info("validating if information dialog text contains input text")
        log.debug(f"validating if information dialog text contains {text}")
        if self.validate_info_dialog_is_opened():
            return self.info_dialog.validate_dialog_text(text)
        return False

    def validate_info_dialog_text_contains_at_least_chars(self, number: int) -> bool:
        """
        :number:number of chars
        :return: bool if length of information dialog text big or equal to input number
        """
        log.info("validating if information dialog text length bigger or equal to input number")
        log.debug(f"validating if information dialog text length bigger or equal to {number}")
        if self.validate_info_dialog_is_opened():
            return self.info_dialog.validate_dialog_text_contains_at_least_chars(number)
        return False

    #### header explanation ######

    def validate_header_explanation_area_is_displayed(self) -> bool:
        """
        :return: bool if header explanation area is displayed
        """
        log.info("validating if header explanation area is displayed")
        explanation = self.web_element.find_element(*HeaderLocators.explanation)
        return explanation.is_displayed()

    #### header explanation title ####

    def get_header_explanation_title(self):
        """
        :return: web element of header explanation title
        """
        log.info("getting header explanation title")
        header_title = self.web_element.find_element(*HeaderLocators.explanation_title)
        return header_title

    def validate_header_explanation_title_with_default(self) -> bool:
        """
        :return: bool if header explanation title same as default
        """
        log.info("validating if header explanation title same as default")
        return self.get_header_explanation_title().text == self.header_explanation_title

    def validate_header_explanation_title_text(self, title: str) -> bool:
        """
        :title: expected header explanation title
        :return: bool if header expected title same as input title
        """
        log.info("validating if header explanation title same as input title")
        log.debug(f"validating if header explanation title same as {title}")
        return self.get_header_explanation_title().text == title

    def validate_header_explanation_title_is_displayed(self) -> bool:
        """
        :return: bool if header explanation title is displayed
        """
        log.info("validating if header explanation title is displayed")
        ex_title = self.get_header_explanation_title()
        return ex_title.is_displayed()

    #### header explanation text ####
    def get_header_explanation_text(self):
        """
        :return: web element of header explanation text
        """
        log.info("getting header explanation text")
        explanation_text = self.web_element.find_element(*HeaderLocators.explanation_text)
        return explanation_text

    def validate_header_explanation_text_is_default(self) -> bool:
        """
        :return: bool if header explanation text same as default text
        """
        log.info("validating if header explanation text same as default text")
        explanation_title = self.get_header_explanation_text().text
        return explanation_title == self.default_explanation_text

    def validate_header_explanation_text(self, text: str) -> bool:
        """
        :return: bool if header explanation text same as input text
        """
        log.info("validating if header explanation text same as input text")
        log.debug(f"validating if header explanation text same as {text}")
        return text in self.get_header_explanation_text().text

    def check_header_explanation_text_is_displayed(self) -> bool:
        """
        :return: bool if header explanation text is displayed
        """
        return self.get_header_explanation_text().is_displayed()

    def validate_header_explanation_contains_at_least_chars(self, number: int) -> bool:
        """
        :number:number of chars
        :return: bool if length of header explanation text big or equal to input number
        """
        log.info("validating if header explanation text length bigger or equal to input number")
        log.debug(f"validating if header explanation text length bigger or equal to {number}")
        explanation = self.get_header_explanation_text()
        return len(explanation.text) >= number

    # save button and dialog
    def get_alert_text(self, driver) -> str:
        alert = Alert(driver)
        return alert.text

    def click_alert_accept(self, driver):
        alert = Alert(driver)
        alert.accept()

    def validate_alert_text(self, driver, expected_text: str) -> bool:
        actual_text = self.get_alert_text(driver)
        return actual_text in expected_text

    def init_save_dialog(self):
        """
        initialise save form dialog when its displayed
        """
        if self.save_dialog.get_web_element() is None:
            save_dialog = WebDriverWait(driver, 10).until(
                EC.visibility_of((self.web_element.find_element(*HeaderLocators.save_dialog))))
            self.save_dialog.set_web_element(save_dialog)

    def get_save_dialog_text(self):
        return self.save_dialog.web_element.find_element(*HeaderLocators.save_dialog_text).text

    def click_continue_button(self):
        self.save_dialog.web_element.find_element(*HeaderLocators.save_dialog_continue_button).click()

    def validate_save_dialog_is_opened(self) -> bool:
        """
        :return:bool if save from dialog is displayed
        """
        return self.save_dialog.validate_dialog_is_displayed()

    def validate_save_dialog_is_closed(self) -> bool:
        """
        :return: bool if save form dialog is closed
        """
        return self.save_dialog.validate_dialog_is_not_display()

    def validate_save_dialog_contains_text(self, text: str) -> bool:
        """
        :text: should be part of save form dialog text
        :return: bool if save dialog text contains input text
        """
        log.info("validating if save form dialog text contains input text")
        log.debug(f"validating if save from dialog text contains {text}")
        if self.validate_save_dialog_is_opened():
            return text in self.get_save_dialog_text()
        return False

    def validate_save_dialog_text_contains_at_least_chars(self, number: int) -> bool:
        """
        :number:number of chars
        :return: bool if length of save form dialog text big or equal to input number
        """
        log.info("validating if save form dialog text length bigger or equal to input number")
        log.debug(f"validating if save from dialog text length bigger or equal to {number}")
        if self.validate_save_dialog_is_opened():
            return len(self.get_save_dialog_text()) >= number
        return False
