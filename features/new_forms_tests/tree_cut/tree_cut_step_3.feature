Feature: TreeCut form - scenarios step 3

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "TreeCut" form and reach step "הצהרה"
    When goto "א נחיל" from "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "הסלע" in "סוג העץ"
    When pick "סכנה" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When click on "המשך" button

  Scenario: TC_TREECUT_07 - Checking "personal details" fields with correct details
    When check the box of "מגיש הבקשה מצהיר"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך"


