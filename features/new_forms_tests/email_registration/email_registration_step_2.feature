Feature: EmailRegistration form - scenarios step 2

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: email_registration.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/EmailRegistration
  - Number of Pages is : 2, We are at step: 2
  - All fields are mandatory expect of (טלפון קווי)


  Background: Background Scenario
    Given Navigate to "EmailRegistration" form and reach step "תצהיר ושליחה"



  Scenario: TC_EMAILREG_03 תצהיר ושליחה כאשר בעל חשבון זהה למגיש הבקשה ולא דירת שותפים
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"

    And Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    And Upload a valid "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then validate name of file "1" is "gif_to_upload.gif" in "צילום תעודת זהות + ספח"
    Then validate size of file "1" in "צילום תעודת זהות + ספח" in accepted
    Then validate name of file "2" is "png_to_upload.png" in "צילום תעודת זהות + ספח"
    Then validate size of file "2" in "צילום תעודת זהות + ספח" in accepted
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"
    Then validate size of file "3" in "צילום תעודת זהות + ספח" in accepted
    When delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"
    And delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"
    And delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"
    And Upload a valid "pdf_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    And Upload a valid "pdf_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    When Upload a valid "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    And Upload a valid "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate name of file "1" is "pdf_file_to_upload.pdf" in "צילום תעודת זהות + ספח"
    Then validate size of file "1" in "צילום תעודת זהות + ספח" in accepted
    Then validate name of file "2" is "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"
    Then validate size of file "2" in "צילום תעודת זהות + ספח" in accepted
    Then validate name of file "3" is "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"
    Then validate size of file "3" in "צילום תעודת זהות + ספח" in accepted
    When delete file by name "pdf_file_to_upload.pdf" in "צילום תעודת זהות + ספח"
    And delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"
    And delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות + ספח"
    And Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    And Upload a valid "gif_to_upload.gif" file in "אחר"
    When Upload a valid "png_to_upload.png" file in "אחר"
    And Upload a valid "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate name of file "1" is "gif_to_upload.gif" in "אחר"
    Then validate size of file "1" in "אחר" in accepted
    Then validate name of file "2" is "png_to_upload.png" in "אחר"
    Then validate size of file "2" in "אחר" in accepted
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "אחר"
    Then validate size of file "3" in "אחר" in accepted
    When delete file by name "gif_to_upload.gif" in "אחר"
    And delete file by name "png_to_upload.png" in "אחר"
    And delete file by name "jpg_pic_to_upload.jpg" in "אחר"
    And Upload a valid "pdf_file_to_upload.pdf" file in "אחר"
    And Upload a valid "pdf_file_to_upload.pdf" file in "אחר"
    When Upload a valid "jpeg_to_upload.jpeg" file in "אחר"
    And Upload a valid "bmp_to_upload.bmp" file in "אחר"
    Then validate name of file "1" is "pdf_file_to_upload.pdf" in "אחר"
    Then validate size of file "1" in "אחר" in accepted
    Then validate name of file "2" is "jpeg_to_upload.jpeg" in "אחר"
    Then validate size of file "2" in "אחר" in accepted
    Then validate name of file "3" is "bmp_to_upload.bmp" in "אחר"
    Then validate size of file "3" in "אחר" in accepted
    When delete file by name "pdf_file_to_upload.pdf" in "אחר"
    And delete file by name "jpeg_to_upload.jpeg" in "אחר"
    And delete file by name "bmp_to_upload.bmp" in "אחר"
    And Upload a valid "gif_to_upload.gif" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_04 תצהיר ושליחה כאשר מגיש הבקשה בן/בת זוג של בעל החשבון ולא דירת שותפים
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בן/בת זוג של בעל החשבון" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_05 תצהיר ושליחה כאשר מגיש הבקשה מיופה כח ולא דירת שותפים
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "מיופה כח" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "תעודת התאגדות"
    When Upload a valid "png_to_upload.png" file in "ייפוי כוח לקבלת מידע בשם התאגיד"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_06 תצהיר ושליחה כאשר מגיש הבקשה בעל תפקיד בתאגיד ולא דירת שותפים
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בעל תפקיד בתאגיד" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "תעודת זהות מיופה כוח"
    When Upload a valid "png_to_upload.png" file in "ייפוי כוח"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_07 תצהיר ושליחה כאשר בעל חשבון זהה למגיש הבקשה ודירת שותפים
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "כן" from "האם דירת שותפים?"
    When write a valid value "3422344233" in "חשבון ארנונה"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_08 תצהיר ושליחה כאשר מגיש הבקשה בן/בת זוג של בעל החשבון ודירת שותפים
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בן/בת זוג של בעל החשבון" from "מגיש הבקשה"
    When choose "כן" from "האם דירת שותפים?"
    When write a valid value "3422344233" in "חשבון ארנונה"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_09 תצהיר ושליחה כאשר מגיש הבקשה מיופה כח ודירת שותפים
#    When "email" Authentication using email address "@TEMP_EMAIL_ADDRESS"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "מיופה כח" from "מגיש הבקשה"
    When choose "כן" from "האם דירת שותפים?"
    When write a valid value "3422344233" in "חשבון ארנונה"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "ייפוי כוח לקבלת מידע בשם התאגיד"
    When Upload a valid "png_to_upload.png" file in "ייפוי כוח"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_10 תצהיר ושליחה כאשר מגיש הבקשה בעל תפקיד בתאגיד ודירת שותפים
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בעל תפקיד בתאגיד" from "מגיש הבקשה"
    When choose "כן" from "האם דירת שותפים?"
    When write a valid value "3422344233" in "חשבון ארנונה"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "תעודת זהות מיופה כוח"
#    When Upload a valid "png_to_upload.png" file in "ייפוי כח לקבלת מידע בשם התאגיד" (*** broken ***)
    When Upload a valid "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_12 תצהיר ושליחה עם ערכים שגויים
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"
    When Upload an invalid "zip_to_upload.zip" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    #-------------------------------------------------------------------------------------------------------------------
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "כן" from "האם דירת שותפים?"
    When write an invalid value "567895" in "חשבון ארנונה"
    Then validate "חשבון ארנונה" error is "יש להשלים את מספר חשבון ארנונה"
    #-------------------------------------------------------------------------------------------------------------------
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "כן" from "האם דירת שותפים?"
    When write an invalid value "שגדDCSגשגד" in "חשבון ארנונה"
    Then validate "חשבון ארנונה" error is "יש להזין ספרות בלבד"
    #-------------------------------------------------------------------------------------------------------------------
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "מיופה כח" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"
    #todo its appears as valid here
    When Upload an invalid "zip_to_upload.zip" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "zip_to_upload.zip" file in "תעודת התאגדות"
    Then validate "תעודת התאגדות" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "ייפוי כוח לקבלת מידע בשם התאגיד"
    Then validate "ייפוי כוח לקבלת מידע בשם התאגיד" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    When Upload an invalid "zip_to_upload.zip" file in "אחר"
    Then validate "אחר" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    #-------------------------------------------------------------------------------------------------------------------
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בעל תפקיד בתאגיד" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"
    When Upload an invalid "zip_to_upload.zip" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"

    When Upload an invalid "zip_to_upload.zip" file in "תעודת זהות מיופה כוח"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "zip_to_upload.zip" file in "ייפוי כוח"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "zip_to_upload.zip" file in "אחר"
    Then validate "אחר" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When clear fields



