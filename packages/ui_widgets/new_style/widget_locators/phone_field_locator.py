from selenium.webdriver.common.by import By


class PhoneFieldLocators:
    p_dropdown = "./..//p-dropdown"
    drop_down = (By.XPATH, "./following-sibling::div/p-dropdown")
    dropDown_open = (By.XPATH, p_dropdown+"//input")
    text_element = (By.XPATH, "./following-sibling::div/input")
    # error_msg = (By.XPATH, "./following-sibling::div/following-sibling::span | "
    #                        "./following-sibling::div/following-sibling::div ")
    error_msg = (By.XPATH, "./following-sibling::span[contains(@class,'ng-star-inserted')] | "
                           "./following-sibling::div[contains(@class,'ng-star-inserted')] ")
    click_list=(By.XPATH, p_dropdown)
