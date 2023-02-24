#!/usr/bin/env python

import base64
import time
import sys
import os
import traceback
import getpass
import platform
import re
import csv
import glob
import pathlib
import psutil
import requests
import datetime
import math
import subprocess
import collections.abc

from infra import custom_exceptions as ce
from infra import config, logger, reporter
from utils import files_utils
from pathlib import Path

log = logger.get_logger(__name__)
rep = reporter.get_reporter()

def main():
    """
    A Python module that includes functions to be used with infra (shells, preferences, caches).
    Written by amr.shaloudi
    """
    # log_list = [{'levelname': 'INFO', 'path': os.path.join(os.path.join(os.environ['HOME'], 'Desktop'), 'logger_test', 'test_log.txt'), 'summary': False, 'use_for_collect': True}]
    logger.set_logger(debug_to_stdout=True)
    res = find_best_available_resolution()
    set_screen_resolution(res)
    get_available_resolutions()
    csv_path1 = r'C:\Users\idoa\Desktop\DchuFolderScan_DCHULogs\4.3.0.9.09381_20180118061537_DchuCheckingLogs\4.3.0.9.09381_20180118061614_ThirdPartyDevices_DchuCheckingResults.csv'
    res1 = list(csv2dict(csv_path1))


def is_python_64():
    """return True if system is running python 64. otherwise - false"""
    if sys.maxsize > 2 ** 32:
        return True
    else:
        return False


def is_windows_64():
    """Returns True if Program files X86 folder exists - Only on windows 64"""
    return 'PROGRAMFILES(X86)' in os.environ


def get_platform():
    '''Returns the platform (Win/Mac/Linux)'''
    platform_dict = {'win': 'Win', 'darwin': 'Mac', 'linux': 'Linux'}
    match = re.search(r'win|darwin|linux', sys.platform, re.I)
    if match is None:
        raise ce.MJValueError("Unknown platform: %s" % sys.platform)
    current_platform = match.group().lower()
    return platform_dict[current_platform]


def get_host_name():
    import socket
    return socket.gethostname().replace('.local', '')


def get_username():
    return getpass.getuser()


def check_admin(f):
    """decorator func to check admin before running another func"""

    def check(*args, **kwargs):
        if not is_user_admin():
            raise ce.MJRunTimeError('Running user is not Admin')
        return f(*args, **kwargs)

    return check


def is_user_admin():
    """Function returns true when running user is admin.
       WARNING: requires Windows XP SP2 or higher!"""
    if os.name == 'nt':
        import ctypes
        try:
            return int_bool_to_bool(ctypes.windll.shell32.IsUserAnAdmin())
        except Exception as e:
            log.debug('Admin check failed %s: %s\n%s' % (e.__class__.__name__, e, traceback.format_exc()))
            return False
    elif os.name == 'posix':
        # Check for effective root on Posix (SUDO) - root is 0
        return os.geteuid() == 0
    else:
        raise ce.MJRuntimeError("Unsupported operating system for this module: %s" % os.name)


