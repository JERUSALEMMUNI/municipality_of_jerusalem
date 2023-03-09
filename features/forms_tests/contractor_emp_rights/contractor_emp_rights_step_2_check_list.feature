@in_dev
Feature: ContractorEmpRights form - CheckList scenarios step 2

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


  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה  ( קלט ריק)
    Given Navigate to "ContractorEmpRights" form
    When click on "שלח" icon
    When close error message
    Then check if "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים." error is "חובה למלא את ההצהרה"






