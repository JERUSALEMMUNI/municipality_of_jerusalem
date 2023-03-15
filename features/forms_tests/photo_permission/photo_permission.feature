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
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
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
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "אתר" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" pick time "11:11" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" pick time "22:11" in "שעת סיום"
    Then from table "פרטי המיקום ומועדי הצילומים" at row "2" validate tab text is same as "11/11/2023"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" choose "נושמת" in "חסימת כביש"
    Then from table "פרטי המיקום ומועדי הצילומים" at row "2" validate chosen choice of "חסימת כביש" is "נושמת"

    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "אתר" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "04:08" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "07:11" in "שעת סיום"
    Then from table "פרטי המיקום ומועדי הצילומים" at row "2" validate tab text is same as "11/11/2023"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" choose "נושמת" in "חסימת כביש"
    Then from table "פרטי המיקום ומועדי הצילומים" at row "2" validate chosen choice of "חסימת כביש" is "נושמת"
#    When choose "כן" from "האם יש חיבור לחשמל/גנרטור"
#    Then validate chosen choice of "האם יש חיבור לחשמל/גנרטור" is "כן"
#    When click on "המשך" button
#    Then validate "האם יש חיבור לחשמל/גנרטור" has error "שדה חובה"
