from selenium.webdriver.common.by import By


class FooterLocators:
    follow_us = (By.XPATH, f"./div/div/span")
    facebook_logo = (By.XPATH, f".//div/a/following-sibling::a/following-sibling::a")
    facebook_clicker = (By.XPATH, f".//a[contains(@class,'facebook')]")
    instagram_logo = (By.XPATH, f".//div/a/following-sibling::a")
    instagram_clicker = (By.XPATH, f".//footer//a[contains(@class,'instagram ')]")
    twitter_logo = (By.XPATH, f".//div/following-sibling::div/a")
    twitter_clicker = (By.XPATH, f".//footer//a[contains(@class,'twitter')]")



    @staticmethod
    def language(language):
        return By.XPATH, f"./div/div/div/nav/div/ul/li/a[contains(text(),'{language}')]"

