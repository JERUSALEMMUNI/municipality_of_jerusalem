from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)
widget_name = "footer"

@Then('Validate Facebook Logo is displayed in old footer')
def validate_facebook_logo(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.is_facebook_displayed(), "Error Facebook logo is not available"


@Then('Validate Instagram Logo is displayed in old footer')
def validate_instagram_logo(context):

    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.is_instagram_displayed(), "Error Instagram logo is not available"


@Then('Validate Twitter Logo is displayed in old footer')
def validate_twitter_logo(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.is_twitter_displayed(), "Error Twitter logo is not available"


@Then('Validate facebook url in old footer')
def validate_facebook_url(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_facebook_url(), "Error This page is not Facebook web page"


@Then('Validate instagram url in old footer')
def validate_instagram_url(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_instagram_url(), "Error This page is not Instagram web page"


@Then('Validate twitter url in old footer')
def validate_twitter_url(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_twitter_url(), "Error This page is not Twitter web page"


@Then('Validate old footer call us is displayed')
def validate_footer_call_us(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_old_call_us_is_displayed(), "Error  call us is not available"


@Then('Validate old footer follow us is displayed')
def validate_footer_follow_us(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_old_follow_us_is_displayed(), "Error Follow us is not available"


@Then('Validate old footer call us text is "{call_us_text}"')
def validate_footer_call_us_text(context, call_us_text):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_old_call_us_text(call_us_text), "Error This is not Call us text!"


@Then('Validate old footer follow us text is "{follow_us_text}"')
def validate_footer_follow_us_text(context, follow_us_text):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_old_follow_us(follow_us_text), "Error This is not follow us text!"


@Then('Validate old footer call us has the default text')
def validate_footer_call_us_default_text(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_old_call_us_with_default(), "Error This is not call us default text!"


@Then('Validate old footer follow us has the default text')
def validate_footer_follow_us_default_text(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_old_follow_us_with_default(), "Error This is not follow us default text!"


@Then('Back to previous page')
def back_to_prev_page(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    widget.go_back_tp_prev_page()


@Then('Validate current page is "{page_name}"')
def back_to_prev_page(context, page_name):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_current_url(page_name), "Error, Wrong page"


@Then('Validate footer call us is displayed')
def validate_footer_call_us(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_call_us_is_displayed(), "Error call us is not available"


@Then('Validate footer call us text is "{call_us_text}"')
def validate_footer_call_us(context, call_us_text):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_call_us_text(call_us_text), "Error This is not Call us text!"


@Then('Validate footer call us has the default text')
def validate_footer_call_us_default_text(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_call_us_with_default(), "Error This is not call us default text!"


@Then('Validate footer privacy policy is displayed')
def validate_footer_privacy_policy(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_privacy_policy_is_displayed(), "Error privacy policy is not available"


@Then('Validate footer privacy policy is "{privacy_policy_text}"')
def validate_footer_privacy_policy_text(context, privacy_policy_text):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    assert widget.validate_privacy_policy(privacy_policy_text), "Error This is not privacy policy text!"


@Then('Validate footer privacy policy has the default text')
def validate_footer_privacy_policy_default_text(context):
    widget = context._config.current_page.widgets[widget_name]
    if widget.get_web_element() is None:
        web_element = context._config.current_page.driver.find_element(widget.locator['By'], widget.locator['Value'])
        widget.set_web_element(web_element)

    ## here ##
    if not widget.validate_privacy_policy_with_default():
        log.info("This is not privacy policy default text!")
        #todo add information by using the log,and to the report then raiseArrestion error
        #raise AssertionError("This is not privacy policy default text!.......")




