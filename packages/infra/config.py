import os
import sys
import socket
import platform

auto_depot_path = os.path.abspath(os.path.join(__file__, os.pardir, os.pardir, os.pardir))
utilities_folder = os.path.join(auto_depot_path, 'utilities')

hour_format = '%H:%M:%S'
date_format = '%d-%b-%Y'
time_format = '%d-%m-%y_%H-%M'  # This format is used in file and folder names
pretty_time_format = '%d/%m/%y %H:%M'
full_time_format = '%d-%b-%Y %H:%M:%S'

if sys.platform == 'darwin':
    current_os = 'Mac'
    applications_exec = '.app'
    temp_folder = '/tmp'
    platform_machine = 'Mac'
    if 'RELEASE_ARM64' in platform.uname().version:
        platform_machine = 'ARM'
elif sys.platform == 'win32' and platform.architecture()[0] == '64bit':
    current_os = 'Win'
    try:
        is_windows_11 = sys.getwindowsversion().build > 20000
    except:
        is_windows_11 = False
    applications_exec = '.exe'
    temp_folder = os.environ['TMP']
    platform_machine = 'Win'
else:
    current_os = 'Linux'
    platform_machine = 'Linux'


client_name = socket.gethostname().replace('.local', '')
user_desktop = os.path.join(os.path.expanduser('~'), 'Desktop')
user_download = os.path.join(os.path.expanduser('~'), 'Downloads')
allure_utils_path = os.path.join(utilities_folder, 'allure')
if current_os == 'Win':
    local_allure_executable = os.path.join(allure_utils_path, 'bin', 'allure.bat')
else:
    local_allure_executable = os.path.join(allure_utils_path, 'bin', 'allure')


months = {"1": "ינואר",
          "2": "פברואר",
          "3": "מרץ",
          "4": "אפריל",
          "5": "מאי",
          "6": "יוני",
          "7": "יולי",
          "8": "אוגוסט",
          "9": "ספטמבר",
          "10": "אוקטובר",
          "11": "נובמבר",
          "12": "דצמבר"
          }
