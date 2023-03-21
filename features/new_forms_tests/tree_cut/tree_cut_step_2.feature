Feature: TreeCut form - scenarios step 2

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "TreeCut" form and reach step "פרטי הבקשה"


  Scenario: TC_TREECUT_04 - Checking "personal details" fields with correct details
    When goto "א נחיל" from "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "הסלע" in "סוג העץ"
    When pick "סכנה" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"
    When Upload a valid "png_to_upload.png" file in "אחר"


  Scenario: TC_TREECUT_05 - Checking "personal details" fields with correct details
    When goto "א נחיל" from "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "הסלע" in "סוג העץ"
    When pick "סכנה" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
    When Upload a valid "png_to_upload.png" file in "אישור לבית משותף"
    When Upload a valid "png_to_upload.png" file in "אחר"


  Scenario: TC_TREECUT_06 - Checking "personal details" fields with correct details
    When goto "א DSDנחיל" from "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload file "xlsx_to_upload.xlsx" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "הסלע" in "סוג העץ"
    When pick "סCCכנה" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
    When Upload a valid "xlsx_to_upload.xlsx" file in "אישור לבית משותף"