def while_timeout(f, expected_res, w_timeout, msg, *params, **kwargs):
    """
    A function that creates a while loop with w_timeout until the expected_res is returned from f().
    The return value of f() is also returned from this function.
    If the time that passed from the start of the while loop is bigger than the w_timeout the function will raise a WETimeOutError.

    f - is a callable that will run each iteration of the while loop and compared against the expected result.
    expected_res - is the expected result from f().
    w_timeout - is the amount of time the while loop will run before raising a WETimeOutError.
    msg - A message to display in the TimeOut exception (in case of a w_timeout).
    params - is a list of parameters that will be sent to f()
    kwargs - This dictionary can be used for both keyword arguments for the while_timeout function and the callable.
             Warning - All the arguments below will be popped from kwargs and will not pass to the callable.
    Optional arguments:
        w_interval - The time the while loop will sleep before iterating again. Default is 1 second.
        w_comp_func - The compare function is a callable that will be used to compare the expected result with the return from f().
                    The compare function should return a boolean, and should be False in order for the while loop to stop.
                    The default comp_func is a lambda that returns (a != b)
        w_debug_msg - Writes a debug log message on every iteration of the while loop. Default is True.
        w_raise_on_error - handling method in case of exception. True - raise exception. False - return w_def_res (Default=True).
        w_def_res - Value to return in case of exception (and w_raise_on_error=False) (Default=None).
        w_func_str - The string representation of the function. This can be replaced to display any string in the log during the while loop.
                     This is useful when using properties. Default is the function's name and a list of call arguments.
    """
    interval = kwargs.pop('w_interval', 1)
    comp_func = kwargs.pop('w_comp_func', lambda a, b: a != b)
    debug_msg = kwargs.pop('w_debug_msg', True)
    raise_on_error = kwargs.pop('w_raise_on_error', True)
    def_res = kwargs.pop('w_def_res', None)
    func_str = kwargs.pop('w_func_str', '%s(%s)' % (f.__name__, ', '.join(str(p) for p in params)))
    start_time = time.time()
    cur_timeout = time.time() - start_time
    try:
        res = f(*params, **kwargs)
    except:
        if raise_on_error:
            raise
        else:
            res = def_res
    if debug_msg:
        log.debug('while_timeout starting - %s sec, interval %s, %s = %s == %s' % (
        w_timeout, interval, func_str, res, expected_res))
    while comp_func(res, expected_res):
        cur_timeout = time.time() - start_time
        if cur_timeout > w_timeout:
            raise ce.MJTimeOutError(
                '%s - w_timeout occurred, %s sec, %s = %s == %s' % (msg, w_timeout, func_str, res, expected_res))
        if debug_msg:
            log.debug('%s = %s == %s - %.2f sec' % (func_str, res, expected_res, (w_timeout - cur_timeout)))
        time.sleep(interval)
        try:
            res = f(*params, **kwargs)
        except:
            if raise_on_error:
                raise
            else:
                res = def_res
    log.debug('while_timeout finished - %.2f sec, %s = %s == %s' % (cur_timeout, func_str, res, expected_res))
    return res


def while_timeout_property(obj, p_str, expected_res, w_timeout, msg, **kwargs):
    """
    A function that creates a while loop with w_timeout until the property value of p is equal to expected_res.
    If the time that passed from the start of the while loop is bigger than the w_timeout the function will raise a WETimeOutError.

    obj - The object that the property exists in
    p_str - is a string name of the property that will be checked each iteration of the while loop and compared against the expected result.
    expected_res - is the expected result from f().
    w_timeout - is the amount of time the while loop will run before raising a WETimeOutError.
    msg - A message to display in the TimeOut exception (in case of a w_timeout).

    Optional Arguments: The same as while_timeout()
    """
    return while_timeout(lambda: getattr(obj, p_str), expected_res, w_timeout, msg,
                         w_func_str='%s.%s' % (obj.__class__.__name__, p_str), **kwargs)


def trim_version_fields(version, field_number):
    """This function trims number fields for a version.
       For example:
       9.7.50.1 (3 fields) -> 9.7.50"""
    return '.'.join(version.split('.')[:field_number])


def remove_char(text, char):
    """Tries to remove char from string. In case input is not a string, it returns the string as-is"""
    try:
        return text.strip(char)
    except:
        return text


def remove_chars(text, chars):
    for char in chars:
        text = remove_char(text, char)
    return text


def str_to_num(text):
    """Converting string to either float or int"""
    try:
        return int(text)
    except ValueError:
        try:
            return float(text)
        except ValueError:
            return text
    except TypeError:  # in case of None
        return text


def str_to_bool_int(text):
    """Converting string booleans to Python booleans (True, False, None)"""
    if type(text) != str:
        return text
    if text.lower() == 'true':
        return True
    elif text.lower() == 'false':
        return False
    elif text.lower() == 'none':
        return None
    else:
        return str_to_num(text)


