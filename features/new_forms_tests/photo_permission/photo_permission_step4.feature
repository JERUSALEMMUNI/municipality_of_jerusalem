Feature: PhotoPermission form - scenarios step 4

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: photo_permission_step4.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 4
  - All fields are mandatory expect of (העתק ביטוח צד ג')


  Background: Background Scenario
    Given Navigate to "PhotoPermission" form and reach step "צרופות"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PHOTOPERMIT_05 הזנת ערכים תקינים לשדות "צרופות"
    When Upload a valid "png_to_upload.png" file in "צילום ת.ז. / דרכון"
    Then validate name of file "1" is "png_to_upload.png" in "צילום ת.ז. / דרכון"
    Then validate size of file "1" in "צילום ת.ז. / דרכון" in accepted
    When delete file "1" in "צילום ת.ז. / דרכון"

    When Upload a valid "gif_to_upload.gif" file in "צילום ת.ז. / דרכון"
    Then validate name of file "1" is "gif_to_upload.gif" in "צילום ת.ז. / דרכון"
    Then validate size of file "1" in "צילום ת.ז. / דרכון" in accepted
    When delete file "1" in "צילום ת.ז. / דרכון"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "צילום ת.ז. / דרכון"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "צילום ת.ז. / דרכון"
    Then validate size of file "1" in "צילום ת.ז. / דרכון" in accepted
    When delete file "1" in "צילום ת.ז. / דרכון"

    When Upload a valid "pdf_to_upload.pdf" file in "צילום ת.ז. / דרכון"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "צילום ת.ז. / דרכון"
    Then validate size of file "1" in "צילום ת.ז. / דרכון" in accepted
    When delete file "1" in "צילום ת.ז. / דרכון"

    When Upload a valid "jpeg_to_upload.jpeg" file in "צילום ת.ז. / דרכון"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "צילום ת.ז. / דרכון"
    Then validate size of file "1" in "צילום ת.ז. / דרכון" in accepted
    When delete file "1" in "צילום ת.ז. / דרכון"

    When Upload a valid "bmp_to_upload.bmp" file in "צילום ת.ז. / דרכון"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "צילום ת.ז. / דרכון"
    Then validate size of file "1" in "צילום ת.ז. / דרכון" in accepted
    When delete file "1" in "צילום ת.ז. / דרכון"

    When Upload a valid "png_to_upload.png" file in "צילום ת.ז. / דרכון"
    Then validate name of file "1" is "png_to_upload.png" in "צילום ת.ז. / דרכון"
    Then validate size of file "1" in "צילום ת.ז. / דרכון" in accepted

    When Upload a valid "gif_to_upload.gif" file in "צילום ת.ז. / דרכון"
    Then validate name of file "2" is "gif_to_upload.gif" in "צילום ת.ז. / דרכון"
    Then validate size of file "2" in "צילום ת.ז. / דרכון" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "צילום ת.ז. / דרכון"
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "צילום ת.ז. / דרכון"
    Then validate size of file "3" in "צילום ת.ז. / דרכון" in accepted

    When Upload a valid "png_to_upload.png" file in "כתב התחייבות"
    Then validate name of file "1" is "png_to_upload.png" in "כתב התחייבות"
    Then validate size of file "1" in "כתב התחייבות" in accepted
    When delete file "1" in "כתב התחייבות"

    When Upload a valid "gif_to_upload.gif" file in "כתב התחייבות"
    Then validate name of file "1" is "gif_to_upload.gif" in "כתב התחייבות"
    Then validate size of file "1" in "כתב התחייבות" in accepted
    When delete file "1" in "כתב התחייבות"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "כתב התחייבות"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "כתב התחייבות"
    Then validate size of file "1" in "כתב התחייבות" in accepted
    When delete file "1" in "כתב התחייבות"

    When Upload a valid "bmp_to_upload.bmp" file in "כתב התחייבות"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "כתב התחייבות"
    Then validate size of file "1" in "כתב התחייבות" in accepted
    When delete file "1" in "כתב התחייבות"

    When Upload a valid "jpeg_to_upload.jpeg" file in "כתב התחייבות"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "כתב התחייבות"
    Then validate size of file "1" in "כתב התחייבות" in accepted
    When delete file "1" in "כתב התחייבות"

    When Upload a valid "pdf_to_upload.pdf" file in "כתב התחייבות"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "כתב התחייבות"
    Then validate size of file "1" in "כתב התחייבות" in accepted
    When delete file "1" in "כתב התחייבות"

    When Upload a valid "png_to_upload.png" file in "כתב התחייבות"
    Then validate name of file "1" is "png_to_upload.png" in "כתב התחייבות"
    Then validate size of file "1" in "כתב התחייבות" in accepted

    When Upload a valid "gif_to_upload.gif" file in "כתב התחייבות"
    Then validate name of file "2" is "gif_to_upload.gif" in "כתב התחייבות"
    Then validate size of file "2" in "כתב התחייבות" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "כתב התחייבות"
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "כתב התחייבות"
    Then validate size of file "3" in "כתב התחייבות" in accepted

    When Upload a valid "png_to_upload.png" file in "העתק ביטוח צד ג"
    Then validate name of file "1" is "png_to_upload.png" in "העתק ביטוח צד ג"
    Then validate size of file "1" in "העתק ביטוח צד ג" in accepted
    When delete file "1" in "העתק ביטוח צד ג"

    When Upload a valid "gif_to_upload.gif" file in "העתק ביטוח צד ג"
    Then validate name of file "1" is "gif_to_upload.gif" in "העתק ביטוח צד ג"
    Then validate size of file "1" in "העתק ביטוח צד ג" in accepted
    When delete file "1" in "העתק ביטוח צד ג"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "העתק ביטוח צד ג"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "העתק ביטוח צד ג"
    Then validate size of file "1" in "העתק ביטוח צד ג" in accepted
    When delete file "1" in "העתק ביטוח צד ג"

    When Upload a valid "bmp_to_upload.bmp" file in "העתק ביטוח צד ג"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "העתק ביטוח צד ג"
    Then validate size of file "1" in "העתק ביטוח צד ג" in accepted
    When delete file "1" in "העתק ביטוח צד ג"

    When Upload a valid "pdf_to_upload.pdf" file in "העתק ביטוח צד ג"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "העתק ביטוח צד ג"
    Then validate size of file "1" in "העתק ביטוח צד ג" in accepted
    When delete file "1" in "העתק ביטוח צד ג"

    When Upload a valid "jpeg_to_upload.jpeg" file in "העתק ביטוח צד ג"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "העתק ביטוח צד ג"
    Then validate size of file "1" in "העתק ביטוח צד ג" in accepted
    When delete file "1" in "העתק ביטוח צד ג"

    When Upload a valid "png_to_upload.png" file in "העתק ביטוח צד ג"
    Then validate name of file "1" is "png_to_upload.png" in "העתק ביטוח צד ג"
    Then validate size of file "1" in "העתק ביטוח צד ג" in accepted

    When Upload a valid "gif_to_upload.gif" file in "העתק ביטוח צד ג"
    Then validate name of file "2" is "gif_to_upload.gif" in "העתק ביטוח צד ג"
    Then validate size of file "2" in "העתק ביטוח צד ג" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "העתק ביטוח צד ג"
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "העתק ביטוח צד ג"
    Then validate size of file "3" in "העתק ביטוח צד ג" in accepted

    When Upload a valid "png_to_upload.png" file in "סינופסיס קצר"
    Then validate name of file "1" is "png_to_upload.png" in "סינופסיס קצר"
    Then validate size of file "1" in "סינופסיס קצר" in accepted
    When delete file "1" in "סינופסיס קצר"

    When Upload a valid "gif_to_upload.gif" file in "סינופסיס קצר"
    Then validate name of file "1" is "gif_to_upload.gif" in "סינופסיס קצר"
    Then validate size of file "1" in "סינופסיס קצר" in accepted
    When delete file "1" in "סינופסיס קצר"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "סינופסיס קצר"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "סינופסיס קצר"
    Then validate size of file "1" in "סינופסיס קצר" in accepted
    When delete file "1" in "סינופסיס קצר"

     When Upload a valid "pdf_to_upload.pdf" file in "סינופסיס קצר"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "סינופסיס קצר"
    Then validate size of file "1" in "סינופסיס קצר" in accepted
    When delete file "1" in "סינופסיס קצר"

    When Upload a valid "jpeg_to_upload.jpeg" file in "סינופסיס קצר"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "סינופסיס קצר"
    Then validate size of file "1" in "סינופסיס קצר" in accepted
    When delete file "1" in "סינופסיס קצר"

    When Upload a valid "bmp_to_upload.bmp" file in "סינופסיס קצר"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "סינופסיס קצר"
    Then validate size of file "1" in "סינופסיס קצר" in accepted
    When delete file "1" in "סינופסיס קצר"

    When Upload a valid "png_to_upload.png" file in "סינופסיס קצר"
    Then validate name of file "1" is "png_to_upload.png" in "סינופסיס קצר"
    Then validate size of file "1" in "סינופסיס קצר" in accepted

    When Upload a valid "gif_to_upload.gif" file in "סינופסיס קצר"
    Then validate name of file "2" is "gif_to_upload.gif" in "סינופסיס קצר"
    Then validate size of file "2" in "סינופסיס קצר" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "סינופסיס קצר"
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "סינופסיס קצר"
    Then validate size of file "3" in "סינופסיס קצר" in accepted

    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    Then validate checkbox of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים" is checked
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    Then validate captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע" is checked

    When click on "שמור" button
    And click on "שמור טיוטה" button tyota
    When 1st wait for "email" that contains pin code and link
    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    When click on "email" option
    When 3rd wait for second "email" to get "קוד האימות" index "2"
    When 4th close all tabs "email" at index "2"
    Then 5th Validate if went back to expected "email" form

  #Todo: Scenario TC_PHOTOPERMIT_08 is missing הזנת ערכים שגויים לשדות "פרטי מיקום ומועדי הצילומים" מועד אחד

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PHOTOPERMIT_09 הזנת ערכים שגויים לשדות "צרופות"
    When Upload an invalid "excel_to_upload.xlsx" file in "צילום ת.ז. / דרכון"
    Then check if "צילום ת.ז. / דרכון" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "צילום ת.ז. / דרכון"
    Then check if "צילום ת.ז. / דרכון" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "כתב התחייבות"
    Then check if "כתב התחייבות" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "כתב התחייבות"
    Then check if "כתב התחייבות" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "העתק ביטוח צד ג"
    Then check if "העתק ביטוח צד ג" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "העתק ביטוח צד ג"
    Then check if "העתק ביטוח צד ג" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "סינופסיס קצר"
    Then check if "סינופסיס קצר" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "סינופסיס קצר"
    Then check if "סינופסיס קצר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


