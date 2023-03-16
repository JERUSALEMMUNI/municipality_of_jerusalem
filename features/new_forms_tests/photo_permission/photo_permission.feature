
Feature: PhotoPermission form - scenarios step 1

  - Form name: בקשה לקבלת היתר צילומים בירושלים
  - Feature file name: photo_permission.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  Scenario: TC_PHOTOPERMIT_01 - Checking "personal details" fields with correct details
    Given Navigate to "PhotoPermission" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When click on "המשך" button

  Scenario: TC_PHOTOPERMIT_02 - Checking "personal details" fields with correct details
    Given Navigate to "PhotoPermission" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When click on "המשך" button

  Scenario: TC_TREECUT_03 - Checking "personal details" fields with incorrect details
    Given Navigate to "TreeCut" form
    When write an invalid value "dddd" in "שם פרטי"
    When write an invalid value "dddd" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "dqd2323" in "מספר ת.ז."
    When pick "דרכון" from "סוג זיהוי"
    When write an invalid value "ds2323" in "מספר דרכון"
    When fill number "ds232" as invalid value in "טלפון נייד"
    When fill number "ds232" as invalid value in "טלפון קווי"
    When write an invalid value "TEMP_EMAIL_ADDRESS.com" in "דוא"ל"



#    When write a valid value "ככגדכגד" in "שם חברת ההפקה"
#    And fill "058-8078687" as valid value in "טלפון חברת ההפקה"
#    When write a valid value "ככגדכגד" in "כתובת חברת ההפקה"
#    When write a valid value "ככגדכגד" in "שם מתאם ההפקה"
#    And fill "050-8078687" as valid value in "טלפון מתאם ההפקה"
#    When write a valid value "ככגדכגד" in "שם הגורם עבורו מתבצע הצילום"
#    When write a valid value "ככגדכגד" in "תיאור הצילום"
#    When pick "קליפ" from "סוג המדיה"
#    When from parent "פרטי ההפקה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"
#    When click on "המשך" button
#    When add "2" in widget "פרטי המיקום ומועדי הצילומים"
#    When remove "2" in widget "פרטי המיקום ומועדי הצילומים"
#    Then check if  widget "פרטי המיקום ומועדי הצילומים" list after change is "2"
#    When write a valid value "11112023" in "תאריך" from table "פרטי המיקום ומועדי הצילומים" at row "2"
#    When write a valid value "אתר" in "שם האתר" from table "פרטי המיקום ומועדי הצילומים" at row "2"
#    When write a valid value "111" in "מספר אנשי צוות" from table "פרטי המיקום ומועדי הצילומים" at row "2"
#    When write a valid value "גדגדכ" in "כתובת" from table "פרטי המיקום ומועדי הצילומים" at row "2"
#    When write a valid value "11:11" in "שעת התחלה" from table "פרטי המיקום ומועדי הצילומים" at row "2"
#    When write a valid value "22:11" in "שעת סיום" from table "פרטי המיקום ומועדי הצילומים" at row "2"
#    Then validate tab text  from table "פרטי המיקום ומועדי הצילומים" at row "2" is same as "11/11/2023"










