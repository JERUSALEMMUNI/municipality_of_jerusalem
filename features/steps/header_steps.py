import os
import time

import pyautogui
from behave import *

from infra import logger, reporter, config
from utils import files_utils, misc_utils

rep = reporter.get_reporter()
log = logger.get_logger(__name__)


@then('validate municipality logo is displayed in header')
def validate_header_logo_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_logo(), "Header logo is not displayed"


@then('validate Header title is default')
def validate_header_title_is_default(context):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_title_with_default(), "Header default title is not displayed or changed"


@then('validate Form title is "{form_title}"')
def validate_form_title(context, form_title):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_title_text(form_title), f"Header title text is not the expected title"


@then('validate Header language option is displayed')
def validate_languages_buttons_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_is_languages_buttons_is_displayed(), "Header language button (arabic , hebrew) is not displayed "


@then('validate current step name is "{current_step}"')
def validate_current_step_number(context, current_step):
    widget = context._config.current_page.widgets["page_steps"]
    widget.wait_until_aria_selected(current_step)
    assert widget.validate_current_step_name(current_step), "Wrong step name"


@then('validate Form explanation contains "{explanation_text}"')
def validate_header_explanation_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_explanation_text(explanation_text), f"Expected explanation is wrong"


@then('validate Form explanation exists and contains at least "{chars_count}" chars')
def validate_header_explanation_contains_text(context, chars_count):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_explanation_is_displayed() and widget.validate_header_explanation_contains_at_least_chars(
        int(chars_count)), f"Explanation text is not displayed or it doesnt contains the expected chars"


@When('from header click on "{button_name}" icon')
def click_button(context, button_name):
    widget = context._config.current_page.widgets["header"]
    widget.click_header_button(button_name, context._config.driver)


# ------------------------------------------------------------ old header -----------------------------------------------

# information dialog and button
@then('validate information dialog is opened')
def validate_information_dialog_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    widget.init_info_dialog()
    assert widget.validate_info_dialog_is_opened(), "Header information dialog in not opened"


@then('validate information dialog contains "{explanation_text}"')
def validate_information_dialog_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    widget.init_info_dialog()
    assert widget.validate_info_dialog_contains_text(explanation_text), f"Explanation_text is not in information dialog"


@then('validate information dialog text in old header exists and contains at least "{count_chars}" chars')
def validate_header_explanation_contains_text(context, count_chars):
    widget = context._config.current_page.widgets["header"]
    widget.init_info_dialog()
    assert widget.validate_info_dialog_is_opened() and widget.validate_info_dialog_text_contains_at_least_chars(
        int(count_chars)), f"Information dialog is not displayed or it doesnt contain at least the expected chars"


@When('click on X button')
def click_x_button(context):
    widget = context._config.current_page.widgets["header"]
    widget.init_info_dialog()
    widget.close_info_dialog()


@then('validate information dialog is closed')
def validate_information_dialog_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    widget.init_info_dialog()
    assert widget.validate_info_dialog_is_closed(), "Information dialog in not closed"


# save dialog and button


@then('validate municipality logo is displayed in old header')
def validate_header_logo_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_logo(), "Header logo is not displayed"


@then('validate old header title is default')
def validate_header_title_is_default(context):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_title_with_default(), "Header title is not as default title"


@then('validate form Title in old header is "{form_title}"')
def validate_header_title_is_default(context, form_title):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_title_text(form_title), "Header title not equal to expected title"


@then('validate form Name in old header is "{form_name}"')
def validate_header_title_is_default(context, form_name):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_application_name_text(form_name), "Form Name not equal to expected name"


@then('validate form explanation in old header contains "{explanation_text}"')
def validate_header_explanation_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_explanation_text(
        explanation_text), "Header explanation text doesnt contain the expected text"


@then('validate form explanation in old header exists and contains at least "{count_chars}" chars')
def validate_header_explanation_contains_text(context, count_chars):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_header_explanation_area_is_displayed() and widget.validate_header_explanation_contains_at_least_chars(
        int(count_chars)), f"old header explanation is not displayed or it doesnt contain at least expected chars"


