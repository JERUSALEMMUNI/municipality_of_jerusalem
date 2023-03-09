Feature: ContractorEmpRights form - scenarios step 2

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except ( תלושי שכר, דוחו"ת נוכחות, אסמכתאות לתשלום שכר, אחר)


  Background: Background Scenario
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "asd@wwf.com" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
    When pick year "2018" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "1" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    When click on "המשך" icon


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
    And validate size of file "1" in "תלושי שכר" in accepted
    When delete file "2" in "תלושי שכר"


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

  Scenario: העלת קבצים בשמות לא מאושרים
    Then validate current step is "צרופות והצהרה"
    When Upload "!@#$%^&file_to_upload.xlsx" file in "תלושי שכר"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "דוחו"ת נוכחות"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
    And Upload "!@#$%^&file_to_upload.xlsx" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."


  Scenario: העלת קבצים מעל 6 מיגה
    Then validate current step is "צרופות והצהרה"
    When Upload "10MB_file_to_upload.pdf" file in "תלושי שכר"
    And Upload "10MB_file_to_upload.pdf" file in "דוחו"ת נוכחות"
    When Upload "10MB_file_to_upload.pdf" file in "אסמכתאות לתשלום שכר"
    And Upload "10MB_file_to_upload.pdf" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."


