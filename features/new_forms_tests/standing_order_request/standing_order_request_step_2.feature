Feature: StandingOrderRequest - scenarios step 2

  - Form name: בקשה להצטרפות להסדר הוראת קבע ארנונה/ חינוך
  - Feature file name: standing_order_request
  - Form link: https://jeronlineforms.jerusalem.muni.il/StandingOrderRequest
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "StandingOrderRequest" form and reach step "פרטי תשלום"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_STANDINGORDEREQ_04 - Checking "personal details" fields with correct details
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When pick "אגרת חינוך - ביטוח תלמידים (24059)" from "קוד מוטב להקמת ההרשאה"
    When search valid value and pick "9 - בנק הדואר" in search field "בנק"
    When search valid value and pick "1-סניף ראשי" in search field "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "1" from "יום גביה חודשי"
    When pick "10" from "יום גביה חודשי"

    And Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    And Upload a valid "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then validate name of file "1" is "gif_to_upload.gif" in "צילום תעודת זהות + ספח"
    And validate size of file "1" in "צילום תעודת זהות + ספח" in accepted
    And validate name of file "2" is "png_to_upload.png" in "צילום תעודת זהות + ספח"
    And validate size of file "2" in "צילום תעודת זהות + ספח" in accepted
    And validate name of file "3" is "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"
    And validate size of file "3" in "צילום תעודת זהות + ספח" in accepted
    When delete file by index "1" in "צילום תעודת זהות + ספח"
    And delete file by index "1" in "צילום תעודת זהות + ספח"
    And delete file by index "1" in "צילום תעודת זהות + ספח"
    And Upload a valid "pdf_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    And Upload a valid "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    And Upload a valid "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate name of file "1" is "pdf_file_to_upload.pdf" in "צילום תעודת זהות + ספח"
    And validate size of file "1" in "צילום תעודת זהות + ספח" in accepted
    And validate name of file "2" is "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"
    And validate size of file "2" in "צילום תעודת זהות + ספח" in accepted
    And validate name of file "3" is "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"
    And validate size of file "3" in "צילום תעודת זהות + ספח" in accepted
    When delete file by index "1" in "צילום תעודת זהות + ספח"
    And delete file by index "1" in "צילום תעודת זהות + ספח"
    And delete file by index "1" in "צילום תעודת זהות + ספח"
    And Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"

    And Upload a valid "gif_to_upload.gif" file in "אישור הרשאה לחיוב חשבון"
    And Upload a valid "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    And Upload a valid "jpg_pic_to_upload.jpg" file in "אישור הרשאה לחיוב חשבון"
    Then validate name of file "1" is "gif_to_upload.gif" in "אישור הרשאה לחיוב חשבון"
    And validate size of file "1" in "אישור הרשאה לחיוב חשבון" in accepted
    And validate name of file "2" is "png_to_upload.png" in "אישור הרשאה לחיוב חשבון"
    And validate size of file "2" in "אישור הרשאה לחיוב חשבון" in accepted
    And validate name of file "3" is "jpg_pic_to_upload.jpg" in "אישור הרשאה לחיוב חשבון"
    And validate size of file "3" in "אישור הרשאה לחיוב חשבון" in accepted
    When delete file by index "1" in "אישור הרשאה לחיוב חשבון"
    And delete file by index "1" in "אישור הרשאה לחיוב חשבון"
    And delete file by index "1" in "אישור הרשאה לחיוב חשבון"
    And Upload a valid "pdf_file_to_upload.pdf" file in "אישור הרשאה לחיוב חשבון"
    And Upload a valid "jpeg_to_upload.jpeg" file in "אישור הרשאה לחיוב חשבון"
    And Upload a valid "bmp_to_upload.bmp" file in "אישור הרשאה לחיוב חשבון"
    Then validate name of file "1" is "pdf_file_to_upload.pdf" in "אישור הרשאה לחיוב חשבון"
    And validate size of file "1" in "אישור הרשאה לחיוב חשבון" in accepted
    And validate name of file "2" is "jpeg_to_upload.jpeg" in "אישור הרשאה לחיוב חשבון"
    And validate size of file "2" in "אישור הרשאה לחיוב חשבון" in accepted
    And validate name of file "3" is "bmp_to_upload.bmp" in "אישור הרשאה לחיוב חשבון"
    And validate size of file "3" in "אישור הרשאה לחיוב חשבון" in accepted
    When delete file by index "1" in "אישור הרשאה לחיוב חשבון"
    And delete file by index "1" in "אישור הרשאה לחיוב חשבון"
    And delete file by index "1" in "אישור הרשאה לחיוב חשבון"
    And Upload a valid "gif_to_upload.gif" file in "אישור הרשאה לחיוב חשבון"

    And Upload a valid "gif_to_upload.gif" file in "אחר"
    And Upload a valid "png_to_upload.png" file in "אחר"
    And Upload a valid "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate name of file "1" is "gif_to_upload.gif" in "אחר"
    And validate size of file "1" in "אחר" in accepted
    And validate name of file "2" is "png_to_upload.png" in "אחר"
    And validate size of file "2" in "אחר" in accepted
    And validate name of file "3" is "jpg_pic_to_upload.jpg" in "אחר"
    And validate size of file "3" in "אחר" in accepted
    When delete file by index "1" in "אחר"
    And delete file by index "1" in "אחר"
    And delete file by index "1" in "אחר"
    And Upload a valid "pdf_file_to_upload.pdf" file in "אחר"
    And Upload a valid "jpeg_to_upload.jpeg" file in "אחר"
    And Upload a valid "bmp_to_upload.bmp" file in "אחר"
    Then validate name of file "1" is "pdf_file_to_upload.pdf" in "אחר"
    And validate size of file "1" in "אחר" in accepted
    And validate name of file "2" is "jpeg_to_upload.jpeg" in "אחר"
    And validate size of file "2" in "אחר" in accepted
    And validate name of file "3" is "bmp_to_upload.bmp" in "אחר"
    And validate size of file "3" in "אחר" in accepted
    When delete file by index "1" in "אחר"
    And delete file by index "1" in "אחר"
    And delete file by index "1" in "אחר"
    And Upload a valid "gif_to_upload.gif" file in "אחר"
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

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_STANDINGORDEREQ_05 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When search valid value and pick "9 - בנק הדואר" in search field "בנק"
    When search valid value and pick "1-סניף ראשי" in search field "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "1" from "יום גביה חודשי"
    When pick "10" from "יום גביה חודשי"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_STANDINGORDEREQ_06 - Checking "personal details" fields with incorrect details
    When write an invalid value "21reser1121" in "חשבון / נכס"
    Then check if "חשבון / נכס" error is "יש להזין ספרות בלבד"
    When write an invalid value "234" in "חשבון / נכס"
    Then check if "חשבון / נכס" error is "יש להשלים ספרות חסרות"
    When write an invalid value "ש77626" in "כתובת נכס"
    Then check if "כתובת נכס" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write a valid number "1273gg783" in "בית"
    Then validate if "בית" value is "12737"
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When search invalid value and pick "9 - בנק הדuewואר" in search field "בנק"
    When search invalid value and pick "1-סניף eweראשי" in search field "סניף"
    When write a valid number "asdas1233" in "מספר חשבון"
    Then validate if "מספר חשבון" value is "1233"
    When pick an invalid "140" from "יום גביה חודשי"
    When Upload an invalid "xlsx_to_upload.xlsx" file in "צילום תעודת זהות + ספח"
    Then check if "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "xlsx_to_upload.xlsx" file in "אישור הרשאה לחיוב חשבון"
    Then check if "אישור הרשאה לחיוב חשבון" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "xlsx_to_upload.xlsx" file in "אחר"
    Then check if "אחר" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When clear fields





