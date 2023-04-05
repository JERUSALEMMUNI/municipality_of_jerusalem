Feature: TreeCut form - scenarios step 2

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "TreeCut" form and reach step "פרטי הבקשה"


  Scenario: TC_TREECUT_02 - Entering correct values for the "request details" fields when tree 1 and a non-shared house are selected
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "gif_to_upload.gif" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" delete file "1" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "png_to_upload.png" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" delete file "1" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" delete file "1" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "pdf_file_to_upload.pdf" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "pdf_file_to_upload.pdf" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" delete file "1" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpeg_to_upload.jpeg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "jpeg_to_upload.jpeg" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" delete file "1" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "bmp_to_upload.bmp" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "bmp_to_upload.bmp" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" delete file "1" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" search valid value and pick "הסלע" in "סוג העץ"
    When pick "בטיחות" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"



    When upload "gif_to_upload.gif" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "gif_to_upload.gif" file is in "אחר" files list
    When delete file by name "gif_to_upload.gif" in "אחר"


    When upload "png_to_upload.png" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "png_to_upload.png" file is in "אחר" files list
    When delete file by name "png_to_upload.png" in "אחר"


    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"


    When upload "bmp_to_upload.bmp" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "bmp_to_upload.bmp" file is in "אחר" files list
    When delete file by name "bmp_to_upload.bmp" in "אחר"


    When upload "pdf_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אחר" files list
    When delete file by name "pdf_file_to_upload.pdf" in "אחר"


    When upload "jpeg_to_upload.jpeg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "אחר" files list
    When delete file by name "jpeg_to_upload.jpeg" in "אחר"

#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך" button
#    When clear fields

  Scenario: TC_TREECUT_03 - Entering correct values for the "request details" fields when several trees and a non-shared house were selected
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "png_to_upload.png" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    Then validate if "מספר העצים" value is "1"
    When from table "רשימת עצים" add "1" rows
    When from table "רשימת עצים" at row "2" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" validate name of file "1" is "png_to_upload.png" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" validate name of file "2" is "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "2" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" validate name of file "3" is "gif_to_upload.gif" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "3" in "תמונה של העץ" in accepted
    Then validate if "מספר העצים" value is "2"
    When pick "סכנה" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"


    When upload "gif_to_upload.gif" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "gif_to_upload.gif" file is in "אחר" files list
    When delete file by name "gif_to_upload.gif" in "אחר"


    When upload "png_to_upload.png" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "png_to_upload.png" file is in "אחר" files list
    When delete file by name "png_to_upload.png" in "אחר"


    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"


    When upload "bmp_to_upload.bmp" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "bmp_to_upload.bmp" file is in "אחר" files list
    When delete file by name "bmp_to_upload.bmp" in "אחר"


    When upload "pdf_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אחר" files list
    When delete file by name "pdf_file_to_upload.pdf" in "אחר"


    When upload "jpeg_to_upload.jpeg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "אחר" files list
    When delete file by name "jpeg_to_upload.jpeg" in "אחר"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך" button
    When clear fields


  Scenario: TC_TREECUT_04 - Entering correct values for the "request details" fields when several trees and a shared house are selected
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "png_to_upload.png" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" validate name of file "2" is "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "2" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" validate name of file "3" is "gif_to_upload.gif" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "3" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    Then validate if "מספר העצים" value is "1"
    When from table "רשימת עצים" add "1" rows
    When from table "רשימת עצים" at row "2" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" validate name of file "1" is "png_to_upload.png" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" validate name of file "2" is "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "2" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" validate name of file "3" is "gif_to_upload.gif" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "3" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    Then validate if "מספר העצים" value is "2"

    When pick "בריאות העצים" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