def int_bool_to_bool(text):
    '''Converting binary booleans (1, 0, -1) to Python booleans (True, False, None)'''
    if type(text) != int:
        raise ce.MJValueError('%s (%s) is not an int' % (text, type(text)))
    if text == 1:
        return True
    elif text == 0:
        return False
    elif text == -1:
        return None
    else:
        return text


def bool_to_int_bool(value):
    '''Convert python booleans (True, False, None) to binary booleans (1, 0, -1)'''
    if value is True:
        return 1
    elif value is False:
        return 0
    elif value is None:
        return -1
    else:
        return value


def convert_list(the_list):
    """Converts a list into non list types:
        In case the list is empty it returns None.
        In case the list has one item it returns the item.
        In any other case it returns the list as it was."""

    if len(the_list) == 0:
        return None
    elif len(the_list) == 1:
        return the_list[0]
    else:
        return the_list


def convert_to_list(x):
    '''A function that converts int or string to list'''
    if type(x) != dict and type(x) != list:
        return [x]
    else:
        return x


def find_item(obj, *keys):
    """Traverses through a dictionary along a given path of keys and returns the last value if found"""
    if len(keys) == 1:
        if keys[0] in obj:
            return obj[keys[0]]
    else:
        if isinstance(obj, dict) and keys[0] in obj:
            item = find_item(obj[keys[0]], *keys[1:])
            if item is not None:
                return item


def cast_type_dict(the_dict, cast_type_func=int, src_cast_type=None):
    """The function trys to cast all items in a dict with a certain type.
       If casting fails, the item remains the same.
       src_cast_type can be used to cast only certain types"""
    for k, v in list(the_dict.items()):
        if src_cast_type is None or src_cast_type == type(v):
            try:
                the_dict[k] = cast_type_func(v)
            except ValueError:
                pass


def xl2csv(excel_file, dest_fldr=None, sheet_num=None):
    """converts excel file to csv file. if sheet_num is None returning all available csv.
    if dest_fldr is none result files will be placed in same folder as excel file"""
    import xlrd
    csv_files = []
    if dest_fldr is None:
        dest_fldr = os.path.dirname(excel_file)
    elif not os.path.exists(dest_fldr):
        raise ce.MJIOError('CSV destination folder does not exist.')
    workbook = xlrd.open_workbook(excel_file)
    all_worksheets = workbook.sheet_names()
    if sheet_num != None:
        source_worksheets = [all_worksheets[sheet_num]]
    else:
        source_worksheets = all_worksheets
    for worksheet_name in source_worksheets:
        worksheet = workbook.sheet_by_name(worksheet_name)
        csv_file_path = os.path.join(dest_fldr, '%s.csv' % worksheet_name)
        with open(csv_file_path, 'wb') as csv_file:
            wr = csv.writer(csv_file, quoting=csv.QUOTE_ALL)
            for rownum in range(worksheet.nrows):
                wr.writerow([str(entry).encode("utf-8") for entry in worksheet.row_values(rownum)])
        csv_files.append(csv_file_path)
    if sheet_num != None:
        return csv_files
    else:
        return csv_files[0]


def csv2dict(csv_full_path, columns_list=None, trim_columns_white_spaces=False):
    '''converts data in CSV file to a list of dictionaries based on a columns list.
    *** if columns_list is None it is expected that the first row in CSV will hold the columns names ***
    trim_columns_white_spaces - flag triggering columns strip of whitespaces'''
    with open(csv_full_path, 'r') as csv_fh:
        csv_reader = csv.reader(csv_fh)
        for i, row in enumerate(csv_reader):
            if columns_list is None and i == 0:
                columns_list = row
                if trim_columns_white_spaces:
                    columns_list = [col.strip() for col in columns_list]
                continue
            yield dict(list(zip(columns_list, row)))


