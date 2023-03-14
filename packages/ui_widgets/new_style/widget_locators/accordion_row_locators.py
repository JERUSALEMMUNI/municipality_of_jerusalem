from selenium.webdriver.common.by import By

# todo:try take parent and from parent locate input
widget_locators = {
    'כתובת': ".//label[contains(text(),'כתובת')]//parent::div//input",
    'שם האתר': ".//label[contains(text(),'שם האתר')]//parent::div//input",
    'תאריך': ".//label[contains(text(),'תאריך')]//parent::div//input",
    'מספר אנשי צוות': ".//label[contains(text(),'מספר אנשי צוות')]//parent::div//input",
    'שעת התחלה': ".//label[contains(text(),'שעת התחלה')]//parent::div//input",
    'שעת סיום': ".//label[contains(text(),'שעת סיום')]//parent::div//input",

}


class AccordionRowLocators:
    tab = (By.XPATH, ".//a[@role='tab']")
    trash = (By.XPATH, ".//button[contains(@icon,'trash')]")

    @staticmethod
    def get_text_field_from_locator(label):
        return By.XPATH, widget_locators[label]
