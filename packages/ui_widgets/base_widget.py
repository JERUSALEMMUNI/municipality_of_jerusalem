from selenium.webdriver.support import expected_conditions as ec


class BaseWidget(object):
    def __init__(self, label, index):
        self.label = label
        self.web_element = None
        self.index = index
        self.init_widget_constants()

    def init_widget_constants(self):
        pass

    def set_widget_web_element(self, element, temp_element=None):
        if temp_element is None:
            located_element = self.web_element.find_element(element.locator['By'],
                                                            element.locator['Value'])
            element.set_web_element(located_element)
        else:
            element.set_web_element(temp_element)

    def set_web_element(self, web_element):
        self.web_element = web_element

    def get_web_element(self):
        return self.web_element

    @property
    def is_enable(self):
        return self.web_element.is_enabled()

    @property
    def get_text(self):
        return self.web_element.text

    @property
    def is_clickable(self):
        return all([ec.element_to_be_clickable(self.web_element), self.is_displayed])

    @property
    def is_displayed(self):
        return self.web_element.is_displayed()

    def clear(self, index=None):
        return
