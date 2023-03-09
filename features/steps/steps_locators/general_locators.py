from selenium.webdriver.common.by import By


class GeneralLocators:

    form_number = (By.XPATH,'//*[contains(text(),"מספר אסמכתא")]//preceding-sibling::input')
    id_number = (By.XPATH,'//*[contains(text(),"מספר תעודת זהות /דרכון*")]//preceding-sibling::input')
    email = (By.XPATH, '//*[contains(text(),"מייל")]//preceding-sibling::input')
    send_message_button = (By.XPATH, '//input[@value="שלח הזדהות"]')
    fill_code_field = (By.XPATH,'//*[contains(text(),"הזן את הקוד")]//preceding-sibling::input')
    click_link_request = (By.XPATH, '//input[@value="אתר בקשה"]')
    see_form = (By.XPATH,'//span[contains(text()," לצפייה בטופס > ")]')
    click_continue_button = (By.XPATH,'//div[@class="generalBtn"]')
    validation_link = "https://jerequestatusapi.jerusalem.muni.il/JerSiteStatusApp/#/status/3"
