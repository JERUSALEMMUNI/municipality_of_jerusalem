Feature: PhotoPermission form - scenarios step 4

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: photo_permission_step4.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 4
  - All fields are mandatory expect of (העתק ביטוח צד ג')


  Background: Background Scenario
    Given Navigate to "PhotoPermission" form and reach step "צרופות"


  Scenario: TC_PHOTOPERMIT_05 הזנת ערכים תקינים לשדות "צרופות"

    When upload "png_to_upload.png" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "png_to_upload.png" file is in "צילום ת.ז. / דרכון" files list
    When delete file by name "png_to_upload.png" in "צילום ת.ז. / דרכון"

    When upload "gif_to_upload.gif" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום ת.ז. / דרכון" files list
    When delete file by name "gif_to_upload.gif" in "צילום ת.ז. / דרכון"

    When upload "jpg_pic_to_upload.jpg" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "צילום ת.ז. / דרכון" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "צילום ת.ז. / דרכון"

    When upload "pdf_to_upload.pdf" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "pdf_to_upload.pdf" file is in "צילום ת.ז. / דרכון" files list
    When delete file by name "pdf_to_upload.pdf" in "צילום ת.ז. / דרכון"

    When upload "jpeg_to_upload.jpeg" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "צילום ת.ז. / דרכון" files list
    When delete file by name "jpeg_to_upload.jpeg" in "צילום ת.ז. / דרכון"

    When upload "bmp_to_upload.bmp" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום ת.ז. / דרכון" files list
    When delete file by name "bmp_to_upload.bmp" in "צילום ת.ז. / דרכון"

    When upload "png_to_upload.png" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "png_to_upload.png" file is in "צילום ת.ז. / דרכון" files list

    When upload "gif_to_upload.gif" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום ת.ז. / דרכון" files list

    When upload "jpg_pic_to_upload.jpg" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "צילום ת.ז. / דרכון" files list

    When upload "png_to_upload.png" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "png_to_upload.png" file is in "כתב התחייבות" files list
    When delete file by name "png_to_upload.png" in "כתב התחייבות"

    When upload "gif_to_upload.gif" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "gif_to_upload.gif" file is in "כתב התחייבות" files list
    When delete file by name "gif_to_upload.gif" in "כתב התחייבות"

    When upload "jpg_pic_to_upload.jpg" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "כתב התחייבות" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "כתב התחייבות"

    When upload "bmp_to_upload.bmp" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "bmp_to_upload.bmp" file is in "כתב התחייבות" files list
    When delete file by name "bmp_to_upload.bmp" in "כתב התחייבות"

    When upload "jpeg_to_upload.jpeg" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "כתב התחייבות" files list
    When delete file by name "jpeg_to_upload.jpeg" in "כתב התחייבות"

    When upload "pdf_to_upload.pdf" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "pdf_to_upload.pdf" file is in "כתב התחייבות" files list
    When delete file by name "pdf_to_upload.pdf" in "כתב התחייבות"

    When upload "png_to_upload.png" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "png_to_upload.png" file is in "כתב התחייבות" files list

    When upload "gif_to_upload.gif" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "gif_to_upload.gif" file is in "כתב התחייבות" files list

    When upload "jpg_pic_to_upload.jpg" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "כתב התחייבות" files list

    When upload "png_to_upload.png" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "png_to_upload.png" file is in "העתק ביטוח צד ג" files list
    When delete file by name "png_to_upload.png" in "העתק ביטוח צד ג"

    When upload "gif_to_upload.gif" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "gif_to_upload.gif" file is in "העתק ביטוח צד ג" files list
    When delete file by name "gif_to_upload.gif" in "העתק ביטוח צד ג"

    When upload "jpg_pic_to_upload.jpg" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "העתק ביטוח צד ג" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "העתק ביטוח צד ג"

    When upload "bmp_to_upload.bmp" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "bmp_to_upload.bmp" file is in "העתק ביטוח צד ג" files list
    When delete file by name "bmp_to_upload.bmp" in "העתק ביטוח צד ג"

    When upload "pdf_to_upload.pdf" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "pdf_to_upload.pdf" file is in "העתק ביטוח צד ג" files list
    When delete file by name "pdf_to_upload.pdf" in "העתק ביטוח צד ג"

    When upload "jpeg_to_upload.jpeg" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "העתק ביטוח צד ג" files list
    When delete file by name "jpeg_to_upload.jpeg" in "העתק ביטוח צד ג"

    When upload "png_to_upload.png" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "png_to_upload.png" file is in "העתק ביטוח צד ג" files list

    When upload "gif_to_upload.gif" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "gif_to_upload.gif" file is in "העתק ביטוח צד ג" files list

    When upload "jpg_pic_to_upload.jpg" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "העתק ביטוח צד ג" files list

    When upload "png_to_upload.png" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "png_to_upload.png" file is in "סינופסיס קצר" files list
    When delete file by name "png_to_upload.png" in "סינופסיס קצר"

    When upload "gif_to_upload.gif" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "gif_to_upload.gif" file is in "סינופסיס קצר" files list
    When delete file by name "gif_to_upload.gif" in "סינופסיס קצר"

    When upload "jpg_pic_to_upload.jpg" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "סינופסיס קצר" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "סינופסיס קצר"

    When upload "pdf_to_upload.pdf" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "pdf_to_upload.pdf" file is in "סינופסיס קצר" files list
    When delete file by name "pdf_to_upload.pdf" in "סינופסיס קצר"

    When upload "jpeg_to_upload.jpeg" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "סינופסיס קצר" files list
    When delete file by name "jpeg_to_upload.jpeg" in "סינופסיס קצר"

    When upload "bmp_to_upload.bmp" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "bmp_to_upload.bmp" file is in "סינופסיס קצר" files list
    When delete file by name "bmp_to_upload.bmp" in "סינופסיס קצר"

    When upload "png_to_upload.png" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "png_to_upload.png" file is in "סינופסיס קצר" files list

    When upload "gif_to_upload.gif" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "gif_to_upload.gif" file is in "סינופסיס קצר" files list

    When upload "jpg_pic_to_upload.jpg" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "סינופסיס קצר" files list

    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    Then validate checkbox of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים" is checked
#    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
#    Then validate captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע" is checked

#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form

  #Todo: Scenario TC_PHOTOPERMIT_08 is missing הזנת ערכים שגויים לשדות "פרטי מיקום ומועדי הצילומים" מועד אחד


  Scenario: TC_PHOTOPERMIT_09 הזנת ערכים שגויים לשדות "צרופות"
    When upload "excel_to_upload.xlsx" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "צילום ת.ז. / דרכון" files list
    Then validate "צילום ת.ז. / דרכון" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "צילום ת.ז. / דרכון"
    Then validate "צילום ת.ז. / דרכון" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "צילום ת.ז. / דרכון" files list
    Then validate "צילום ת.ז. / דרכון" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "excel_to_upload.xlsx" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "כתב התחייבות" files list
    Then validate "כתב התחייבות" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "כתב התחייבות"
    Then validate "כתב התחייבות" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "כתב התחייבות" files list
    Then validate "כתב התחייבות" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "excel_to_upload.xlsx" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "העתק ביטוח צד ג" files list
    Then validate "כתב התחייבות" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "העתק ביטוח צד ג"
    Then validate "העתק ביטוח צד ג" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "העתק ביטוח צד ג" files list
    Then validate "העתק ביטוח צד ג" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "excel_to_upload.xlsx" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "סינופסיס קצר" files list
    Then validate "סינופסיס קצר" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "סינופסיס קצר"
    Then validate "סינופסיס קצר" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "סינופסיס קצר" files list
    Then validate "סינופסיס קצר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