def xl2dict(xl_path, sheet_num=0):
    '''Converts a the specified excel sheet for an excel file to a dictionary.
    Dictionary keys are first row values, hence source sheet must match this structure.
    works with both *.xls and *.xlsx files
    xl_path - full path to source Excel file
    sheet_num - sheet to parse. if None, sheet is set to 0.
    result_dict_list:return'''
    import xlrd
    wb = xlrd.open_workbook(xl_path)
    sh = wb.sheet_by_index(sheet_num)

    result_dict_list = list()
    keys_list = list(n.strip(" ").lower() for n in sh.row_values(0))

    for row in range(1, len(sh.col_values(0))):
        if len({i for i in sh.row_values(row) if i != ""}) == 0:
            continue
        temp_dict = dict()
        for index in range(0, len(keys_list)):
            try:
                cell_val = sh.row_values(row)[index]
                temp_dict[keys_list[index]] = cell_val.encode('ascii', 'ignore')
            except AttributeError as e:
                # float has no encode attribute
                if type(cell_val) is float:
                    temp_dict[keys_list[index]] = str(int(cell_val))
        result_dict_list.append(temp_dict)

    return result_dict_list


def calculate_size(path, precision=2):
    '''A function calculates size and number of files'''
    total_size = 0
    total_files = 0
    if os.path.isdir(path):
        for dirpath, dirnames, filenames in os.walk(path):
            for f in filenames:
                fp = os.path.join(dirpath, f)
                total_size += os.path.getsize(fp)
                total_files += 1
    else:
        total_size = os.path.getsize(path)
        total_files = 1
    size, units = convert_units(total_size, precision)
    return size, total_files, units


def convert_units(size, precision=2):
    '''A function converts from Bytes to appropriate units'''
    suffixes = ['Bytes', 'KB', 'MB', 'GB', 'TB']
    suffix_index = 0
    while size > 1024 and suffix_index < 4:
        suffix_index += 1
        size /= 1024.0
    return round(size, precision), suffixes[suffix_index]


def encode_string(string, key, start=0, max_len=60):
    '''A function that uses Vigenere cipher to encode strings.
       The function encodes the string using a key string by building a match table of characters.
       It then converts the string into a base64 encoding'''
    if len(string) > max_len:
        raise ValueError('String must be under %s characters - %s' % (max_len, string))
    if len(key) == 0:
        raise ValueError('Key must be at least 1 character')
    if string.endswith((' ', '\n', '\t')):
        raise ValueError('String must not end with a space/newline/tab - %s' % string)
    string = string.ljust(max_len)
    encoded_chars = []
    for i in range(len(string)):
        key_c = key[i % len(key) + start]
        encoded_c = chr(ord(string[i]) + ord(key_c) % 256)
        encoded_chars.append(encoded_c)
    encoded_string = ''.join(encoded_chars)
    return base64.urlsafe_b64encode(encoded_string.encode('latin-1')).decode('latin-1')


def decode_string(string, key, start=0):
    '''A function that decodes a string using Vigenere cipher.
       The string must be generated using the encode_string function.'''
    decoded_chars = []
    string = base64.urlsafe_b64decode(string).decode('latin-1')
    for i in range(len(string)):
        key_c = key[i % len(key) + start]
        encoded_c = chr(abs(ord(string[i]) - ord(key_c) % 256))
        decoded_chars.append(encoded_c)
    decoded_string = ''.join(decoded_chars).rstrip()
    return decoded_string


