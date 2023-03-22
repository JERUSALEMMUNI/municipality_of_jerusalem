Feature: PhotoPermission form - scenarios step 4

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: photo_permission_step4.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 4
  - All fields are mandatory expect of (העתק ביטוח צד ג')


  Background: Background Scenario
    Given Navigate to "PhotoPermission" form and reach step "צרופות"

  Scenario: TC_PHOTOPERMIT_08 - "upload files" integrity check
    When Upload a valid "png_to_upload.png" file in "צילום ת.ז. / דרכון"
    When Upload a valid "png_to_upload.png" file in "כתב התחייבות"
    When Upload a valid "png_to_upload.png" file in "העתק ביטוח צד ג"
    When Upload a valid "png_to_upload.png" file in "סינופסיס קצר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When click on "שמור" button
    And click on "שמור טיוטה" button tyota
    When 1st wait for "email" that contains pin code and link
    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    When click on "email" option
    When 3rd wait for second "email" to get "קוד האימות" index "2"
    When 4th close all tabs "email" at index "2"
    Then 5th Validate if went back to expected "email" form