@then('an error message appeared with the following description: "{message}"')
def validate_alert_popup_message(context, message):
    context._config.driver.wait_for_alert_to_appear()
    try:
        alert = context._config.driver.switch_to.alert
        alert_text = alert.text
        alert.accept()
    except:
        raise AssertionError('No popup message')

    if alert_text != message:
        rep.add_label_to_step('Error message is not as expected', f'''Found Message: {alert_text}''')
        raise AssertionError('alert message is not as expected')


@when("close error message")
def close_error_message(context):
    try:
        context._config.driver.switch_to.alert.accept()
    except Exception as e:
        log.info('No Error Message caught')
        log.exception(e)


@when("click on cancel button")
def click_cancel_button_in_dialog(context):
    context._config.driver.click_image_on_screen('print_dialog_cancel')


@when("click on print button")
def click_print_button_in_dialog(context):
    context._config.driver.click_image_on_screen('print_dialog_print')


@when('I save the document as "{new_file}"')
def handle_save_as_dialog(context, new_file):
    folder_to_save_in = os.path.join(config.temp_folder, 'SavedPDF')
    os.makedirs(folder_to_save_in, exist_ok=True)
    dst_path = os.path.join(folder_to_save_in, f'{new_file}_print.pdf')
    if os.path.exists(dst_path):
        files_utils.remove_paths(dst_path)
    pyautogui.typewrite(dst_path)
    pyautogui.press('enter')
    context.user_data[new_file] = dst_path
    misc_utils.while_timeout(os.path.exists, True, 30, 'Print File take too much', dst_path)
    time.sleep(2)


@then('both files "{new_file1}" and "{new_file2}" should be the same')
def comapre_two_pdf_files(context, new_file1, new_file2):
    new_file1_path = context.user_data[new_file1]
    new_file2_path = context.user_data[new_file2]
    res = files_utils.compare_pdfs(new_file1_path, new_file2_path)
    if not res:
        rep.add_pdf_file_to_step(new_file1_path, f'{new_file1}')
        rep.add_pdf_file_to_step(new_file2_path, f'{new_file2}')
        raise AssertionError('files are not the same')


@then('I compare "{new_file}" with reference pdf file "{reference_pdf}"')
def compare_pdf_file_with_reference(context, new_file, reference_pdf):
    file1_path = context.user_data[new_file]
    file2_path = os.path.join(config.utilities_folder, 'expected_references', 'pdf_files', f'{reference_pdf}.pdf')
    res = files_utils.compare_pdfs(file1_path, file2_path)
    if not res:
        rep.add_pdf_file_to_step(file1_path, f'new file - {new_file}')
        rep.add_pdf_file_to_step(file2_path, f'reference file - {reference_pdf}')
        raise AssertionError('files are not the same as reference')


# save button dialog
@when("click ok button of alert popup")
def click_alert_accept(context):
    widget = context._config.current_page.widgets["header"]
    widget.click_alert_accept(context._config.driver)


@then('validate alert popup text in old header contains "{explanation_text}"')
def validation_alert_popup_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    assert widget.validate_alert_text(context._config.driver,
                                      explanation_text), "alert popup text doesnt contain the expected text"


# save form dialog and button
@then('validate save form dialog is opened')
def validate_save_dialog_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    widget.init_save_dialog()

    assert widget.validate_save_dialog_is_opened(), "Header save dialog in not opened"


@then('validate save dialog contains "{explanation_text}"')
def validate_save_dialog_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]
    widget.init_save_dialog()
    assert widget.validate_save_dialog_contains_text(explanation_text), f"Explanation_text is not in save dialog"


@then('validate save dialog text in old header exists and contains at least "{count_chars}" chars')
def validate_header_explanation_contains_text(context, count_chars):
    widget = context._config.current_page.widgets["header"]
    widget.init_save_dialog()
    assert widget.validate_save_dialog_is_opened() and widget.validate_save_dialog_text_contains_at_least_chars(
        int(count_chars)), f"save dialog is not displayed or it doesnt contain at least the expected chars"


@When('click on Continue button')
def click_continue_button(context):
    widget = context._config.current_page.widgets["header"]
    widget.init_save_dialog()
    widget.click_continue_button()
