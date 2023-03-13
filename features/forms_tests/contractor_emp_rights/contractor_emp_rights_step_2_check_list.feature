Feature: ContractorEmpRights form - CheckList scenarios step 2

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except ( תלושי שכר, דוחו"ת נוכחות, אסמכתאות לתשלום שכר, אחר)

  Background: Background Scenario
    Given Navigate to "ContractorEmpRights" form and reach step "צרופות והצהרה"


  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה  (הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים: קלט ריק)
    When click on "שלח" icon
    When close error message
    Then check if "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים." error is "חובה למלא את ההצהרה"
