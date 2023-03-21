Feature: TransferDogOwnership form - scenarios step 3

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory


  Background: Background Scenario
    Given Navigate to "TransferDogOwnership" form and reach step "צרופות והצהרה"


  Scenario: TC_DOGOWNER_07 - Upload files with approved format test
    Then validate current step is "צרופות והצהרה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות מוסר הכלב"
    And Upload "word_to_upload.docx" file in "צילום תעודת זהות מקבל הכלב"
    And Upload "excel_to_upload.xlsx" file in "רישיון אחרון להחזקת כלב"
    And Upload "png_to_upload.png" file in "אחר"
    And check the box of "הנני מצהיר/ה בזה כי החל מתאריך"
    And check the box of "הנני מצהיר/ה בזה כי אני מקבל על עצמי את החזקת הכלב וכל חובת בעלותו לפי דרישות החוק."
    And check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים."
