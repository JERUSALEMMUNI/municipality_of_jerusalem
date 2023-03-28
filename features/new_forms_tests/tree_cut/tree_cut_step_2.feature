Feature: TreeCut form - scenarios step 2

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "TreeCut" form and reach step "פרטי הבקשה"


  Scenario: TC_TREECUT_02 - Entering correct values for the "request details" fields when tree 1 and a non-shared house are selected
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "הסלע" in "סוג העץ"
    When pick "בטיחות" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When Upload a valid "jpg_pic_to_upload.jpg" file in "אחר"
    When Upload a valid "gif_to_upload.gif" file in "אחר"
#    When click on "שמור" button
#    When click on "המשך" button
    When clear fields

  Scenario: TC_TREECUT_03 - Entering correct values for the "request details" fields when several trees and a non-shared house were selected
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" add "1"
    When from table "רשימת עצים" at row "2" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" pick "בוקיצה נמוכה" in "סוג העץ"

    When pick "סכנה" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When Upload a valid "jpg_pic_to_upload.jpg" file in "אחר"
    When Upload a valid "gif_to_upload.gif" file in "אחר"
#    When click on "שמור" button
#    When click on "המשך" button
    When clear fields


  Scenario: TC_TREECUT_04 - Entering correct values for the "request details" fields when several trees and a shared house are selected
#    When click on "שמור" button
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" add "1"
    When from table "רשימת עצים" at row "2" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" pick "בוקיצה נמוכה" in "סוג העץ"
    When pick "בריאות העצים" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
    When Upload a valid "png_to_upload.png" file in "אישור לבית משותף"
    When Upload a valid "jpg_pic_to_upload.jpg" file in "אישור לבית משותף"
    When Upload a valid "gif_to_upload.gif" file in "אישור לבית משותף"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When Upload a valid "jpg_pic_to_upload.jpg" file in "אחר"
    When Upload a valid "gif_to_upload.gif" file in "אחר"
#    When click on "שמור" button
#    When click on "המשך" button
    When clear fields

  Scenario: TC_TREECUT_05 - Entering correct values for the "request details" fields, adding and deleting from the list of trees
#    When click on "שמור" button
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" at row "1" pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" add "1"
    When from table "רשימת עצים" at row "2" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" pick "בוקיצה נמוכה" in "סוג העץ"
    When pick "בריאות העצים" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
    When from table "רשימת עצים" remove "1"
    #todo check the number of trees is one
    When from table "רשימת עצים" add "1"
    #todo check the all field in new row not fill
    When from table "רשימת עצים" remove "1"
    #todo check the number of trees is one
    When Upload a valid "png_to_upload.png" file in "אישור לבית משותף"
    When Upload a valid "jpg_pic_to_upload.jpg" file in "אישור לבית משותף"
    When Upload a valid "gif_to_upload.gif" file in "אישור לבית משותף"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When Upload a valid "jpg_pic_to_upload.jpg" file in "אחר"
    When Upload a valid "gif_to_upload.gif" file in "אחר"
#    When click on "שמור" button
#    When click on "המשך" button
    When clear fields

  @suhaib
  Scenario: TC_TREECUT_08 - Entering incorrect values for the "Details of the applicant" fields
    When search invalid value and pick "א DSDנחיל" in search field "רחוב"
    When write an invalid number "54dew33ew326" in "מספר בית"
    When write an invalid value "1cdc223" in "גוש"
    Then check if "גוש" error is "יש להזין ספרות בלבד"
    When write an invalid value "8ce75ecec" in "חלקה"
    Then check if "חלקה" error is "יש להזין ספרות בלבד"
    When from table "רשימת עצים" at row "1" pick "בוקfrמוכה" in "סוג העץ"
    When from table "רשימת עצים" at row "1" upload an invalid file "doc_to_upload.doc" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload an invalid file "10MB_file_to_upload.pdf" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload an invalid file "xlsx_to_upload.xlsx" in "תמונה של העץ"
    When Upload an invalid "doc_to_upload.doc" file in "אחר"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "אחר"
    When Upload a valid "xlsx_to_upload.xlsx" file in "אחר"
    When clear fields
