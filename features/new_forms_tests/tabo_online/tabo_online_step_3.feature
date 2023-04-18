Feature: TaboOnline form - scenarios step 3

  - Form name: בקשה לקבלת אישור להעדר חובות
  - Feature file name: tabo_online_step_3.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TableOnline
  - Number of Pages is : 5, We are at step: 3
  - All fields are mandatory

  Background:
    Given  Navigate to "TaboOnline" form and reach step "פרטי הנכס"

  Scenario: TABONLINE_09 הזנת ערכים תקינים "פרטי הנכס" סוג רישום טאבו - גוש חלקה, מחזיק הנכס הוא מגיש הבקשה
    When pick a valid "מבנה" from "סוג נכס"
    When pick a valid "טאבו - גוש חלקה" from "סוג רישום"
    When write a valid value "398475627384950" in "מס שטר חכירה"
    When search valid value and pick "א טברי" in search field "רחוב"
    When write a valid number "12345" in "מספר בית"
    When write a valid number "12345" in "גוש ברשם המקרקעין"
    When write a valid number "12345" in "חלקה ברשם המקרקעין"

    When choose "כן" from "האם יש תת חלקה"
    Then validate if "תת חלקה" is exist
    When write a valid value "398475627384950" in "תת חלקה"
    When choose "לא" from "האם החלק מועבר בשלמות"
    Then validate if "סך החלק שמועבר" is exist
    Then validate if "סך החלק הרשום על שם המעבירים" is exist
    When choose "כן" from "שם המחזיק המעודכן בארנונה זהה למגיש הבקשה"
    When write a valid number "100" in "סך החלק שמועבר"
    When write a valid number "100" in "סך החלק הרשום על שם המעבירים"
    When choose "כן" from "שם המחזיק המעודכן בארנונה זהה למגיש הבקשה"
    When choose "לא" from "האם יש שוכרים בנכס"

    #    When click on "שמור" button
    #    And click on "שמור טיוטה" button tyota
    #    When 1st wait for "email" that contains pin code and link
    #    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #    When click on "email" option
    #    When 3rd wait for second "email" to get "קוד האימות" index "2"
    #    When 4th close all tabs "email" at index "2"
    #    Then 5th Validate if went back to expected "email" form
    #    When click on "המשך" button
    When clear fields
