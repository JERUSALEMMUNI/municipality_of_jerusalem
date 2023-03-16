@in_dev
Feature: EmailRegistration form - scenarios step 1

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: email_registration.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/EmailRegistration
  - Number of Pages is : 2, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: TC_EMAILREG_01 - Entering correct values for personal details fields when the thesis identification type is selected
    Given Navigate to "EmailRegistration" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on email option
#    When 1st wait for email that contains pin code and link
#    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form

  Scenario: TC_EMAILREG_02 - Entering valid values for personal details fields when the passport identification type is selected
    Given Navigate to "EmailRegistration" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on email option
#    When 1st wait for email that contains pin code and link
#    When set pin code
     #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form

  Scenario: TC_EMAILREG_03 - Entering incorrect values for personal private fields
    Given Navigate to "EmailRegistration" form
    When write an invalid value "sdsd" in "שם פרטי"
    And write an invalid value "sdfdf" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "hello" in "מספר ת.ז."
    And fill "058-8e7f6s7" as invalid value in "טלפון נייד"
    And fill "02-80e8687" as invalid value in "טלפון קווי"
    When write an invalid value "כעיחלך" in "דוא"ל"




