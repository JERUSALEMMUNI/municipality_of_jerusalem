from infra import logger
from infra.enums import UIStyle
from ui_widgets.new_style import button_field, header_field, footer_field, text_field, phone_field, \
    dropdown_search_selectbox_field
from ui_widgets.old_style import button_field as old_button_field, header_field as old_header_field, \
    footer_field as old_footer_field, calender_time

log = logger.get_logger(__name__)


def create_widget(widget_type, style=UIStyle.NEW, label=None, driver=None):
    widget_mapping = {
        'ButtonField': {
            UIStyle.NEW: button_field.ButtonField,
            UIStyle.OLD: old_button_field.ButtonField
        },
        'HeaderField': {
            UIStyle.NEW: header_field.HeaderField,
            UIStyle.OLD: old_header_field.HeaderField
        },
        'FooterField': {
            UIStyle.NEW: footer_field.FooterField,
            UIStyle.OLD: old_footer_field.FooterField
        },
        'TextField': {
            UIStyle.NEW: text_field.TextField
        },
        'PhoneField': {
            UIStyle.NEW: phone_field.PhoneField
        },
        'DropdownSearchSelectBox': {
            UIStyle.NEW: dropdown_search_selectbox_field.DropdownSearchSelectBox
        },
        'CalendarClock': {
            UIStyle.OLD: calender_time.CalendarClock
        }
    }

    log.info(f'Creating {widget_type} widget obj')
    kwargs = prepare_args(driver, label)
    return widget_mapping[widget_type].get(style, widget_mapping[widget_type].get(UIStyle(3 - style.value)))(**kwargs)


def prepare_args(driver, label):
    kwargs = {}
    if label:
        kwargs['label'] = label
    if driver:
        kwargs['driver'] = driver
    return kwargs
