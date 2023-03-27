from selenium.webdriver.common.by import By


class EmailAuthenticationConstants:
    # 1 is old form, 2 is new form
    email_dict = {
        "form_number": {1: (By.XPATH, '//*[contains(text(),"מספר אסמכתא")]//preceding-sibling::input'),
                        2: (By.XPATH, '//*[contains(text(),"בקשה")]/..//input')},

        "id_number": {1: (By.XPATH, '//*[contains(text(),"מספר תעודת זהות /דרכון*")]//preceding-sibling::input'),
                      2: (By.XPATH, f'//label[contains(text(),"זהות")]/following-sibling::input')},

        "email": {1: (By.XPATH, '//*[contains(text(),"מייל")]//preceding-sibling::input'),
                  2: (By.XPATH, f'//label[contains(text(),"דוא")]/following-sibling::input')},

        "send_message_button": {1: (By.XPATH, '//input[@value="שלח הזדהות"]'),
                                2: (By.XPATH, '//span[contains(text(),"שלח")]/parent::button')},

        "fill_code_field": {1: (By.XPATH, '//*[contains(text(),"הזן את הקוד")]//preceding-sibling::input'),
                            2: (By.XPATH, '//*[contains(text(),"הקוד אותו קיבלתי")]/following-sibling::input')},

        "click_link_request": {1: (By.XPATH, '//input[@value="אתר בקשה"]'),
                               2: (By.XPATH, '(//span[contains(text(),"שלחו")]/parent::button)[2]')},

        "see_form": {1: (By.XPATH, '//span[contains(text()," לצפייה בטופס > ")]'),
                     2: (By.XPATH, "//span[contains(text(),'לעדכון הטופס')]/parent::button")},

        "click_continue_button": {1: (By.XPATH, '//div[@class="generalBtn"]'),
                                  2: (By.XPATH, '//span[contains(text(),"הודעת מערכת")]/../..//span[contains(text(),"המשך")]/parent::button')},

        "validation_link": {1: "https://jerequestatusapi.jerusalem.muni.il/JerSiteStatusApp/#/status/3",
                            2: "https://jerdigistatusapi.jerusalem.muni.il/Client/#/login"},

        "pin_code": (By.XPATH, "//label[contains(text(),'קוד ההזדהות')]/following-sibling::input"),

        "pin_code_second_time": {1: 'קוד האימות שלך הוא: ',
                                 2: 'סיסמתך לכניסה חד פעמית לשירות דיגיטלי של עיריית ירושלים היא '},

        "continue_to_step": (By.XPATH, '//lib-input-text/following-sibling::button'),

        "email_body_split_message": 'סיסמתך לכניסה חד פעמית לשירות הדיגיטלי של עיריית ירושלים היא ',

        "email_body_html": (By.XPATH, "//body"),

        "select_email_option": (By.XPATH, "//span[contains(text(),'הודעה במייל')]")
    }
