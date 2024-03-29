from infra import logger
from infra.enums import UIStyle
from ui_widgets.new_style import button_field, header_field, footer_field, text_field, phone_field, \
    dropdown_search_selectbox_field, dropdown_field, dropdown_search_field, text_area_field, \
    button_icon_widget, accordion_table, accordion_row, time_field, time_picker_widget, button_group, upload_file, \
    text_number_field, captcha_box_field, application_steps_field, email_authentication, dialog_widget
from ui_widgets.old_style import button_field as old_button_field, header_field as old_header_field, \
    footer_field as old_footer_field, button_icon_widget as old_button_icon, calender_time, check_box_field, \
    calendar_field, month_year_list, \
    radio_button_field, application_steps_field as old_application_steps_field, dialog_widget as old_dialog_widget, upload_file as old_upload_file


log = logger.get_logger(__name__)


def create_widget(widget_type, style=UIStyle.NEW, label=None, driver=None, index=1, path_locator=None, step_number=None):
    widget_mapping = {
        'ButtonIcon': {
            UIStyle.NEW: button_icon_widget.ButtonIcon,
            UIStyle.OLD: old_button_icon.ButtonIcon
        },
        'ButtonField': {
            UIStyle.NEW: button_field.ButtonField,
            UIStyle.OLD: old_button_field.ButtonField
        },
        'ButtonGroup': {
            UIStyle.NEW: button_group.ButtonGroup
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
        'TextNumberField': {
            UIStyle.NEW: text_number_field.TextNumberField
        },
        'PhoneField': {
            UIStyle.NEW: phone_field.PhoneField
        },
        'DropdownSearchSelectBox': {
            UIStyle.NEW: dropdown_search_selectbox_field.DropdownSearchSelectBox
        },
        'CalendarClock': {
            UIStyle.OLD: calender_time.CalendarClock
        },
        'CalendarField': {
            UIStyle.OLD: calendar_field.CalendarField
        },
        'CheckBox': {
            UIStyle.OLD: check_box_field.CheckBox
        },
        'Dropdown': {
            UIStyle.NEW: dropdown_field.Dropdown
        },
        'DropdownSearch': {
            UIStyle.NEW: dropdown_search_field.DropdownSearch
        },
        'TextAreaField': {
            UIStyle.NEW: text_area_field.TextAreaField
        },
        'MonthYearList': {
            UIStyle.OLD: month_year_list.MonthYearList
        },
        'RadioButtonField': {
            UIStyle.OLD: radio_button_field.RadioButtonField
        },
        'ApplicationStepsField': {
            UIStyle.OLD: old_application_steps_field.ApplicationStepsField,
            UIStyle.NEW: application_steps_field.ApplicationStepsField
        },
        'Dialog': {
            UIStyle.NEW: dialog_widget.Dialog,
            UIStyle.OLD: old_dialog_widget.Dialog
        },
        'UploadFile': {
            UIStyle.NEW: upload_file.UploadFile,
            UIStyle.OLD: old_upload_file.UploadFile
        },
        'AccordionTable': {
            UIStyle.NEW: accordion_table.AccordionTable
        },
        'AccordionRow': {
            UIStyle.NEW: accordion_row.AccordionRow
        }
        ,
        'TimeField': {
            UIStyle.NEW: time_field.TimeField
        }
        ,
        'TimePickerWidget': {
            UIStyle.NEW: time_picker_widget.TimePickerWidget
        },
        'CaptchaBox': {
            UIStyle.NEW: captcha_box_field.CaptchaBox
        },
        'EmailAuthentication': {
            UIStyle.NEW: email_authentication.EmailAuthentication
        }
    }

    log.info(f'Creating {widget_type} widget obj')
    kwargs = prepare_args(driver, label, index, path_locator, step_number)
    widget = widget_mapping[widget_type].get(style, widget_mapping[widget_type].get(UIStyle(3 - style.value)))(**kwargs)
    widget.create_widget = create_widget
    return widget


def prepare_args(driver, label, index, path_locator, step_number):
    kwargs = {}
    if label:
        kwargs['label'] = label
    if driver:
        kwargs['driver'] = driver
    if index:
        kwargs['index'] = index
    if path_locator:
        kwargs['path_locator'] = path_locator
    if step_number:
        kwargs['step_number'] = step_number
    return kwargs
