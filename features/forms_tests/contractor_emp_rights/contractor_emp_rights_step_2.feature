Feature: Test Scenarios for functionality and validation of ContractorEmpRights form

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)



  Scenario: TC_EMPCOMP_10 - Upload one file to each section
    Then validate current step is "צרופות והצהרה"
    When Upload "png_to_upload.png" file in "תלושי שכר"
    And Upload "word_to_upload.docx" file in "דוחו"ת נוכחות"
    And Upload "excel_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
    And Upload "png_to_upload.png" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
#    not able to do this steps
#    Click on "אני לא רובוט" in "אימות" field
#    Click on "שלח" button


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
#    not able to do this steps
#    Click on "אני לא רובוט" in "אימות" field
#    And click on "המשך" Button










