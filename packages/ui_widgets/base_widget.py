from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as ec


class BaseWidget(object):
    def __init__(self, label, index):
        self.label = label
        self.web_element = None
        self.index = index

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
