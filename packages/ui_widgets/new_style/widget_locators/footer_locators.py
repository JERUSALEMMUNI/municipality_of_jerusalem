from selenium.webdriver.common.by import By


class FooterLocators:
    footer_element = (By.XPATH, f"./following-sibling::small")
    picture = (By.XPATH, f"./div/div/div/nav/div/following-sibling::a")
    new = 'new'
    old = 'old'