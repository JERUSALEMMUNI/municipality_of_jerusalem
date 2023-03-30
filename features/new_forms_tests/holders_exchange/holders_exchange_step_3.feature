Feature: HoldersExchange form step 3

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, we are in step 3
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "HoldersExchange" form and reach step "פרטי מחזיק נוכחי"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_06 הזנת ערכים תקינים בשדות "פרטי מחזיק נוכחי" בעל הנכס אינו המחזיק הנוכחי
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate name of file "1" is "gif_to_upload.gif" in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate size of file "1" in "צילום תעודת זהות + ספח של בעל החשבון" in accepted
    Then validate name of file "2" is "png_to_upload.png" in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate size of file "2" in "צילום תעודת זהות + ספח של בעל החשבון" in accepted
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate size of file "3" in "צילום תעודת זהות + ספח של בעל החשבון" in accepted
    When delete file "1" in "צילום תעודת זהות + ספח של בעל החשבון"
    And delete file "1" in "צילום תעודת זהות + ספח של בעל החשבון"
    And delete file "1" in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "pdf_file_to_upload.pdf" file in "צילום תעודת זהות + ספח של בעל החשבון"

    And Upload a valid "pdf_file_to_upload.pdf" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload a valid "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate name of file "1" is "pdf_file_to_upload.pdf" in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate size of file "1" in "צילום תעודת זהות + ספח של בעל החשבון" in accepted
    Then validate name of file "2" is "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate size of file "2" in "צילום תעודת זהות + ספח של בעל החשבון" in accepted
    Then validate name of file "3" is "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח של בעל החשבון"
    Then validate size of file "3" in "צילום תעודת זהות + ספח של בעל החשבון" in accepted
    When delete file "1" in "צילום תעודת זהות + ספח של בעל החשבון"
    And delete file "1" in "צילום תעודת זהות + ספח של בעל החשבון"
    And delete file "1" in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של בעל החשבון"
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


  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_07 הזנת ערכים תקינים בשדות "פרטי מחזיק נוכחי" בעל הנכס הוא המחזיק הנוכחי
    When choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid number "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
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


  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_12 הזנת ערכים שגוים בשדות "פרטי מחזיק נוכחי"
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write an invalid value "dsdf" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "sdf" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    And write an invalid value "sdfsdf" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-שדגדש" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-sdfdsf" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-233" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-232" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill "02-שדגדש" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-sdfdsf" as invalid value in "טלפון קווי"
    When write an invalid value "sdfsdf" in "דוא"ל"
    #todo: email message
    Then check if "דוא"ל" error is "שדה לא תקין"
    When write an invalid number "12142023" in "תאריך עזיבה"
    #todo: after typing an invalid date, it will be deleted and get error message שדה חובה instead of "תאריך לא תקין"
    Then check if "תאריך עזיבה" error is "שדה חובה"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח של בעל החשבון"
    Then check if "צילום תעודת זהות + ספח של בעל החשבון" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    When clear fields



