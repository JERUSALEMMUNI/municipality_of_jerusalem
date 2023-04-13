Feature: HoldersExchange form step 3

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, we are in step 3
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "HoldersExchange" form and reach step "פרטי מחזיק נוכחי"

  Scenario Outline: TC_HOLDERSEXCH_06 הזנת ערכים תקינים בשדות "פרטי מחזיק נוכחי" בעל הנכס אינו המחזיק הנוכחי
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid number "12042023" in "תאריך עזיבה"
    When upload "<file_name>" file in "<widget_name>"
    Then validate "<widget_name>" field is valid
    Then validate "<file_name>" file is in "<widget_name>" files list
    When delete file by name "<file_name>" in "<widget_name>"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields
    Examples:
      | file_name               |  widget_name                         |
      | gif_to_upload.gif       |  צילום תעודת זהות + ספח של בעל החשבון  |
      | png_to_upload.png       |  צילום תעודת זהות + ספח של בעל החשבון  |
      | jpg_pic_to_upload.jpg   |  צילום תעודת זהות + ספח של בעל החשבון  |
      | pdf_file_to_upload.pdf  |  צילום תעודת זהות + ספח של בעל החשבון  |
      | jpeg_to_upload.jpeg     |  צילום תעודת זהות + ספח של בעל החשבון  |
      | bmp_to_upload.bmp       |  צילום תעודת זהות + ספח של בעל החשבון  |



  Scenario: TC_HOLDERSEXCH_07 הזנת ערכים תקינים בשדות "פרטי מחזיק נוכחי" בעל הנכס הוא המחזיק הנוכחי
    When choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid number "12042023" in "תאריך עזיבה"
    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate "צילום תעודת זהות + ספח של בעל החשבון" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח של בעל החשבון" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields



  Scenario: TC_HOLDERSEXCH_12 הזנת ערכים שגוים בשדות "פרטי מחזיק נוכחי"
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write an invalid value "dsdf" in "שם פרטי"
    Then validate "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "sdf" in "שם משפחה"
    Then validate "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    And write an invalid value "sdfsdf" in "מספר ת.ז."
    Then validate "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-שדגדש" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-sdfdsf" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-233" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-232" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill "02-שדגדש" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-sdfdsf" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להזין אותיות באנגלית בלבד"
    When write an invalid value "dfg@" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להשלים כתובת אימייל"
    When write an invalid number "12142023" in "תאריך עזיבה"
    Then validate "תאריך עזיבה" error is "שדה חובה"
    When upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate "צילום תעודת זהות + ספח של בעל החשבון" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "צילום תעודת זהות + ספח של בעל החשבון" files list
    Then validate "צילום תעודת זהות + ספח של בעל החשבון" error is "חובה לצרף קובץ"
    Then validate "צילום תעודת זהות + ספח של בעל החשבון" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    When clear fields



