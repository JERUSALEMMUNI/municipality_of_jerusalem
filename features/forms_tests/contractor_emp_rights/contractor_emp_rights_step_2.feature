Feature: ContractorEmpRights form - scenarios step 2

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except ( תלושי שכר, דוחו"ת נוכחות, אסמכתאות לתשלום שכר, אחר)


  Background: Background Scenario
    Given Navigate to "ContractorEmpRights" form and reach step "צרופות והצהרה"


@firas
  Scenario: TC_EMPCOMP_10 - Upload one file to each section
    Then validate current step is "צרופות והצהרה"
    When Upload "png_to_upload.png" file in "תלושי שכר"
    And Upload "word_to_upload.docx" file in "תלושי שכר"
    And Upload "excel_to_upload.xlsx" file in "תלושי שכר"
    And Upload "word_to_upload.docx" file in "דוחו"ת נוכחות"
    And Upload "excel_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
    And Upload "png_to_upload.png" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
    Then validate name of file "1" is "png_to_upload.png" in "תלושי שכר"
    Then validate name of file "3" is "excel_to_upload.xlsx" in "תלושי שכר"
    And validate size of file "1" in "תלושי שכר" in accepted
    When delete file "1" in "תלושי שכר"
    When delete file "1" in "תלושי שכר"
    When delete file "1" in "תלושי שכר"
    When delete file "1" in "דוחו"ת נוכחות"
    When delete file "1" in "אסמכתאות לתשלום שכר"
    When delete file "1" in "אחר"

@this_to_test
  Scenario: TC_EMPCOMP_11 - Upload several files to each section
    Then validate current step is "צרופות והצהרה"
    When Upload "png_to_upload.png" file in "תלושי שכר"
    When Upload "word_to_upload.docx" file in "תלושי שכר"
    And Upload "word_to_upload.docx" file in "דוחו"ת נוכחות"
    When Upload "png_to_upload.png" file in "דוחו"ת נוכחות"
    And Upload "excel_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
    And Upload "png_to_upload.png" file in "אסמכתאות לתשלום שכר"
    And Upload "png_to_upload.png" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
    When delete file "1" in "תלושי שכר"
    When delete file "1" in "תלושי שכר"
    When delete file "1" in "דוחו"ת נוכחות"
    When delete file "1" in "דוחו"ת נוכחות"
    When delete file "1" in "אסמכתאות לתשלום שכר"
    When delete file "1" in "אסמכתאות לתשלום שכר"
    When delete file "1" in "אחר"

@this_to_test
  Scenario: Uploading files with unapproved names test
    Then validate current step is "צרופות והצהרה"
    When Upload "!@#$%^&file_to_upload.xlsx" file in "תלושי שכר"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "דוחו"ת נוכחות"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
    When delete file "1" in "תלושי שכר"
    When delete file "1" in "דוחו"ת נוכחות"
    When delete file "1" in "אסמכתאות לתשלום שכר"
    When delete file "1" in "אחר"

@this_to_test
  Scenario: Uploading files above 6 MB size test
    Then validate current step is "צרופות והצהרה"
    When Upload "10MB_file_to_upload.pdf" file in "תלושי שכר"
    And Upload "10MB_file_to_upload.pdf" file in "דוחו"ת נוכחות"
    When Upload "10MB_file_to_upload.pdf" file in "אסמכתאות לתשלום שכר"
    And Upload "10MB_file_to_upload.pdf" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
    When delete file "1" in "תלושי שכר"
    When delete file "1" in "דוחו"ת נוכחות"
    When delete file "1" in "אסמכתאות לתשלום שכר"
    When delete file "1" in "אחר"


