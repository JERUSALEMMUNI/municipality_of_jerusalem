from behave import *
from infra import logger, reporter, config

rep = reporter.get_reporter()
log = logger.get_logger(__name__)
widget_name = "footer"


@Then('validate Facebook Logo is displayed in footer')
def validate_facebook_logo(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.is_facebook_displayed(), "Facebook logo is not available"


@Then('validate Instagram Logo is displayed in footer')
def validate_instagram_logo(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.is_instagram_displayed(), "Instagram logo is not available"


@Then('validate Twitter Logo is displayed in footer')
def validate_twitter_logo(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.is_twitter_displayed(), "Twitter logo is not available"


@Then('validate facebook url in footer')
def validate_facebook_url(context):
    driver = context._config.driver
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_facebook_url(driver), "This page is not Facebook web page"


@Then('validate instagram url in footer')
def validate_instagram_url(context):
    driver = context._config.driver
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_instagram_url(driver), "This page is not Instagram web page"


@Then('validate twitter url in footer')
def validate_twitter_url(context):
    driver = context._config.driver
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_twitter_url(driver), "This page is not Twitter web page"


@Then('validate footer follow us is displayed')
def validate_footer_follow_us(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_follow_us_is_displayed(), "Follow us is not available"


@Then('validate footer follow us text is "{follow_us_text}"')
def validate_footer_follow_us_text(context, follow_us_text):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_follow_us(follow_us_text), "This is not follow us text!"


@Then('validate footer follow us text is default as "עקבו אחרינו"')
def validate_footer_follow_us_default_text(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_follow_us_with_default(), "This is not follow us default text!"


@Then('validate footer call us is displayed')
def validate_footer_call_us(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_call_us_is_displayed(), "Call us is not available"


@Then('validate footer call us text is "{call_us_text}"')
def validate_footer_call_us(context, call_us_text):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_call_us_text(call_us_text), "This is not Call us text!"


@Then('validate footer call us text is default as "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א - ה בין 08:30-16:00"')
def validate_footer_call_us_default_text(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_call_us_with_default(), "This is not call us default text!"


@Then('validate footer privacy policy is displayed')
def validate_footer_privacy_policy(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_privacy_policy_is_displayed(), "Privacy policy is not available"


@Then('validate footer privacy policy is "{privacy_policy_text}"')
def validate_footer_privacy_policy_text(context, privacy_policy_text):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_privacy_policy(privacy_policy_text), "This is not privacy policy text!"


@Then('validate footer privacy policy text is default as "This site is protected by reCAPTCHA and the Google Privacy Policy and Terms of Service apply."')
def validate_footer_privacy_policy_default_text(context):
    widget = context._config.current_page.widgets[widget_name]
    assert widget.validate_privacy_policy_with_default, "privacy policy text is not as default"
