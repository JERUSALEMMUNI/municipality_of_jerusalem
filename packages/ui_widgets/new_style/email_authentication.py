import time
from infra import logger, reporter
from bs4 import BeautifulSoup
from selenium.webdriver import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from features.steps.steps_locators.general_locators import GeneralLocators
from infra import logger
from ui_widgets.base_widget import BaseWidget
from ui_widgets.new_style.widget_locators.text_field_locators import TextFieldLocators

log = logger.get_logger(__name__)
rep = reporter.get_reporter()


class EmailAuthentication(BaseWidget):
    def __init__(self, label, index):
        super().__init__(label, index)
        self.user_data = {}

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


    def clear(self):
        self.web_element.clear()

    def wait_for_email(self, mailbox):
        emails = mailbox.get_messages()
        self.count_of_emails = len(emails)
        self.wait_for_new_email(self.count_of_emails, mailbox)
        self.user_data['email_body'] = mailbox.get_messages()[0].html_body
        if self.user_data['email_body'] is None:
            raise AssertionError('No email received')

    def wait_for_new_email(self, count_of_emails, mailbox):
        start_time = time.time()
        time_for_total_wait = 0
        for i in range(15):
            start_step = time.time()
            if len(mailbox.get_messages()) == count_of_emails + 1:
                break
            time.sleep(3)
            end_step = time.time()
            waiting_time = (end_step - start_step)
            time_diff_rounded = round(waiting_time, 2)
            time_for_total_wait = time_diff_rounded + time_for_total_wait
            log.info(f'wait for email, {time_for_total_wait} seconds passed')
        else:
            end_time = time.time()
            difference = end_time - start_time
            # raise ce.MJTimeOutError('no new email received')
            
    
    def fill_and_click_link(self, driver, email):
        if self.user_data['email_body'] == None:
            raise AssertionError('No email received')
        soup = BeautifulSoup(self.user_data['email_body'], 'html.parser')
        value_div = soup.find('div', {
            'style': 'direction: rtl; text-align: right;font-size: 20px;font-weight: bold;color : #ec9f0a;'})
        self.user_data['value'] = value_div.text.strip()
        driver.execute_script(
            "window.open('{}', '_blank');".format("https://jerdigistatusapi.jerusalem.muni.il/Client/#/login"))
        driver.switch_to.window(driver.window_handles[-1])
        time.sleep(2)
        WebDriverWait(driver, 30).until(EC.presence_of_element_located(GeneralLocators.id_number_new))
        driver.find_element(*GeneralLocators.id_number_new).send_keys("332796184")
        driver.find_element(*GeneralLocators.form_number_new).send_keys(self.user_data['value'])
        driver.find_element(*GeneralLocators.email_new).send_keys(email)
        driver.find_element(*GeneralLocators.send_message_button_new).send_keys(Keys.PAGE_DOWN)
        WebDriverWait(driver, 30).until(
            EC.element_to_be_clickable(GeneralLocators.send_message_button_new))
        time.sleep(1)
        driver.find_element(*GeneralLocators.send_message_button_new).click()

    def set_pin(self,driver):
        password = \
            self.user_data['email_body'].split('סיסמתך לכניסה חד פעמית לשירות הדיגיטלי של עיריית ירושלים היא ')[1].split(
                '</div>')[0]
        time.sleep(3)
        driver.find_element(By.XPATH, '//label[contains(text(),"קוד ההזדהות")]/following-sibling::input').send_keys(
        password)
        time.sleep(3)
        driver.find_element(By.XPATH, '//lib-input-text/following-sibling::button').click()
        pass
        time.sleep(3)
        
    def wait_for_second_email(self, driver, mailbox, current_page):
        if self.user_data['email_body'] == None:
            rep.add_label_to_step("No email received", "E-mail is not received")
            raise AssertionError('No email recieved')
        self.wait_for_new_email(self.count_of_emails + 1, mailbox)
        email_body2 = mailbox.get_messages()[0].html_body
        if email_body2 is None:
            rep.add_label_to_step("No email received", "E-mail is not received")
            raise AssertionError('No email received')
        # value2 = email_body2.split('קוד האימות שלך הוא: ')[1].split('<br />')[0]
        value2 = email_body2.split('סיסמתך לכניסה חד פעמית לשירות דיגיטלי של עיריית ירושלים היא ')[1].split('<br />')[0]
        if value2 is None:
            rep.add_label_to_step("No pin code", "pin code is not received from email")
        # WebDriverWait(self._config.driver, 30).until(EC.presence_of_element_located(GeneralLocators.fill_code_field))
        WebDriverWait(driver, 30).until(
            EC.presence_of_element_located(GeneralLocators.fill_code_field_new))
        # self._config.driver.find_element(*GeneralLocators.fill_code_field).send_keys(value2)
        driver.find_element(*GeneralLocators.fill_code_field_new).send_keys(value2)
        # self._config.driver.find_element(*GeneralLocators.click_link_request).click()
        driver.find_element(*GeneralLocators.click_link_request_new).click()
        time.sleep(5)
        WebDriverWait(driver, 30).until(EC.presence_of_element_located(GeneralLocators.see_form_new))
        driver.find_element(*GeneralLocators.see_form_new).click()
        time.sleep(3)
        driver.switch_to.window(driver.window_handles[-1])
        WebDriverWait(driver, 30).until(
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

    def close_all_tabs(self, driver):
        if self.user_data['email_body'] == None:
            rep.add_label_to_step("No email received", "E-mail is not received")
            self.user_data['validate'] = None
        num_tabs = len(driver.window_handles)
        for i in range(1, num_tabs):
            driver.close()
            driver.switch_to.window(driver.window_handles[-1])
            WebDriverWait(driver, 30).until(EC.presence_of_element_located((By.XPATH, "//body")))
        driver.switch_to.window(driver.window_handles[0])
        WebDriverWait(driver, 30).until(EC.presence_of_element_located((By.XPATH, "//body")))
        driver.find_element(*GeneralLocators.click_continue_button_new).click()
        num_tabs = len(driver.window_handles)
        if num_tabs == 1:
            rep.add_label_to_step("tabs are closed", "All unused tabs are closed correctly")
        else:
            rep.add_label_to_step(f"{num_tabs - 1} unused tabs still open", "Not all unused tabs are closed")
            raise Exception(f"{num_tabs - 1} unused tabs still open")
        
        
    def vlidate_form(self, driver, current_page):
        if self.user_data['validate'] == None:
            rep.add_label_to_step('No e-mail recieved', 'couldnt reach desiered page to make validation')
            raise ValueError("No email received, couldn't make validation")
        if not self.user_data['validate']:
            rep.add_label_to_step('failure reason', "We reached the desired url destination but the form number doesn't "
                                                    "equal the one we filled at the beginning")
            current_page.navigate_to_page_url()
            self.user_data['email_body'] = None
            return False
        else:
            rep.add_label_to_step('Correct verification',
                                  "validation done correctly and we are at the desired form number")
            self.user_data['email_body'] = None
            return True

    def click_email_option(self, driver):
        driver.find_element(By.XPATH, "//span[contains(text(),'הודעה במייל')]").click()
