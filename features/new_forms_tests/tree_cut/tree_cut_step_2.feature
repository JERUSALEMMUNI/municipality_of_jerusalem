Feature: TreeCut form - scenarios step 2

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

  Scenario: TC_TREECUT_04 - Checking "personal details" fields with correct details
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


  Scenario: TC_TREECUT_05 - Checking "personal details" fields with correct details
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
    When choose "כן" from "האם מדובר בבית משותף?"
    When Upload "png_to_upload.png" file in "אישור לבית משותף"
    When Upload "png_to_upload.png" file in "אחר"


  Scenario: TC_TREECUT_06 - Checking "personal details" fields with correct details
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

    When from parent "פרטי העקירה" goto "א DSDנחיל" from "רחוב"
    When from parent "פרטי העקירה" write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload file "xlsx_to_upload.xlsx" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "הסלע" in "סוג העץ"
    When pick "סCCכנה" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
    When Upload "xlsx_to_upload.xlsx" file in "אישור לבית משותף"



