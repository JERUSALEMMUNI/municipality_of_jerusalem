@in_dev
Feature: TaboOnline form - scenarios step 1

  - Form name: בקשה לקבלת אישור להעדר חובות
  - Feature file name: tabo_online_step_1.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TableOnline
  - Number of Pages is : 5, We are at step: 1
  - All fields are mandatory

  Scenario: TABONLINE_01 הזנת ערכים תקינים בשדות "פרטי מגיש הבקשה"
    Given Navigate to "TaboOnline" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#   When click on "המשך" button
  # When click on "email" option
  # When 1st wait for "email" that contains pin code and link
  # When set pin code "email"
  # When close "email" dialog
    When clear fields