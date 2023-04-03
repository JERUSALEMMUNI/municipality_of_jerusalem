Feature: TaboOnline form - scenarios step 2

  - Form name: בקשה לקבלת אישור להעדר חובות
  - Feature file name: tabo_online_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TableOnline
  - Number of Pages is : 5, We are at step: 2
  - All fields are mandatory

  Background:
    Given  Navigate to "TaboOnline" form and reach step "פרטי הבקשה"
  @test
  Scenario:
    When choose "העברת זכויות" from "סוג הבקשה"
    When choose "אחר" from "מגיש הבקשה הוא"
    When from parent "פרטי הבקשה" at table "מעביר" add "1" row
    When from parent "פרטי הבקשה" at table "מעביר" remove row "2"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "גדגד" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write an invalid value "sdfsf" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "גדגד" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write an invalid value "sdfsf" in "שם פרטי"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "1" validate if "שם פרטי" text is "sdfsf"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate if "שם פרטי" text is "sdfsf"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" pick an invalid value "sd" from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" pick an invalid value "sdf" from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" fill a valid number "02-4567893" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" fill a valid number "02-4567893" in "טלפון קווי"
