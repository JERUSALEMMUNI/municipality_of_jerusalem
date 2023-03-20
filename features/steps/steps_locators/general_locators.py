from selenium.webdriver.common.by import By


class GeneralLocators:
    email_label = 'דוא"ל'
    form_number = (By.XPATH,'//*[contains(text(),"מספר אסמכתא")]//preceding-sibling::input')
    form_number_new = (By.XPATH,'//*[contains(text(),"בקשה")]/..//input')
    id_number_new = (By.XPATH,f'//label[contains(text(),"זהות")]/following-sibling::input')
    id_number = (By.XPATH,'//*[contains(text(),"מספר תעודת זהות /דרכון*")]//preceding-sibling::input')
    email = (By.XPATH, '//*[contains(text(),"מייל")]//preceding-sibling::input')
    email_new = (By.XPATH, f'//label[contains(text(),"דוא")]/following-sibling::input')
    send_message_button = (By.XPATH, '//input[@value="שלח הזדהות"]')
    send_message_button_new = (By.XPATH, '//span[contains(text(),"שלח")]/parent::button')
    fill_code_field = (By.XPATH,'//*[contains(text(),"הזן את הקוד")]//preceding-sibling::input')
    fill_code_field_new = (By.XPATH,'//*[contains(text(),"הקוד אותו קיבלתי")]/following-sibling::input')
    click_link_request = (By.XPATH, '//input[@value="אתר בקשה"]')
    click_link_request_new = (By.XPATH, '(//span[contains(text(),"שלחו")]/parent::button)[2]')
    see_form = (By.XPATH,'//span[contains(text()," לצפייה בטופס > ")]')
    see_form_new = (By.XPATH,"//span[contains(text(),'לעדכון הטופס')]/parent::button")
    click_continue_button = (By.XPATH,'//div[@class="generalBtn"]')
    click_continue_button_new = (By.XPATH,'//span[contains(text(),"המשך")]/parent::button')
    validation_link = "https://jerequestatusapi.jerusalem.muni.il/JerSiteStatusApp/#/status/3"
