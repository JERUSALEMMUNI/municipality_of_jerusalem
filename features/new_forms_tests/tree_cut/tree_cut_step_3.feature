Feature: TreeCut form - scenarios step 3

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)
  @suhaib
  Scenario: TC_TREECUT_07 - Checking "personal details" fields with correct details
    Given Navigate to "TreeCut" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When from parent "פרטי מגיש הבקשה" goto "א נחיל" from "רחוב"
    When from parent "פרטי מגיש הבקשה" write a valid number "1" in "מספר בית"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code

    When from parent "פרטי העקירה" goto "א נחיל" from "רחוב"
    When from parent "פרטי העקירה" write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "הסלע" in "סוג העץ"
    When pick "סכנה" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"
    When Upload "png_to_upload.png" file in "אחר"
    When click on "המשך" button
    When check the captcha box of "מגיש הבקשה מצהיר"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך"
    When I wait for "10" seconds


