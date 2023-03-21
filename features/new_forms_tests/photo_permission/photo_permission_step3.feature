Feature: PhotoPermission form - scenarios step 3

  - Form name: בקשה לקבלת היתר צילומים בירושלים
  - Feature file name: photo_permission_step3.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 3
  - All fields are mandatory

  Background:
    Given  Navigate to "PhotoPermission" form and reach step "פרטי המיקום ומועדי הצילומים"
#  @in_dev
  Scenario: TC_PHOTOPERMIT_06 - Checking "location details and shooting dates" fields
    Given Navigate to "PhotoPermission" form
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "11:11" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "22:11" in "שעת סיום"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "ירושלים" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" choose "נושמת" in "חסימת כביש"
    When choose "לא" from "האם יש חיבור לחשמל/גנרטור"
    When choose "כן" from "האם יש חיבור לחשמל/גנרטור"
    When write a valid value "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ" in "פירוט השימוש בחשמל"
    When write a valid value "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ" in "פירוט שימוש באמצעי הפקה, אפקטים שונים (כגון ירי/פיצוץ)"
    When write a valid value "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ" in "פירוט ציוד צילום"
#    When clear fields

    Scenario: TC_PHOTOPERMIT_07 - Checking "location details and shooting dates" fields
    Given Navigate to "PhotoPermission" form
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "11:11" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" pick time "22:11" in "שעת סיום"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "ירושלים" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "1" choose "נושמת" in "חסימת כביש"
    When choose "לא" from "האם יש חיבור לחשמל/גנרטור"
    When from table "פרטי המיקום ומועדי הצילומים" add "1"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "11112023" in "תאריך"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" pick time "11:11" in "שעת התחלה"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" pick time "22:11" in "שעת סיום"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "111" in "מספר אנשי צוות"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "ירושלים" in "שם האתר"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" write a valid value "גדגדכ" in "כתובת"
    When from table "פרטי המיקום ומועדי הצילומים" at row "2" choose "נושמת" in "חסימת כביש"
#    When click on "המשך" button
#    When clear fields








