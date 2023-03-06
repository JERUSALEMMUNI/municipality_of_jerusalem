from behave import *
from infra import logger, reporter

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


@then('validate current step number is "{current_step}"')
def validate_current_step_number(context, current_step):
    widget = context._config.current_page.widgets["header"]
    widget.init_widget()

    assert widget.validate_current_step_number(int(current_step)), f"Wrong step number"


@then('validate total steps count is "{step_count}"')
def validate_total_step_count(context, step_count):
    widget = context._config.current_page.widgets["header"]
    widget.init_widget()

    assert widget.validate_number_of_pages(int(step_count)), f"Expected steps count is wrong"


@then('validate Form explanation contains "{explanation_text}"')
def validate_header_explanation_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]

    assert widget.validate_header_explanation_text(explanation_text), f"Expected explanation is wrong"


@then('validate Form explanation exists and contains at least "{chars_count}" chars')
def validate_header_explanation_contains_text(context, chars_count):
    widget = context._config.current_page.widgets["header"]

    assert widget.validate_header_explanation_is_displayed() and widget.validate_header_explanation_contains_at_least_chars(
        int(chars_count)), f"Explanation text is not displayed or it doesnt contains the expected chars"


@When('click on "{button_name}" icon')
def click_button(context, button_name):
    widget = context._config.current_page.widgets["header"]

    try:
        widget.click_header_button(button_name)
    except Exception as e:
        log.debug(e)


# ------------------------------------------------------------ old header -----------------------------------------------

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

    try:
        widget.init_info_dialog()
        widget.close_info_dialog()
    except Exception as e:
        log.debug(e)


@then('validate information dialog is closed')
def validate_information_dialog_is_displayed(context):
    widget = context._config.current_page.widgets["header"]
    widget.init_info_dialog()

    assert widget.validate_info_dialog_is_closed(), "Information dialog in not closed"


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


@then('validate form explanation in old header contains "{explanation_text}"')
def validate_header_explanation_contains_text(context, explanation_text):
    widget = context._config.current_page.widgets["header"]

    assert widget.validate_header_explanation_text(
        explanation_text), "Header explanation text doesnt contain the expected text"


@then('validate form explanation in old header exists and contains at least "{count_chars}" chars')
def validate_header_explanation_contains_text(context, count_chars):
    widget = context._config.current_page.widgets["header"]

    assert widget.validate_header_explanation_area_is_displayed() and widget.validate_header_explanation_contains_at_least_chars(
        int(count_chars)), f"Header explanation is not displayed or it doesnt contain at least expected chars"
