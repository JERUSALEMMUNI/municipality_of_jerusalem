from typing import Optional
from selenium.webdriver.remote.webdriver import WebElement
from selenium.webdriver.support import expected_conditions as ec


class BaseWidget:
    def __init__(self, label: str, index: int, step_number=None) -> None:
        self.label = label
        self.web_element: Optional[WebElement] = None
        self.index = index
        self.step_number = step_number
        self.init_widget_constants()

    def init_widget_constants(self) -> None:
        pass

    def set_widget_web_element(self, element: 'BaseWidget', temp_element: Optional[WebElement] = None) -> None:
        if temp_element is None:
            located_element = self.web_element.find_element(element.locator['By'],
                                                            element.locator['Value'])
            element.set_web_element(located_element)
        else:
            element.set_web_element(temp_element)

    def set_web_element(self, web_element: WebElement) -> None:
        self.web_element = web_element

    def get_web_element(self) -> WebElement:
        return self.web_element

    @property
    def is_enable(self) -> bool:
        return self.web_element.is_enabled()

    @property
    def get_text(self) -> str:
        return self.web_element.text

    @property
    def is_clickable(self) -> bool:
        return ec.element_to_be_clickable(self.web_element)(self.web_element) and self.is_displayed

    @property
    def is_displayed(self) -> bool:
        return self.web_element.is_displayed()
