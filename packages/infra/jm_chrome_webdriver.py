from selenium.common import NoSuchElementException, StaleElementReferenceException
from selenium.common.exceptions import StaleElementReferenceException as StaleElementReferenceException_

from selenium.webdriver.chrome.webdriver import WebDriver as ChromeDriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.ui import WebDriverWait
from selenium import webdriver
from infra.enums import WaitInterval
from infra import logger, config, custom_exceptions as ce

log = logger.get_logger(__name__)


class JMChromeWebDriver(ChromeDriver):
    def __init__(self, *args, **kwargs):
        chrome_options = webdriver.ChromeOptions()
        chrome_options.add_argument(f'download.default_directory={config.temp_folder}')
        kwargs['chrome_options'] = chrome_options
        super().__init__(*args, **kwargs)
        self.maximize_window()
        self.implicitly_wait(WaitInterval.MEDIUM.value)

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
        from selenium.webdriver.common.action_chains import ActionChains
        actions = ActionChains(self)
        actions.move_to_element(element)
