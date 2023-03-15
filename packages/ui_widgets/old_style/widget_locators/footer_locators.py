from selenium.webdriver.common.by import By


class FooterLocators:
    follow_us = (By.XPATH, f".//div[@class='social']/span")
    call_us = (By.XPATH, f".//div[@class='link-help links']")
    facebook_logo = (By.XPATH, f".//a[@class='fa fa-facebook-f']")
    facebook_clicker = (By.XPATH, f".//a[contains(@class,'facebook')]")
    instagram_logo = (By.XPATH, f".//a[@class='fa fa-instagram contacts']")
    instagram_clicker = (By.XPATH, f".//a[contains(@class,'instagram ')]")
    twitter_logo = (By.XPATH, f".//a[@class='fa fa-twitter contacts']")
    twitter_clicker = (By.XPATH, f".//a[contains(@class,'twitter')]")

