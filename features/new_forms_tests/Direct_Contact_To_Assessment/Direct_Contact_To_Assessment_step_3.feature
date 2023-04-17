Feature: DirectContactToAssessment form - scenarios step 3

  - Form name: פנייה ישירה לאגף שומה וגבייה
  - Feature file name: Direct_Contact_To_Assessment_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/DirectContactToAssessment
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "DirectContactToAssessment" form and reach step "צרופות"
  @darweesh
  Scenario: CONTACTASSESSM_04 הצהרות ושליחת הטופס
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

    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"

    #When click on "שמור" button
    #When click on "שמור טיוטה" button tyota
    #When 1st wait for "email" that contains pin code and link
    #When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #When click on "email" option
    #When 3rd wait for second "email" to get "קוד האימות" index "2"
    #When 4th close all tabs "email" at index "2"
    #Then 5th Validate if went back to expected "email" form
    Then validate current step name is "צרופות"