def compare_dicts(dict1, dict2, path='', log_failures=False, errors=None, res_dict=None, return_compare_dict=False):
    ''' Compare 2 dictionaries recursively.
        1. Check that key in 1st dict found also in 2nd dict.
        2. If value is of type dict --> go one level deeper.
        3. If value is not dict --> check if values in both dicts is the same. '''
    org_path = path
    if errors is None:
        errors = []
    if res_dict is None:
        res_dict = {}
    for k in dict1.keys():
        if k not in dict2:
            line = '%s: key (%s) - previous state: %r ; current state: Not Found' % (path, k, dict1[k])
            parse = re.search('(.*) - previous state: (.*) ; current state: (.*)', line)
            if log_failures:
                log.fail(line)
            errors.append(line)
            res_dict[parse.group(1)] = {'previous state': parse.group(2), 'current state': parse.group(3)}
        else:
            if type(dict1[k]) is dict:
                if path == '':
                    path = str(k)
                else:
                    path = path + "->" + str(k)
                compare_dicts(dict1[k], dict2[k], path, log_failures=log_failures, errors=errors, res_dict=res_dict,
                              return_compare_dict=return_compare_dict)
            else:
                if dict1[k] != dict2[k]:
                    line = '%s: key (%s) - previous state: %r ; current state: %r' % (path, k, dict1[k], dict2[k])
                    parse = re.search('(.*) - previous state: (.*) ; current state: (.*)', line)
                    if log_failures:
                        log.fail(line)
                    errors.append(line)
                    res_dict[parse.group(1)] = {'previous state': parse.group(2), 'current state': parse.group(3)}
        path = org_path
    for k in dict2.keys():
        if k not in dict1:
            line = '%s: key (%s) - previous state: Not Found ; current state: %r' % (path, k, dict2[k])
            parse = re.search('(.*) - previous state: (.*) ; current state: (.*)', line)
            if log_failures:
                log.fail(line)
            errors.append(line)
            res_dict[parse.group(1)] = {'previous state': parse.group(2), 'current state': parse.group(3)}
    if return_compare_dict:
        return errors, res_dict
    else:
        return errors


def human_readable_size(num, suffix='B'):
    '''A function that converts bytes into human readable size.
    For example:
        human_readable_size(135480839168) -> 126.2GiB
    The function divides by 1024 until it reaches an efficient size.

    Notice: This function should be used only for printing!!!'''
    for unit in ('', 'Ki', 'Mi', 'Gi', 'Ti', 'Pi', 'Ei', 'Zi'):
        if abs(num) < 1024.0:
            return "%3.2f%s%s" % (num, unit, suffix)
        num /= 1024.0
    return "%.2f%s%s" % (num, 'Yi', suffix)


def time_stamp_to_total_seconds(str_format):
    ''' Returns total seconds from current time stamp, based on pattern. '''
    x = time.strptime(time.ctime()[:-5], str_format)
    return int(datetime.timedelta(hours=x.tm_hour, minutes=x.tm_min, seconds=x.tm_sec).total_seconds())


def generate_random_seed():
    ''' A function that generates a unique seed depending on time since EPOCH, used for random generation in tests.'''
    return int(time.time() * 1000)


def merge_dicts(source, destination):
    """
    run me with nosetests --with-doctest file.py

    >>> a = { 'first' : { 'all_rows' : { 'pass' : 'dog', 'number' : '1' } } }
    >>> b = { 'first' : { 'all_rows' : { 'fail' : 'cat', 'number' : '5' } } }
    >>> merge_dicts(b, a) == { 'first' : { 'all_rows' : { 'pass' : 'dog', 'fail' : 'cat', 'number' : '5' } } }
    True
    """
    for key, value in source.items():
        if isinstance(value, dict):
            # get node or create one
            node = destination.setdefault(key, {})
            merge_dicts(value, node)
        else:
            destination[key] = value

    return destination


def isfloat(value):
    """
    method used to validate the input if it is float or not
    Args:
        value: input to validate

    Returns:
        True if python succeed to convert the input to float
    """
    try:
        float(value)
        return True
    except ValueError:
        return False


def do_command_in_parallel_process_with_timeout(command, timeout, *arg):
    import multiprocessing
    p = multiprocessing.Process(target=command, args=(*arg,))
    p.start()
    p.join(timeout)
    if p.is_alive():
        p.kill()
        p.join()
        raise ce.MJRunTimeError(f'timeout occurred running command {command}, {timeout} sec')


def get_version_from_pkg_info(info_path):
    import plistlib
    try:
        plist_dict = plistlib.readPlist(info_path)
        version = plist_dict.get('pkg-version'.replace('\n', ' '), None)
        return version
    except Exception as err:
        raise ce.MJPlistReadError('Unable to retrieve version for %s - %s' % (info_path, err))


