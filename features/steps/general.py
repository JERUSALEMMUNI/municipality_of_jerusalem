import time
from bs4 import BeautifulSoup
import allure
from behave import *
from selenium.webdriver.common.by import By
from infra import logger, reporter, custom_exceptions as ce


rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@given('Navigate to "{screen_name}" form')
def navigate_to_screen(context, screen_name):
    driver = context._config.driver
    current_page = context.screens_manager.create_screen([screen_name], driver=driver)
    if (context._config.current_page and context._config.current_page.page_title != current_page.page_title) \
            or context._config.current_page is None:
        context._config.current_page = current_page
        current_page.navigate_to_page_url()
        for element in current_page.main_elements_to_wait_when_load:
            # wait method to wait the element
            widget = current_page.widgets.get_without_set_element(element)
            driver.wait_medium_for_presence_of_element(widget.locator['By'], widget.locator['Value'])
    allure.dynamic.link(f'{context._config.current_page.driver.current_url}', "Step link",
                        "click here to see the link of tested step")


@when('checked if "{text}" is the text of "{widget_name}"')
def check_text_field(context, text, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.check_text(text, False)


@then('field "{widget_name}" has invalid value')
def field_has_invalid_value(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    if not widget.is_invalid:
        log.info(f"The value at field {widget_name} is considered "
                 f" an invalid value but it appeared as valid")
        rep.add_label_to_step("wrong_value", f"The value at field {widget_name} is considered "
                                             f" an invalid value but it appeared as valid")
        raise AssertionError("invalid value and considered as valid")


@then('field "{widget_name}" has valid value')
def field_has_valid_value(context, widget_name):
    widget = context._config.current_page.widgets[widget_name]
    loop = widget.is_invalid
    log.info(loop)
    noop = widget.is_valid
    log.info(noop)
    assert widget.is_invalid is False and widget.is_valid is True, "Field considered as invalid"


@when('test temp')
def click_buttonsdfsdfsd(context):
    emails = context.mailbox.get_messages()
    count_of_emails = len(emails)
    from selenium.webdriver.common.by import By
    context._config.current_page.driver.find_element(By.XPATH,
                                                     '//*[@id="contentToConvert"]/div/div/form/app-first-step/div/lib-identification/div/lib-otp-identification/div/otp-dialog/p-dialog/div/div/div[2]/div[2]/div[2]/button[2]').click()
    while len(context.mailbox.get_messages()) != count_of_emails + 1:
        time.sleep(3)
    email_body = context.mailbox.get_messages()[-1].html_body
    password = email_body.split('סיסמתך לכניסה חד פעמית לשירות הדיגיטלי של עיריית ירושלים היא ')[1].split('</div>')[0]
    time.sleep(3)
    context._config.current_page.driver.find_element(By.XPATH,
                                                     '//*[@id="contentToConvert"]/div/div/form/app-first-step/div/lib-identification/div/lib-otp-identification/div/otp-dialog/p-dialog/div/div/div[2]/div[2]/div[1]/lib-input-text/div/input').send_keys(
        password)
    context._config.current_page.driver.find_element(By.XPATH,
                                                     '//*[@id="contentToConvert"]/div/div/form/app-first-step/div/lib-identification/div/lib-otp-identification/div/otp-dialog/p-dialog/div/div/div[2]/div[2]/div[1]/button').click()
    time.sleep(5)


@then('check if "{widget_name}" error is "{error_expectation}"')
def error_msg(context, widget_name, error_expectation):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.check_error_message(error_expectation), "Incorrect error expectation message"


@when('open disabled list')
def open_special_list(context):
    context._config.current_page.open_disabled_list()


@when('close disabled list')
def close_special_list(context):
    context._config.current_page.close_disabled_list()


@Then('Back to previous page')
def back_to_prev_page(context):
    context._config.driver.execute_script("window.history.go(-1)")
    context.screens_manager.screens = {}
    context._config.current_page = None


@Then('Validate current page is "{page_name}"')
def back_to_prev_page(context, page_name):
    assert page_name in context._config.driver.current_url, "Error, Wrong page url"



@Then('validate new email received "{email}"')
def click_on_link_email(context, email):
    emails = context.mailbox.get_messages()
    count_of_emails = len(emails)
    wait_for_new_email(context, count_of_emails)
    email_body = context.mailbox.get_messages()[0].html_body
    soup = BeautifulSoup(email_body, 'html.parser')
    value_div = soup.find('div', {
        'style': 'direction: rtl; text-align: right;font-size: 20px;font-weight: bold;color : #ec9f0a;'})
    value = value_div.text.strip()
    click_here = "https://jerequestatusapi.jerusalem.muni.il/JerSiteStatusApp/#/status/3"
    # Open the URL in a new window
    context._config.driver.execute_script("window.open('{}', '_blank');".format(click_here))
    context._config.driver.switch_to.window(context._config.driver.window_handles[-1])
    context._config.driver.find_element(By.XPATH,
                                        '//*[contains(text(),"מספר אסמכתא")]//preceding-sibling::input').send_keys(
        value)
    context._config.driver.find_element(By.XPATH,
                                        '//*[contains(text(),"מספר תעודת זהות /דרכון*")]//preceding-sibling::input').send_keys(
        "3327")
    context._config.driver.find_element(By.XPATH, '//*[contains(text(),"מייל")]//preceding-sibling::input').send_keys(
        email)
    context._config.driver.find_element(By.XPATH, '//input[@value="שלח הזדהות"]').click()
    wait_for_new_email(context, count_of_emails+1)
    email_body2 = context.mailbox.get_messages()[0].html_body
    value2 = email_body2.split('קוד האימות שלך הוא: ')[1].split('<br />')[0]
    context._config.driver.find_element(By.XPATH,
                                        '//*[contains(text(),"הזן את הקוד")]//preceding-sibling::input').send_keys(
        value2)
    time.sleep(3)
    context._config.driver.find_element(By.XPATH, '//input[@value="אתר בקשה"]').click()
    time.sleep(3)
    context._config.driver.find_element(By.XPATH,
                                        '//span[contains(text()," לצפייה בטופס > ")]').click()
    time.sleep(3)
    context._config.driver.switch_to.window(context._config.driver.window_handles[-1])
    checkId = context._config.driver.find_element(By.XPATH, f"//*[contains(text(),'מספר בקשה: {value}')]")
    if "ContractorEmpRights?sess" in context._config.driver.current_url:
        rep.add_label_to_step('reached destination',
                              "We have reached our desired url to check the validation process of e-mail")
    if not checkId.is_displayed():
        rep.add_label_to_step('failure reason', "We reached the desired url destination but the form number doesn't "
                                                "equal the one we filled at the beginning")
        raise AssertionError('The form number is not available')
    else:
        rep.add_label_to_step('Correct verification',
                              "validation done correctly and we are at the desired form number")


def wait_for_new_email(context, count_of_emails):
    for i in range(15):
        if len(context.mailbox.get_messages()) == count_of_emails + 1:
            break
        log.info('wait for email')
        time.sleep(3)
    else:
        raise ce.MJTimeOutError('no new email received')
