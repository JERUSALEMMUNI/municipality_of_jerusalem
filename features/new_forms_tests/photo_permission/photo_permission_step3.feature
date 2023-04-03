Feature: PhotoPermission form - scenarios step 3

  - Form name: בקשה לקבלת היתר צילומים בירושלים
  - Feature file name: photo_permission_step3.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 3
  - All fields are mandatory

  Background:
    Given  Navigate to "PhotoPermission" form and reach step "פרטי המיקום ומועדי הצילומים"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PHOTOPERMIT_03 הזנת ערכים תקינים לשדות "פרטי מיקום ומועדי הצילומים" מועד אחד
    Given Navigate to "PhotoPermission" form
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "11:11" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "22:11" in "שעת סיום"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "ירושלים" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" choose "לא קיימת חסימה" in "חסימת כביש"
    When choose "לא" from "האם יש חיבור לחשמל/גנרטור"
    When write a valid value "גחדךגלכן ךגלכןגךג חלכןכךגלכןכ םגךכלכ" in "פירוט שימוש באמצעי הפקה, אפקטים שונים (כגון ירי/פיצוץ)"
    When write a valid value "גחדךגלכן קךגלכןגךגח לכןכךגלכןכםגךכלכ" in "פירוט ציוד צילום"
    When click on "שמור" button
    And click on "שמור טיוטה" button tyota
    When 1st wait for "email" that contains pin code and link
    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    When click on "email" option
    When 3rd wait for second "email" to get "קוד האימות" index "2"
    When 4th close all tabs "email" at index "2"
    Then 5th Validate if went back to expected "email" form
    When click on "המשך" button
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PHOTOPERMIT_04 הזנת ערכים תקינים לשדות "פרטי מיקום ומועדי הצילומים" מספר מועדים
    Given Navigate to "PhotoPermission" form
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "11:11" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "22:11" in "שעת סיום"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "ירושלים" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" choose "נושמת" in "חסימת כביש"
    When from table "פרטי המיקום ומועדי הצילומים" add "1"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" pick time "11:11" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" pick time "22:11" in "שעת סיום"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "ירושלים" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" choose "נושמת" in "חסימת כביש"
    When choose "לא" from "האם יש חיבור לחשמל/גנרטור"
    When write a valid value "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ" in "פירוט שימוש באמצעי הפקה, אפקטים שונים (כגון ירי/פיצוץ)"
    When write a valid value "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ" in "פירוט ציוד צילום"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When click on "המשך" button