def get_available_resolutions():
    if sys.platform == 'darwin':

        work_dir = os.path.dirname(os.path.realpath(__file__))
        cmd = f'{work_dir}/DisplayManager/display_manager.py show available'

        p = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
        out, err = p.communicate()
        if not err:
            out = out.decode('utf-8')
            res = re.findall('resolution: (.*)x(.*), refresh', out)
            return res
        else:
            log.warning('Error while trying to get available resolutions.')
            return None
    elif sys.platform == 'win32':
        all_res_list = []
        cmd = 'wmic path CIM_VideoControllerResolution'
        p = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
        out, err = p.communicate()
        if not err:
            out = out.decode('utf-8')
            out = out.split('\n')
            for line in out:
                line = line.split('Hertz')[0]
                res = re.search('(.*) x (.*) x .* colors @ (.*) ', line)
                if res is not None:
                    all_res_list.append((res.group(1), res.group(2), res.group(3)))
            return all_res_list
        else:
            log.warning('Error while trying to get available resolutions.')
            return None
    else:
        log.warning('OS is not supported for resolution handling')


def find_best_available_resolution(res_list=None):
    if res_list is None:
        res_list = get_available_resolutions()

    best_found = None
    delta = None
    optimal_resolution = 1920 * 1080

    for item in res_list:
        if delta == 0:
            break
        if best_found is None:
            best_found = item
            delta = abs(int(item[0]) * int(item[1]) - optimal_resolution)
        elif abs(int(item[0]) * int(item[1]) - optimal_resolution) < delta:
            delta = abs(int(item[0]) * int(item[1]) - optimal_resolution)
            best_found = item

    return best_found


def set_screen_resolution(res):
    if sys.platform == 'darwin':
        try:
            res = f'{res[0]} {res[1]}'
            work_dir = os.path.dirname(os.path.realpath(__file__))
            cmd = f'{work_dir}/DisplayManager/display_manager.py res {res}'
            p = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
            out, err = p.communicate()
            if not err:
                log.debug(f'Screen resolution was set to {res}')
        except Exception:
            pass
    elif sys.platform == 'win32':
        try:
            import win32api
            mode = win32api.EnumDisplaySettings()
            mode.PelsWidth = int(res[0])
            mode.PelsHeight = int(res[1])
            mode.DisplayFrequency = int(res[2])
            mode.BitsPerPel = 32

            win32api.ChangeDisplaySettings(mode, 0)
            log.debug(f'Screen resolution was set to {res}')
        except Exception:
            pass
    else:
        log.warning('OS is not supported for changing screen resolution.')


def set_optimal_testing_resolution():
    res = find_best_available_resolution()
    set_screen_resolution(res)


def filter_error_msg(err_str):
    return '\n'.join([i for i in err_str.split('\n') if 'Which one is undefined.' not in i])


def update_dict(d, u):
    """
    @param d: original dictionary to update
    @param u: the other dictionary
    @return: the updated dictionary
    this function update nested dictionary recursively.
    """
    for k, v in u.items():
        if isinstance(v, collections.abc.Mapping):
            d[k] = update_dict(d.get(k, {}), v)
        else:
            d[k] = v
    return d


def dict_compare_float(d1, d2, decimal_points=3, excluded_keys=[]):
    """
    :param d1: first dictionary to compare
    :param d2: second dictionary to compare
    :param decimal_points: the decimal resolution for comparison
    :param excluded_keys: keys to ignore in comparison
    :return dictionary with diff found keys
    ----
    compares two dicts of floats rounded to decimal points
    missing value in dict will be treated as 0 and reported
    as diff also if other value is 0/None"""

    d1_keys = set(d1.keys())
    d2_keys = set(d2.keys())
    shared_keys = d1_keys.intersection(d2_keys)
    modified = {key: (round(float(d1[key]), 3), round(float(d2[key]), 3)) for key in shared_keys if
                key not in excluded_keys and d1[key] and d2[key] and
                round(float(d1[key]), 3) != round(float(d2[key]), 3)}
    return modified


