Feature: ContractorEmpRights form - functional scenarios for Step 2

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)



  Scenario: TC_EMPCOMP_10 - Upload one file to each section
       Given Navigate to "ContractorEmpRights" form
    When write a valid value "3327" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "8/8/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "2" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" in "מספר טלפון נייד"
    And write a valid value "asd@wwf.com" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write "עיריית ירושלים" into "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
    When pick year "2018" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "8" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And click on "המשך" Button
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
           Given Navigate to "ContractorEmpRights" form
    When write a valid value "3327" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "8/8/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "2" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" in "מספר טלפון נייד"
    And write a valid value "asd@wwf.com" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write "עיריית ירושלים" into "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
    When pick year "2018" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "8" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And click on "המשך" Button
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










