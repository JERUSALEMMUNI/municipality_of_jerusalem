@darweesh
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

    When upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות + ספח" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות + ספח"

    When upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list
    When delete file by name "png_to_upload.png" in "צילום תעודת זהות + ספח"

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When delete file by name "gif_to_upload.gif" in "צילום תעודת זהות + ספח"

    When upload "pdf_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "צילום תעודת זהות + ספח" files list
    When delete file by name "pdf_file_to_upload.pdf" in "צילום תעודת זהות + ספח"

    When upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות + ספח" files list
    When delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות + ספח"

    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"

    When upload "png_to_upload.png" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "png_to_upload.png" file is in "אחר" files list
    When delete file by name "png_to_upload.png" in "אחר"

    When upload "gif_to_upload.gif" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "gif_to_upload.gif" file is in "אחר" files list
    When delete file by name "gif_to_upload.gif" in "אחר"

    When upload "pdf_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אחר" files list
    When delete file by name "pdf_file_to_upload.pdf" in "אחר"

    When upload "jpeg_to_upload.jpeg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "אחר" files list
    When delete file by name "jpeg_to_upload.jpeg" in "אחר"

    When upload "bmp_to_upload.bmp" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "bmp_to_upload.bmp" file is in "אחר" files list

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

    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"

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

    When upload "png_to_upload.png" file in "תעודת התאגדות"
    Then validate "תעודת התאגדות" field is valid
    Then validate "png_to_upload.png" file is in "תעודת התאגדות" files list

    When upload "png_to_upload.png" file in "ייפוי כוח לקבלת מידע בשם התאגיד"
    Then validate "ייפוי כוח לקבלת מידע בשם התאגיד" field is valid
    Then validate "png_to_upload.png" file is in "ייפוי כוח לקבלת מידע בשם התאגיד" files list

    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"


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

    When upload "png_to_upload.png" file in "תעודת זהות מיופה כוח"
    Then validate "תעודת זהות מיופה כוח" field is valid
    Then validate "png_to_upload.png" file is in "תעודת זהות מיופה כוח" files list

    When upload "png_to_upload.png" file in "ייפוי כוח"
    Then validate "ייפוי כוח" field is valid
    Then validate "png_to_upload.png" file is in "ייפוי כוח" files list

    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"

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

    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"

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

    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות + ספח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"

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

    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בעל תפקיד בתאגיד" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"

    When upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When upload "png_to_upload.png" file in "תעודת זהות מיופה כוח"
    Then validate "תעודת זהות מיופה כוח" field is valid
    Then validate "png_to_upload.png" file is in "תעודת זהות מיופה כוח" files list

    When upload "png_to_upload.png" file in "ייפוי כוח"
    Then validate "ייפוי כוח" field is valid
    Then validate "png_to_upload.png" file is in "ייפוי כוח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"

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

    When upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "png_to_upload.png" file is in "צילום תעודת זהות + ספח" files list

    When upload "png_to_upload.png" file in "תעודת זהות מיופה כוח"
    Then validate "תעודת זהות מיופה כוח" field is valid
    Then validate "png_to_upload.png" file is in "תעודת זהות מיופה כוח" files list

    When upload "jpg_pic_to_upload.jpg" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "אחר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "אחר"


    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_EMAILREG_12 תצהיר ושליחה עם ערכים שגויים
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"

    When upload "zip_to_upload.zip" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "צילום תעודת זהות + ספח" error is "חובה לצרף קובץ"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"

    When upload "10MB_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "אחר" files list
    Then validate "אחר" error is "חובה לצרף קובץ"
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
    #its appears as valid here

    When upload "zip_to_upload.zip" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "צילום תעודת זהות + ספח" error is "חובה לצרף קובץ"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"


    When upload "zip_to_upload.zip" file in "תעודת התאגדות"
    Then validate "תעודת התאגדות" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "תעודת התאגדות" error is "חובה לצרף קובץ"
    Then validate "תעודת התאגדות" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"

    When upload "10MB_file_to_upload.pdf" file in "ייפוי כוח לקבלת מידע בשם התאגיד"
    Then validate "אחר" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "ייפוי כוח לקבלת מידע בשם התאגיד" files list
    Then validate "ייפוי כוח לקבלת מידע בשם התאגיד" error is "חובה לצרף קובץ"
    Then validate "ייפוי כוח לקבלת מידע בשם התאגיד" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When upload "zip_to_upload.zip" file in "אחר"
    Then validate "אחר" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "אחר" error is "חובה לצרף קובץ"
    Then validate "אחר" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"

    #-------------------------------------------------------------------------------------------------------------------
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בעל תפקיד בתאגיד" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים?"

    When upload "zip_to_upload.zip" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "צילום תעודת זהות + ספח" error is "חובה לצרף קובץ"
    Then validate "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"

    When upload "zip_to_upload.zip" file in "תעודת זהות מיופה כוח"
    Then validate "תעודת זהות מיופה כוח" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "תעודת זהות מיופה כוח" error is "חובה לצרף קובץ"
    Then validate "תעודת זהות מיופה כוח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"


    When upload "zip_to_upload.zip" file in "ייפוי כוח"
    Then validate "ייפוי כוח" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "ייפוי כוח" error is "חובה לצרף קובץ"
    Then validate "ייפוי כוח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"

    When upload "zip_to_upload.zip" file in "אחר"
    Then validate "אחר" field is invalid
    Then validate "zip_to_upload.zip" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "אחר" error is "חובה לצרף קובץ"
    Then validate "אחר" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"

    When clear fields