def get_rows_in_csv(csv_path):
    with open(csv_path, mode='r') as csv_file1:
        csv_reader = csv.DictReader(csv_file1)
        rows = [row for row in csv_reader]
    return rows


def kill_allure_process(proc_list):
    for p in proc_list:
        log.debug(f'Killing process {p.name()} ({p.pid}), used to open Allure report')
        p.kill()


def get_all_proc_for_proc_name(proc_name):
    ''' Return list of all process per a process name. '''
    proc_list = []
    for proc in psutil.process_iter():
        try:
            if proc_name in proc.name():
                proc_list.append(proc)
        except:
            pass
    return proc_list


def get_memory_info():
    return str(round(psutil.virtual_memory().total / (1024.0 ** 3))) + " GB"


def ipconfig_to_dict():
    """
    Converts the return of a ipconfig command into a dictionary and returns results.
    """
    raw_command = subprocess.check_output(["ipconfig", "/all"])

    dict_command = {}

    raw_command = raw_command.decode("utf-8")
    split_command = raw_command.split("\r\n")
    split_command = [x for x in split_command if x]

    for item in split_command:
        split_item = item.split(" : ")
        # print("%r" % split_item)

        if len(split_item) == 1:
            current_superkey = split_item[0]
            if current_superkey.endswith(":"):
                current_superkey = current_superkey.replace(':', '')

            dict_command[current_superkey] = {}

        try:
            split_key = split_item[0].rstrip()
            split_value = split_item[1].rstrip()

            if ' .' in split_key:
                temp_key = split_key.replace('.', '')
                temp_key = temp_key.rstrip()
                temp_key = temp_key.lstrip()
                split_key = temp_key

            if '","' in split_value:
                temp_value = split_value.replace('"', '')
                temp_value = temp_value.rsplit()
                split_value = temp_value

            try:
                if dict_command[current_superkey][split_key] is not None:
                    if isinstance(dict_command[current_superkey][split_key], list):
                        dict_command[current_superkey][split_key].append(split_value)
                    else:
                        temp_value = dict_command[current_superkey][split_key]
                        dict_command[current_superkey][split_key] = [temp_value]
                        dict_command[current_superkey][split_key].append(split_value)
            except KeyError:
                dict_command[current_superkey][split_key] = split_value
        except:
            pass

    return dict_command


def ifconfig_to_dict():
    raw_command = subprocess.check_output(["ifconfig"])

    data = raw_command.decode("utf-8").split('\n')
    d = {}
    k = ''
    skip_next = True
    for line in data:
        try:
            if not line.startswith('\t') and line.startswith('en'):
                k = line.split(':')[0]
                d[k] = {}
                skip_next = False
            elif not line.startswith('\t') and not line.startswith('en'):
                skip_next = True

            if not skip_next:
                if 'ether' in line:
                    d[k]['mac_addr'] = re.findall('..:..:..:..:..:..', line)[0]
                elif 'inet' in line and 'netmask' in line:
                    d[k]['ip_addr'] = re.findall('inet (.*) netmask', line)[0]
                elif 'inet6' in line:
                    d[k]['ipv6_addr'] = re.findall('inet6 (.*) prefixlen', line)[0]
        except:
            pass
    return d


def get_ip_addr_from_mac_addr(mac_addr):
    if config.current_os == 'Win':
        res = ipconfig_to_dict()
        for key, data in res.items():
            if 'Ethernet adapter' in key:
                if type(data) is dict and 'Physical Address' in data.keys() and mac_addr.lower() == data[
                    'Physical Address'].lower():
                    # search if there is some attribute which includes sub-string 'IPv4 Address'
                    key_to_search = [key for key in data.keys() if 'IPv4 Address' in key]
                    if len(key_to_search) > 0:
                        return re.findall('\d*\.\d*\.\d*\.\d*', data[key_to_search[0]])[0]
        return None
    else:
        res = ifconfig_to_dict()
        for key, data in res.items():
            if data['mac_addr'] == mac_addr.lower():
                return data.get('ip_addr', None)
        return None


if __name__ == '__main__':
    main()
