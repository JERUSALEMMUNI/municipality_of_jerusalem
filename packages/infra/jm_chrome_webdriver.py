import os
import time

import pyautogui
from selenium.common import NoSuchElementException, StaleElementReferenceException
from selenium.common.exceptions import StaleElementReferenceException as StaleElementReferenceException_

from selenium.webdriver.chrome.webdriver import WebDriver as ChromeDriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.action_chains import ActionChains

from selenium import webdriver
from infra.enums import WaitInterval
from infra import logger, config, custom_exceptions as ce
from utils import misc_utils

log = logger.get_logger(__name__)


class JMChromeWebDriver(ChromeDriver):
    def __init__(self, *args, **kwargs):
        chrome_options = webdriver.ChromeOptions()
        chrome_options.add_argument(f'download.default_directory={config.temp_folder}')
        # chrome_options.add_argument('--headless')
        kwargs['chrome_options'] = chrome_options
        super().__init__(*args, **kwargs)
        self.maximize_window()
        self.implicitly_wait(WaitInterval.MEDIUM.value)

    def find_elements(self, by=By.XPATH, value=None):
        try:
            log.debug(f"Finding elements by {by}: {value}")
            return super().find_elements(by, value)
        except NoSuchElementException as e:
            log.exception(e)
            raise ce.MJRunTimeError("Cannot Find Widgets in Page")
        except (StaleElementReferenceException, StaleElementReferenceException_) as e:
            log.exception(e)
            raise ce.MJRunTimeError("Elements are not attached to the page document")
        except Exception as e:
            log.exception(e)
            raise ce.MJRunTimeError('Error while searching for Widgets in Page')

    def find_element(self, by=By.XPATH, value=None):
        try:
            log.debug(f"Finding element by {by}: {value}")
            # Call the superclass's find_element method to actually find the element on the page
            return super().find_element(by, value)
        except NoSuchElementException as e:
            log.exception(e)
            raise ce.MJRunTimeError("Cannot Find Widget in Page")
        except (StaleElementReferenceException, StaleElementReferenceException_) as e:
            log.exception(e)
            raise ce.MJRunTimeError("Element is not attached to the page document")
        except Exception as e:
            log.exception(e)
            raise ce.MJRunTimeError('Error while searching for Widget in Page')

    def wait_for_presence_of_element(self, by=By.XPATH, value=None, wait_interval=WaitInterval.SHORT):
        WebDriverWait(self, wait_interval.value).until(
            expected_conditions.presence_of_element_located((by, value)))

    def wait_medium_for_presence_of_element(self, by=By.XPATH, value=None):
        self.wait_for_presence_of_element(by, value, wait_interval=WaitInterval.MEDIUM)

    def wait_long_for_presence_of_element(self, by=By.XPATH, value=None):
        self.wait_for_presence_of_element(by, value, wait_interval=WaitInterval.LONG)

    def scroll_to_element(self, element):
        actions = ActionChains(self)
        actions.move_to_element(element)

    def wait_for_alert_to_appear(self):
        WebDriverWait(self, WaitInterval.MEDIUM.value).until(
            expected_conditions.alert_is_present())

    def locate_image_on_screen(self, image_name):
        image = os.path.join(config.utilities_folder, 'pics_to_search_for', f'{image_name}.PNG')
        widget_on_screen = misc_utils.while_timeout(pyautogui.locateOnScreen, True,
                                                    WaitInterval.MEDIUM.value, 'cannot find image on screen', image
                                                    , w_comp_func=lambda a, b: a is None)
        return widget_on_screen

    def click_image_on_screen(self, image_name):
        button = self.locate_image_on_screen(image_name)
        buttonx, buttony = pyautogui.center(button)
        pyautogui.click(buttonx, buttony)
        time.sleep(1)
