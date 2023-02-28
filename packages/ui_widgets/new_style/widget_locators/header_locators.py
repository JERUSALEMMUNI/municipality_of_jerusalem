class HeaderLocators:
    title = (By.XPATH, f"./div/div/div/nav/div/div")
    picture = (By.XPATH, f"./div/div/div/nav/div/following-sibling::a")
    new = 'new'
    old = 'old'

    @staticmethod
    def language(language):
        return By.XPATH, f"./div/div/div/nav/div/ul/li/a[contains(text(),'{language}')]"

