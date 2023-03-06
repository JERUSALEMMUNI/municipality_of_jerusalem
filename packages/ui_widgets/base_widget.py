from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as ec


class BaseWidget(object):
    def __init__(self, label):
        self.label = label
        self.web_element = None

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

    # def check_error_text(self, error_expectation, wedgit_name):
    #     if wedgit_name in ("מספר טלפון נייד"):
    #         error_msg = self.web_element.find_element(by=By.XPATH, value=f"//label[contains(text(),'{wedgit_name}')]/following-sibling::div/following-sibling::span")
    #     elif wedgit_name in ("ענף"):
    #
    #     else:
    #         error_msg = self.web_element.find_element(by=By.XPATH, value=f"//label[contains(text(),'{wedgit_name}')]/following-sibling::input/following-sibling::span")
    #
    #     return error_msg.text == error_expectation
    #     # if "-" in error_expectation and "\n" in error_msg.text:
    #     #     expectation_err = error_expectation.split("-")
    #     #     first_expectation_error = expectation_err[0]
    #     #     second_expectation_error = expectation_err[1]
    #     #
    #     #     real_err = error_msg.text.split("\n")
    #     #     first_real_error = real_err[0]
    #     #     second_real_error = real_err[1]
    #     #     return first_expectation_error == first_real_error and second_expectation_error == second_real_error
    #     # return error_expectation == error_msg.text
