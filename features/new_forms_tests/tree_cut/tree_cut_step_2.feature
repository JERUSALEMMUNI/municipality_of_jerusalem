Feature: TreeCut form - scenarios step 2

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "TreeCut" form and reach step "פרטי הבקשה"


  Scenario Outline: TC_TREECUT_02 הזנת ערכים תקינים לשדות "פרטי הבקשה" כאשר נבחר עץ 1 ובית לא משותף
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

    When from table "רשימת עצים" at row "1" search valid value and pick "הסלע" in "סוג העץ"

    When from table "רשימת עצים" at row "1" upload "gif_to_upload.gif" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "gif_to_upload.gif" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "gif_to_upload.gif" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "jpg_pic_to_upload.jpg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpg_pic_to_upload.jpg" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "png_to_upload.png" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "png_to_upload.png" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "png_to_upload.png" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "bmp_to_upload.bmp" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "bmp_to_upload.bmp" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "bmp_to_upload.bmp" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "pdf_file_to_upload.pdf" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "pdf_file_to_upload.pdf" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "pdf_file_to_upload.pdf" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "jpeg_to_upload.jpeg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpeg_to_upload.jpeg" file is in "תמונה של העץ" files list

    When pick "בטיחות" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"

    When upload "<file_name>" file in "<widget_name>"
    Then validate "<widget_name>" field is valid
    Then validate "<file_name>" file is in "<widget_name>" files list
    When delete file by name "<file_name>" in "<widget_name>"

    Examples:
      | file_name               |  widget_name |
      | gif_to_upload.gif       |  אחר |
      | png_to_upload.png       |  אחר |
      | jpg_pic_to_upload.jpg   |  אחר |
      | pdf_file_to_upload.pdf  |  אחר |
      | jpeg_to_upload.jpeg     |  אחר |
      | bmp_to_upload.bmp       |  אחר |

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

  Scenario Outline: TC_TREECUT_03 הזנת ערכים תקינים לשדות "פרטי הבקשה" כאשר נבחרו מספר עצים ובית לא משותף
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
    When from table "רשימת עצים" at row "1" upload "gif_to_upload.gif" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "gif_to_upload.gif" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "gif_to_upload.gif" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "jpg_pic_to_upload.jpg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpg_pic_to_upload.jpg" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "png_to_upload.png" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "png_to_upload.png" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "png_to_upload.png" in "תמונה של העץ"


    When from table "רשימת עצים" at row "1" upload "bmp_to_upload.bmp" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "bmp_to_upload.bmp" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "bmp_to_upload.bmp" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "pdf_file_to_upload.pdf" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "pdf_file_to_upload.pdf" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "pdf_file_to_upload.pdf" in "תמונה של העץ"


    When from table "רשימת עצים" at row "1" upload "jpeg_to_upload.jpeg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpeg_to_upload.jpeg" file is in "תמונה של העץ" files list

    Then validate if "מספר העצים" value is "1"
    When from table "רשימת עצים" add "1" rows


    When from table "רשימת עצים" at row "2" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" at row "2" upload "gif_to_upload.gif" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "gif_to_upload.gif" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "gif_to_upload.gif" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "jpg_pic_to_upload.jpg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "jpg_pic_to_upload.jpg" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "jpg_pic_to_upload.jpg" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "png_to_upload.png" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "png_to_upload.png" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "png_to_upload.png" in "תמונה של העץ"


    When from table "רשימת עצים" at row "2" upload "bmp_to_upload.bmp" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "bmp_to_upload.bmp" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "bmp_to_upload.bmp" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "pdf_file_to_upload.pdf" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "pdf_file_to_upload.pdf" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "pdf_file_to_upload.pdf" in "תמונה של העץ"


    When from table "רשימת עצים" at row "2" upload "jpeg_to_upload.jpeg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "jpeg_to_upload.jpeg" file is in "תמונה של העץ" files list

    Then validate if "מספר העצים" value is "2"
    When pick "סכנה" from "סיבת העקירה"
    When choose "לא" from "האם מדובר בבית משותף?"


    When upload "<file_name>" file in "<widget_name>"
    Then validate "<widget_name>" field is valid
    Then validate "<file_name>" file is in "<widget_name>" files list
    When delete file by name "<file_name>" in "<widget_name>"

    Examples:
      | file_name               |  widget_name |
      | gif_to_upload.gif       |  אחר |
      | png_to_upload.png       |  אחר |
      | jpg_pic_to_upload.jpg   |  אחר |
      | pdf_file_to_upload.pdf  |  אחר |
      | jpeg_to_upload.jpeg     |  אחר |
      | bmp_to_upload.bmp       |  אחר |
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


  Scenario Outline: TC_TREECUT_04 הזנת ערכים תקינים לשדות "פרטי הבקשה" כאשר נבחרו מספר עצים ובית משותף
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
    When from table "רשימת עצים" at row "1" upload "gif_to_upload.gif" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "gif_to_upload.gif" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "gif_to_upload.gif" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "jpg_pic_to_upload.jpg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpg_pic_to_upload.jpg" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "png_to_upload.png" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "png_to_upload.png" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "png_to_upload.png" in "תמונה של העץ"
    
    When from table "רשימת עצים" at row "1" upload "bmp_to_upload.bmp" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "bmp_to_upload.bmp" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "bmp_to_upload.bmp" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "pdf_file_to_upload.pdf" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "pdf_file_to_upload.pdf" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "pdf_file_to_upload.pdf" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "jpeg_to_upload.jpeg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpeg_to_upload.jpeg" file is in "תמונה של העץ" files list

    Then validate if "מספר העצים" value is "1"
    When from table "רשימת עצים" add "1" rows

    When from table "רשימת עצים" at row "2" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"

    When from table "רשימת עצים" at row "2" upload "gif_to_upload.gif" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "gif_to_upload.gif" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "gif_to_upload.gif" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "jpg_pic_to_upload.jpg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "jpg_pic_to_upload.jpg" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "jpg_pic_to_upload.jpg" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "png_to_upload.png" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "png_to_upload.png" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "png_to_upload.png" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "bmp_to_upload.bmp" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "bmp_to_upload.bmp" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "bmp_to_upload.bmp" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "pdf_file_to_upload.pdf" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "pdf_file_to_upload.pdf" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "pdf_file_to_upload.pdf" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "jpeg_to_upload.jpeg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "jpeg_to_upload.jpeg" file is in "תמונה של העץ" files list


    Then validate if "מספר העצים" value is "2"

    When pick "בריאות העצים" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"

    When upload "<file_name>" file in "<widget_name>"
    Then validate "<widget_name>" field is valid
    Then validate "<file_name>" file is in "<widget_name>" files list
    When delete file by name "<file_name>" in "<widget_name>"


    Examples:
      | file_name               |  widget_name |
      | gif_to_upload.gif       |  אישור לבית משותף |
      | png_to_upload.png       |  אישור לבית משותף |
      | jpg_pic_to_upload.jpg   |  אישור לבית משותף |
      | pdf_file_to_upload.pdf  |  אישור לבית משותף |
      | jpeg_to_upload.jpeg     |  אישור לבית משותף |
      | bmp_to_upload.bmp       |  אישור לבית משותף |
      | gif_to_upload.gif       |  אחר |
      | png_to_upload.png       |  אחר |
      | jpg_pic_to_upload.jpg   |  אחר |
      | pdf_file_to_upload.pdf  |  אחר |
      | jpeg_to_upload.jpeg     |  אחר |
      | bmp_to_upload.bmp       |  אחר |
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

  @suhaib
  Scenario Outline: TC_TREECUT_05 הזנת ערכים תקינים לשדות "פרטי הבקשה" הוספה ומחיקה מרשימת עצים
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
    When from table "רשימת עצים" at row "1" upload "gif_to_upload.gif" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "gif_to_upload.gif" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "gif_to_upload.gif" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "jpg_pic_to_upload.jpg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpg_pic_to_upload.jpg" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "png_to_upload.png" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "png_to_upload.png" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "png_to_upload.png" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "bmp_to_upload.bmp" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "bmp_to_upload.bmp" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "bmp_to_upload.bmp" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "pdf_file_to_upload.pdf" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "pdf_file_to_upload.pdf" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "1" delete file by name "pdf_file_to_upload.pdf" in "תמונה של העץ"

    When from table "רשימת עצים" at row "1" upload "jpeg_to_upload.jpeg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "1" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "1" validate "jpeg_to_upload.jpeg" file is in "תמונה של העץ" files list

    Then validate if "מספר העצים" value is "1"
    When from table "רשימת עצים" add "1" rows
    Then validate if "מספר העצים" value is "2"

    When from table "רשימת עצים" at row "2" search valid value and pick "בוקיצה נמוכה" in "סוג העץ"
    When from table "רשימת עצים" at row "2" upload "gif_to_upload.gif" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "gif_to_upload.gif" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "gif_to_upload.gif" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "jpg_pic_to_upload.jpg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "jpg_pic_to_upload.jpg" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "jpg_pic_to_upload.jpg" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "png_to_upload.png" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "png_to_upload.png" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "png_to_upload.png" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "bmp_to_upload.bmp" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "bmp_to_upload.bmp" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "bmp_to_upload.bmp" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "pdf_file_to_upload.pdf" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "pdf_file_to_upload.pdf" file is in "תמונה של העץ" files list
    When from table "רשימת עצים" at row "2" delete file by name "pdf_file_to_upload.pdf" in "תמונה של העץ"

    When from table "רשימת עצים" at row "2" upload "jpeg_to_upload.jpeg" file in "תמונה של העץ"
    Then from table "רשימת עצים" at row "2" validate "תמונה של העץ" field is valid
    Then from table "רשימת עצים" at row "2" validate "jpeg_to_upload.jpeg" file is in "תמונה של העץ" files list

    When pick "בריאות העצים" from "סיבת העקירה"
    When choose "כן" from "האם מדובר בבית משותף?"
    When from table "רשימת עצים" remove "1" rows
    Then validate if "מספר העצים" value is "1"

    When from table "רשימת עצים" add "1" rows
    Then validate if "מספר העצים" value is "2"
    When from table "רשימת עצים" remove "1" rows
    Then validate if "מספר העצים" value is "1"

    Then from table "רשימת עצים" at row "1" validate the file "תמונה של העץ" is default
    Then from table "רשימת עצים" at row "1" validate the drop "סוג העץ" is default

    When upload "<file_name>" file in "<widget_name>"
    Then validate "<widget_name>" field is valid
    Then validate "<file_name>" file is in "<widget_name>" files list
    When delete file by name "<file_name>" in "<widget_name>"

    Examples:
      | file_name               |  widget_name |
      | gif_to_upload.gif       |  אישור לבית משותף |
      | png_to_upload.png       |  אישור לבית משותף |
      | jpg_pic_to_upload.jpg   |  אישור לבית משותף |
      | pdf_file_to_upload.pdf  |  אישור לבית משותף |
      | jpeg_to_upload.jpeg     |  אישור לבית משותף |
      | bmp_to_upload.bmp       |  אישור לבית משותף |
      | gif_to_upload.gif       |  אחר |
      | png_to_upload.png       |  אחר |
      | jpg_pic_to_upload.jpg   |  אחר |
      | pdf_file_to_upload.pdf  |  אחר |
      | jpeg_to_upload.jpeg     |  אחר |
      | bmp_to_upload.bmp       |  אחר |


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

  Scenario: TC_TREECUT_08 "הזנת ערכים שגויים לשדות "פרטי הבקשה
    When search invalid value and pick "א DSDנחיל" in search field "רחוב"
    When write a number "54dew33ew3" in "מספר בית"
    Then validate if "מספר בית" value is "54333"
    When write an invalid value "1cdc223" in "גוש"
    Then validate "גוש" error is "יש להזין ספרות בלבד"
    When write an invalid value "8ce75ecec" in "חלקה"
    Then validate "חלקה" error is "יש להזין ספרות בלבד"

    When from table "רשימת עצים" at row "1" search invalid value and pick "בוקיצsuhaibה" in "סוג העץ"

    When from table "רשימת עצים" at row "1" upload "doc_to_upload.doc" file in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload "10MB_file_to_upload.pdf" file in "תמונה של העץ"
    When from table "רשימת עצים" at row "1" upload "xlsx_to_upload.xlsx" file in "תמונה של העץ"
    When upload "10MB_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "אחר" files list
    Then validate "אחר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

#    When clear fields
