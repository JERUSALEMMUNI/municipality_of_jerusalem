@in_dev
Feature: testing feature to help me creat the new widget in step 3
#  Background:
#todo: make a way to make pycharm know the different between  דוא"ל and דוא''ל
  Scenario:
    Given Navigate to "PhotoPermission" form
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"
    And fill "058-8078687" as valid value in "טלפון נייד"
    When click on "המשך" button
    When test temp
    When write a valid value "ככגדכגד" in "שם חברת ההפקה"
    And fill "058-8078687" as valid value in "טלפון חברת ההפקה"
    When write a valid value "ככגדכגד" in "כתובת חברת ההפקה"
    When write a valid value "ככגדכגד" in "שם מתאם ההפקה"
    And fill "050-8078687" as valid value in "טלפון מתאם ההפקה"
    When write a valid value "ככגדכגד" in "שם הגורם עבורו מתבצע הצילום"
    When write a valid value "ככגדכגד" in "תיאור הצילום"
    When pick "קליפ" from "סוג המדיה"
    When from parent "פרטי ההפקה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"
    When click on "המשך" button
    When add "2" in widget "פרטי המיקום ומועדי הצילומים"
    When remove "2" in widget "פרטי המיקום ומועדי הצילומים"
    Then check if  widget "פרטי המיקום ומועדי הצילומים" list after change is "2"
    When write a valid value "11112023" in "תאריך" from table "פרטי המיקום ומועדי הצילומים" at row "2"
    When write a valid value "אתר" in "שם האתר" from table "פרטי המיקום ומועדי הצילומים" at row "2"
    When write a valid value "111" in "מספר אנשי צוות" from table "פרטי המיקום ומועדי הצילומים" at row "2"
    When write a valid value "גדגדכ" in "כתובת" from table "פרטי המיקום ומועדי הצילומים" at row "2"
    When write a valid value "11:11" in "שעת התחלה" from table "פרטי המיקום ומועדי הצילומים" at row "2"
    When write a valid value "22:11" in "שעת סיום" from table "פרטי המיקום ומועדי הצילומים" at row "2"
    Then validate tab text  from table "פרטי המיקום ומועדי הצילומים" at row "2" is same as "11/11/2023"