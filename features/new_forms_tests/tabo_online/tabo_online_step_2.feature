Feature: TaboOnline form - scenarios step 2

  - Form name: בקשה לקבלת אישור להעדר חובות
  - Feature file name: tabo_online_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TableOnline
  - Number of Pages is : 5, We are at step: 2
  - All fields are mandatory

  Background:
    Given  Navigate to "TaboOnline" form and reach step "פרטי הבקשה"

  Scenario: TABONLINE_02 הזנת ערכים תקינים "פרטי הבקשה" העברת זכויות, למיגורים, מגיש הבקשה הוא המעביר
    When choose "העברת זכויות" from "סוג הבקשה"
    When pick a valid "טאבו" from "מנהל הרישום"
    When pick a valid "למגורים" from "סוג הנכס"
    When pick a valid "בעלות" from "סוג הזכות"
    When pick a valid "מכירה או חכירה" from "סוג הפעולה המבוקשת"
    When write a valid number "11122022" in "תאריך מסירת חזקה לקונה"
    When choose "מעביר" from "מגיש הבקשה הוא"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "319078861" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

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


  Scenario: TABONLINE_03 הזנת ערכים תקינים "פרטי הבקשה" העברת זכויות, לא למיגורים, מגיש הבקשה הוא המקבל
    When choose "העברת זכויות" from "סוג הבקשה"
    When pick a valid "מנהל מקרקעי ישראל (רמ"י)" from "מנהל הרישום"
    When pick a valid "לא למגורים" from "סוג הנכס"
    When pick a valid "חכירה" from "סוג הזכות"
    When pick a valid "רישום בית משותף" from "סוג הפעולה המבוקשת"
    When write a valid number "11122022" in "תאריך מסירת חזקה לקונה"
    When choose "מקבל" from "מגיש הבקשה הוא"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "319078861" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

     When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list

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


    Scenario: TABONLINE_04 הזנת ערכים תקינים "פרטי הבקשה" העברת זכויות, קרקע, מגיש הבקשה הוא אחר
    When choose "העברת זכויות" from "סוג הבקשה"
    When pick a valid "חברה משכנת" from "מנהל הרישום"
    When pick a valid "קרקע" from "סוג הנכס"
    When pick a valid "בעלות" from "סוג הזכות"
    When pick a valid "רישום בית משותף" from "סוג הפעולה המבוקשת"
    When choose "אחר" from "מגיש הבקשה הוא"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "319078861" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

     When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "319078820" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

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


  Scenario: TABONLINE_05 הזנת ערכים תקינים "פרטי הבקשה" העברת זכויות, הוספת מעביר2 ומקבל2
    When choose "העברת זכויות" from "סוג הבקשה"
    When pick a valid "טאבו" from "מנהל הרישום"
    When pick a valid "למגורים" from "סוג הנכס"
    When pick a valid "בעלות" from "סוג הזכות"
    When pick a valid "העברה ללא תמורה" from "סוג הפעולה המבוקשת"
    When write a valid number "11122022" in "תאריך מסירת חזקה לקונה"
    When choose "מעביר" from "מגיש הבקשה הוא"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "1" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" add "1" rows

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" write a valid value "319380861" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מעביר" at row "2" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מעביר" at row "2" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מעביר" at row "2" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list


    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "319073847" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "1" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When from parent "פרטי הבקשה" at table "מקבל" add "1" rows

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" write a valid value "315061861" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מקבל" at row "2" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מקבל" at row "2" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מקבל" at row "2" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list

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

  Scenario: TABONLINE_06 הזנת ערכים תקינים "פרטי הבקשה" קבלת משכנתא, למיגורים, מגיש הבקשה הוא המבקש
    When choose "קבלת משכנתא" from "סוג הבקשה"
    When pick a valid "טאבו" from "מנהל הרישום"
    When pick a valid "למגורים" from "סוג הנכס"
    When pick a valid "בעלות" from "סוג הזכות"
    When choose "מבקש" from "מגיש הבקשה הוא"

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


  Scenario: TABONLINE_07 הזנת ערכים תקינים "פרטי הבקשה" קבלת משכנתא, לא למיגורים, מגיש הבקשה הוא אחר
    When choose "קבלת משכנתא" from "סוג הבקשה"
    When pick a valid "מנהל מקרקעי ישראל (רמ"י)" from "מנהל הרישום"
    When pick a valid "לא למגורים" from "סוג הנכס"
    When pick a valid "חכירה" from "סוג הזכות"
    When choose "אחר" from "מגיש הבקשה הוא"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" write a valid value "319078820" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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


  Scenario: TABONLINE_08 הזנת ערכים תקינים "פרטי הבקשה" קבלת משכנתא, קרקע, הוספת מבקש2
    When choose "קבלת משכנתא" from "סוג הבקשה"
    When pick a valid "חברה משכנת" from "מנהל הרישום"
    When pick a valid "קרקע" from "סוג הנכס"
    When pick a valid "בעלות" from "סוג הזכות"
    When choose "מבקש" from "מגיש הבקשה הוא"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "1" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מבקש" at row "1" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "1" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מבקש" add "1" rows

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" write a valid value "סוהייב" in "שם פרטי"
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" write a valid value "אבו גנאם" in "שם משפחה"
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" pick a valid value "ת.ז." from "סוג זיהוי"
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" write a valid value "319380861" in "מספר ת.ז."
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" fill a valid number "058-8078687" in "טלפון נייד"
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" fill a valid number "02-8078687" in "טלפון קווי"
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "pdf_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list
    When from parent "פרטי הבקשה" at table "מבקש" at row "2" delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list

    When from parent "פרטי הבקשה" at table "מבקש" at row "2" upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "צילום תעודת זהות + ספח" field is valid
    Then from parent "פרטי הבקשה" at table "מבקש" at row "2" validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list

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