import time

from infra.enums import *
from infra import reporter
from bs4 import BeautifulSoup
from selenium.webdriver import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.email_authentication_localors import EmailAuthenticationLocators
from ui_widgets.new_style.widget_locators.email_authentication_localors import EmailAuthenticationLocators
from utils import misc_utils

log = logger.get_logger(__name__)
rep = reporter.get_reporter()


class EmailAuthentication(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)
        self.user_data = {}
        self.set_pin_error = None

    @property
    def get_text(self):
        return self.web_element.get_attribute('value')

    @property
    def locator(self):
        return {
            'By': By.XPATH,
            'Value': '//body'
        }

    def validate_text(self, text):
        return self.web_element.get_attribute('value') == text

    def set_text(self, text):
        self.clear()
        self.web_element.send_keys(text)

    def has_text(self, text):
        return text in self.get_text

    @property
    def is_invalid(self):
        return 'ng-invalid' in self.web_element.get_attribute('class')

    @property
    def is_valid(self):
        return 'ng-valid' in self.web_element.get_attribute('class')

    def wait_for_email(self, mailbox):
        emails = self.get_temp_email(mailbox)
        self.count_of_emails = len(emails)
        if not self.wait_for_new_email(self.count_of_emails, mailbox):
            self.web_element.find_element(*EmailAuthenticationLocators.click).click()
            raise AssertionError('No email received')
        self.user_data['email_body'] = self.get_temp_email(mailbox)[0].html_body

    def wait_for_new_email(self, count_of_emails, mailbox):
        start_time = time.time()
        time_for_total_wait = 0
        for i in range(15):
            start_step = time.time()
            if len(self.get_temp_email(mailbox)) == count_of_emails + 1:
                return True
            time.sleep(3)
            end_step = time.time()
            waiting_time = (end_step - start_step)
            time_diff_rounded = round(waiting_time, 2)
            time_for_total_wait = time_diff_rounded + time_for_total_wait
            log.info(f'wait for email, {time_for_total_wait} seconds passed')
        else:
            end_time = time.time()
            difference = end_time - start_time
            log.info(str(difference) + ' seconds passed and no email received')
            return False

    def fill_and_click_link(self, driver, email, index):
        if self.user_data['email_body'] == None:
            raise AssertionError('No email received')
        soup = BeautifulSoup(self.user_data['email_body'], 'html.parser')
        value_div = soup.find('div', {
            'style': 'direction: rtl; text-align: right;font-size: 20px;font-weight: bold;color : #ec9f0a;'})
        self.user_data['value'] = value_div.text.strip()
        driver.execute_script(
            "window.open('{}', '_blank');".format(
                EmailAuthenticationLocators.email_dict['validation_link'].get(index)))
        driver.switch_to.window(driver.window_handles[-1])
        time.sleep(2)
        WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.presence_of_element_located(EmailAuthenticationLocators.email_dict['id_number'].get(index)))
        driver.find_element(*EmailAuthenticationLocators.email_dict['id_number'].get(index)).send_keys("332796184")
        driver.find_element(*EmailAuthenticationLocators.email_dict['form_number'].get(index)).send_keys(
            self.user_data['value'])
        driver.find_element(*EmailAuthenticationLocators.email_dict['email'].get(index)).send_keys(email)
        driver.find_element(*EmailAuthenticationLocators.email_dict['send_message_button'].get(index)).send_keys(
            Keys.PAGE_DOWN)
        WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.element_to_be_clickable(EmailAuthenticationLocators.email_dict['send_message_button'].get(index)))
        time.sleep(1)
        driver.find_element(*EmailAuthenticationLocators.email_dict['send_message_button'].get(index)).click()

    def set_pin(self, driver, current_page):
        password = \
            self.user_data['email_body'].split(EmailAuthenticationLocators.email_dict['email_body_split_message'])[
                1].split(
                '</div>')[0]
        WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.visibility_of_element_located(EmailAuthenticationLocators.email_dict['pin_code']))
        driver.find_element(*EmailAuthenticationLocators.email_dict['pin_code']).send_keys(password)
        click_continue = WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.element_to_be_clickable(EmailAuthenticationLocators.email_dict['continue_to_step']))
        current = current_page.widgets.get('page_steps').get_current_step
        pop_up_appear_times = 0
        while True:
            if current != current_page.widgets.get('page_steps').get_current_step:
                return True
            pop_up_appear_times = pop_up_appear_times + 1
            if pop_up_appear_times == 6:
                self.set_pin_error = True
                self.web_element.find_element(*EmailAuthenticationLocators.dialog).click()
                return False
            try:
                click_continue.click()
                WebDriverWait(driver, 5).until(EC.alert_is_present())
                alert = driver.switch_to.alert
                alert.accept()
                time.sleep(0.5)
                log.error('incorrect pin code alert window appeared although the pin code is correct')
                raise KeyError('incorrect pin code alert window appeared although the pin code is correct')
            except:
                log.info('No alert found')

    def wait_for_second_email(self, driver, mailbox, current_page, index):
        if self.set_pin_error == True:
            rep.add_label_to_step("alert message appeared", "Pin code is correct but there was an alert message")
            raise AssertionError('alert message appeared')
        if self.user_data['email_body'] == None:
            rep.add_label_to_step("No email received", "E-mail is not received")
            raise AssertionError('No email recieved')
        self.wait_for_new_email(self.count_of_emails + 1, mailbox)
        email_body2 = self.get_temp_email(mailbox)[0].html_body
        if email_body2 is None:
            rep.add_label_to_step("No email received", "E-mail is not received")
            raise AssertionError('No email received')
        value2 = email_body2.split(EmailAuthenticationLocators.email_dict['pin_code_second_time'].get(index))[1].split(
            '<br />')[0]
        if value2 is None:
            rep.add_label_to_step("No pin code", "pin code is not received from email")
        WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.presence_of_element_located(EmailAuthenticationLocators.email_dict['fill_code_field'].get(index)))
        driver.find_element(*EmailAuthenticationLocators.email_dict['fill_code_field'].get(index)).send_keys(value2)
        driver.find_element(*EmailAuthenticationLocators.email_dict['click_link_request'].get(index)).click()
        WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.element_to_be_clickable(EmailAuthenticationLocators.email_dict['see_form'].get(index)))
        driver.find_element(*EmailAuthenticationLocators.email_dict['see_form'].get(index)).click()
        # time.sleep(3)
        # Todo:
        WebDriverWait(driver, 10).until(EC.new_window_is_opened(driver.window_handles))
        driver.switch_to.window(driver.window_handles[-1])
        WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.presence_of_element_located(
                (By.XPATH, f"//*[contains(text(),'מספר בקשה: {self.user_data['value']}')]")))
        checkId = driver.find_element(By.XPATH, f"//*[contains(text(),'מספר בקשה: {self.user_data['value']}')]")
        if f"{current_page.page_title}?sess" in driver.current_url:
            rep.add_label_to_step('reached destination',
                                  "We have reached our desired url to check the validation process of e-mail")
        else:
            rep.add_label_to_step('failure to reach destination', "didnt required form url destination")
        if self.user_data['email_body'] == None:
            self.user_data['validate'] = False
        else:
            self.user_data['validate'] = checkId.is_displayed()

    def get_temp_email(self, mailbox):
        return misc_utils.while_timeout(mailbox.get_messages, True, 60, 'Error getting emails from inbox'
                                        , w_raise_on_error=False, w_comp_func=lambda a, b: type(a) is not list)

    def close_all_tabs(self, driver, index):
        if self.user_data['email_body'] == None:
            rep.add_label_to_step("No email received", "E-mail is not received")
            self.user_data['validate'] = None
        num_tabs = len(driver.window_handles)
        for i in range(1, num_tabs):
            driver.close()
            driver.switch_to.window(driver.window_handles[-1])
            time.sleep(1)
            WebDriverWait(driver, WaitInterval.LONG.value).until(
                EC.presence_of_element_located(EmailAuthenticationLocators.email_dict['email_body_html']))
        driver.switch_to.window(driver.window_handles[0])
        WebDriverWait(driver, WaitInterval.LONG.value).until(
            EC.presence_of_element_located(EmailAuthenticationLocators.email_dict['email_body_html']))
        driver.find_element(*EmailAuthenticationLocators.email_dict['click_continue_button'].get(index)).click()
        num_tabs = len(driver.window_handles)
        if num_tabs == 1:
            rep.add_label_to_step("tabs are closed", "All unused tabs are closed correctly")
        else:
            rep.add_label_to_step(f"{num_tabs - 1} unused tabs still open", "Not all unused tabs are closed")
            raise Exception(f"{num_tabs - 1} unused tabs still open")

    def vlidate_form(self, current_page):
        if self.user_data['validate'] == None:
            rep.add_label_to_step('No e-mail recieved', 'couldnt reach desiered page to make validation')
            raise ValueError("No email received, couldn't make validation")
        if not self.user_data['validate']:
            rep.add_label_to_step('failure reason',
                                  "We reached the desired url destination but the form number doesn't "
                                  "equal the one we filled at the beginning")
            # current_page.navigate_to_page_url()
            self.user_data['email_body'] = None
            return False
        else:
            rep.add_label_to_step('Correct verification',
                                  "validation done correctly and we are at the desired form number")
            # current_page.navigate_to_page_url()
            self.user_data['email_body'] = None
            return True

    def click_email_option(self, driver):
        try:
            WebDriverWait(driver, WaitInterval.LONG.value).until(
                EC.element_to_be_clickable(EmailAuthenticationLocators.email_dict['select_email_option']))
            driver.find_element(*EmailAuthenticationLocators.email_dict['select_email_option']).click()
            return True
        except:
            return False

    def go_to_next_step(self, context, driver, mailbox, current_page):
        if not self.click_email_option(driver):
            rep.add_label_to_step('Didnt click the button', 'Didnt click on email option button')
            raise AssertionError('Didnt click the button')
        self.wait_for_email(mailbox)
        if not self.set_pin(driver, current_page):
            rep.add_label_to_step('alert message appeared', 'pin code is correct but alert message appeared and '
                                                            'couldnt reach the next step')
            raise AssertionError('pin code is correct but alert message appeared and '
                                 'couldnt reach the next step')
