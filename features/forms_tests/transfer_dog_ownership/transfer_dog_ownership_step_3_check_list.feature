
Feature: TransferDogOwnership form - CheckList scenarios step 3

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory


  Background: Background Scenario
    Given Navigate to "TransferDogOwnership" form and reach step "צרופות והצהרה"

  Scenario: Upload files with approved names test
    Then validate current step is "צרופות והצהרה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות מוסר הכלב"
    And Upload "word_to_upload.docx" file in "צילום תעודת זהות מקבל הכלב"
    When Upload "png_to_upload.png" file in "רישיון אחרון להחזקת כלב"
    And Upload "excel_to_upload.xlsx" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי החל מתאריך"
    And Check the box of "הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק."
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים."


  Scenario: Uploading files with unapproved names test
    Then validate current step is "צרופות והצהרה"
    When Upload "!@#$%^&file_to_upload.xlsx" file in "צילום תעודת זהות מוסר הכלב"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "צילום תעודת זהות מקבל הכלב"
    When Upload "!@#$%^&file_to_upload.xlsx" file in "רישיון אחרון להחזקת כלב"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי החל מתאריך"
    And Check the box of "הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק."
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים."


  Scenario: Uploading files above 6 MB size test
    Then validate current step is "צרופות והצהרה"
    When Upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות מוסר הכלב"
    And Upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות מקבל הכלב"
    When Upload "10MB_file_to_upload.pdf" file in "רישיון אחרון להחזקת כלב"
    And Upload "10MB_file_to_upload.pdf" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי החל מתאריך"
    And Check the box of "הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק."
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים."