#    When Upload a valid "png_to_upload.png" file in "אישור לבית משותף"
#    When Upload a valid "jpg_pic_to_upload.jpg" file in "אישור לבית משותף"
#    When Upload a valid "gif_to_upload.gif" file in "אישור לבית משותף"
#    Then validate name of file "1" is "png_to_upload.png" in "אישור לבית משותף"
#    Then validate size of file "1" in "אישור לבית משותף" in accepted
#    Then validate name of file "2" is "jpg_pic_to_upload.jpg" in "אישור לבית משותף"
#    Then validate size of file "2" in "אישור לבית משותף" in accepted
#    Then validate name of file "3" is "gif_to_upload.gif" in "אישור לבית משותף"
#    Then validate size of file "3" in "אישור לבית משותף" in accepted
    When upload "gif_to_upload.gif" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "gif_to_upload.gif" file is in "אישור לבית משותף" files list
    When delete file by name "gif_to_upload.gif" in "אישור לבית משותף"


    When upload "png_to_upload.png" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "png_to_upload.png" file is in "אישור לבית משותף" files list
    When delete file by name "png_to_upload.png" in "אישור לבית משותף"


    When upload "jpg_pic_to_upload.jpg" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אישור לבית משותף" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אישור לבית משותף"


    When upload "bmp_to_upload.bmp" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "bmp_to_upload.bmp" file is in "אישור לבית משותף" files list
    When delete file by name "bmp_to_upload.bmp" in "אישור לבית משותף"


    When upload "pdf_file_to_upload.pdf" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אישור לבית משותף" files list
    When delete file by name "pdf_file_to_upload.pdf" in "אישור לבית משותף"


    When upload "jpeg_to_upload.jpeg" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "אישור לבית משותף" files list
    When delete file by name "jpeg_to_upload.jpeg" in "אישור לבית משותף"


   When upload "gif_to_upload.gif" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "gif_to_upload.gif" file is in "אחר" files list
    When delete file by name "gif_to_upload.gif" in "אחר"


    When upload "png_to_upload.png" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "png_to_upload.png" file is in "אחר" files list
    When delete file by name "png_to_upload.png" in "אחר"


    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"


    When upload "bmp_to_upload.bmp" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "bmp_to_upload.bmp" file is in "אחר" files list
    When delete file by name "bmp_to_upload.bmp" in "אחר"


    When upload "pdf_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אחר" files list
    When delete file by name "pdf_file_to_upload.pdf" in "אחר"


    When upload "jpeg_to_upload.jpeg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "אחר" files list
    When delete file by name "jpeg_to_upload.jpeg" in "אחר"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך" button
    When clear fields

  Scenario: TC_TREECUT_05 - Entering correct values for the "request details" fields, adding and deleting from the list of trees
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "1" in "מספר בית"
    When write a valid value "1223" in "גוש"
    When write a valid value "875" in "חלקה"
    When from table "רשימת עצים" at row "1" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" validate name of file "1" is "png_to_upload.png" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" validate name of file "2" is "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "2" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" validate name of file "3" is "gif_to_upload.gif" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate size of file "3" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "1" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    Then validate if "מספר העצים" value is "1"
    When from table "רשימת עצים" add "1" rows
    Then validate if "מספר העצים" value is "2"
    When from table "רשימת עצים" at row "2" upload a valid file "png_to_upload.png" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" upload a valid file "gif_to_upload.gif" in "תמונה של העץ"
    When from table "רשימת עצים" at row "2" validate name of file "1" is "png_to_upload.png" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "1" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" validate name of file "2" is "jpg_pic_to_upload.jpg" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "2" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" validate name of file "3" is "gif_to_upload.gif" in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate size of file "3" in "תמונה של העץ" in accepted
    When from table "רשימת עצים" at row "2" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    When pick "בריאות העצים" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
    When from table "רשימת עצים" remove "1" rows
    Then validate if "מספר העצים" value is "1"

    When from table "רשימת עצים" add "1" rows
    Then validate if "מספר העצים" value is "2"
    When from table "רשימת עצים" remove "1" rows
    Then validate if "מספר העצים" value is "1"

    Then from table "רשימת עצים" at row "1" validate the drop "סוג העץ" is default
    Then from table "רשימת עצים" at row "1" validate the file "תמונה של העץ" is default

    When upload "gif_to_upload.gif" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "gif_to_upload.gif" file is in "אישור לבית משותף" files list
    When delete file by name "gif_to_upload.gif" in "אישור לבית משותף"


    When upload "png_to_upload.png" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "png_to_upload.png" file is in "אישור לבית משותף" files list
    When delete file by name "png_to_upload.png" in "אישור לבית משותף"


    When upload "jpg_pic_to_upload.jpg" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אישור לבית משותף" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אישור לבית משותף"


    When upload "bmp_to_upload.bmp" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "bmp_to_upload.bmp" file is in "אישור לבית משותף" files list
    When delete file by name "bmp_to_upload.bmp" in "אישור לבית משותף"


    When upload "pdf_file_to_upload.pdf" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אישור לבית משותף" files list
    When delete file by name "pdf_file_to_upload.pdf" in "אישור לבית משותף"


    When upload "jpeg_to_upload.jpeg" file in "אישור לבית משותף"
    Then validate "אישור לבית משותף" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "אישור לבית משותף" files list
    When delete file by name "jpeg_to_upload.jpeg" in "אישור לבית משותף"



    When upload "gif_to_upload.gif" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "gif_to_upload.gif" file is in "אחר" files list
    When delete file by name "gif_to_upload.gif" in "אחר"


    When upload "png_to_upload.png" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "png_to_upload.png" file is in "אחר" files list
    When delete file by name "png_to_upload.png" in "אחר"


    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"


    When upload "bmp_to_upload.bmp" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "bmp_to_upload.bmp" file is in "אחר" files list
    When delete file by name "bmp_to_upload.bmp" in "אחר"


    When upload "pdf_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אחר" files list
    When delete file by name "pdf_file_to_upload.pdf" in "אחר"


    When upload "jpeg_to_upload.jpeg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "אחר" files list
    When delete file by name "jpeg_to_upload.jpeg" in "אחר"


#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך" button
    When clear fields


  Scenario: TC_TREECUT_08 - Entering incorrect values for the "Details of the applicant" fields
    When search invalid value and pick "א DSDנחיל" in search field "רחוב"
    When write a valid number "54dew33ew3" in "מספר בית"
    Then validate if "מספר בית" value is "54333"
    When write an invalid value "1cdc223" in "גוש"
    Then validate "גוש" error is "יש להזין ספרות בלבד"
    When write an invalid value "8ce75ecec" in "חלקה"
    Then validate "חלקה" error is "יש להזין ספרות בלבד"

    When from table "רשימת עצים" at row "1" search invalid value and pick "בוקיצsuhaibה" in "סוג העץ"

    When from table "רשימת עצים" at row "1" upload an invalid file "doc_to_upload.doc" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload an invalid file "10MB_file_to_upload.pdf" in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload an invalid file "xlsx_to_upload.xlsx" in "תמונה של העץ"
    When upload "10MB_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "אחר" files list
    Then validate "אחר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When clear fields
