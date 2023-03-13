from selenium.webdriver.common.by import By

# todo:try take parent and from parent locate input
widget_locators = {
    'כתובת': ".//label[contains(text(),'כתובת')]//following-sibling::input",
    'שם האתר': ".//label[contains(text(),'שם האתר')]//following-sibling::input",
    'תאריך': ".//label[contains(text(),'תאריך')]//following-sibling::*//input",
    'מספר אנשי צוות': ".//label[contains(text(),'מספר אנשי צוות')]//following-sibling::*//input",
    'שעת התחלה': ".//label[contains(text(),'שעת התחלה')]//following-sibling::*//input",
    'שעת סיום': ".//label[contains(text(),'שעת סיום')]//following-sibling::*//input",

}


class AccordionRowLocators:
    tab = (By.XPATH, ".//a[@role='tab']")
    trash = (By.XPATH, ".//button[contains(@icon,'trash')]")

    @staticmethod
    def get_text_field_from_locator(label):
        return By.XPATH, widget_locators[label]
