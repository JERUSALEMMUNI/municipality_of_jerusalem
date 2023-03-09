Feature: ContractorEmpRights form - functional scenarios for Step 1

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Step: 1
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)


  Scenario: TC_EMPCOMP_01 - Click on "מידע" button after form opened
    Given Navigate to "ContractorEmpRights" form
    When click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button
    Then validate information dialog is closed


  Scenario: TC_EMPCOMP_02 - Click on "שמור" button before entering the required details
    Given Navigate to "ContractorEmpRights" form
    When click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
    When close error message


  Scenario: TC_EMPCOMP_03 - Click on "הדפס" button before entering the required details
    Given Navigate to "ContractorEmpRights" form
    When click on "הדפס" icon
    When click on print button
    # alias
    When I save the document as "new_file1"
    Then I compare "new_file1" with reference pdf file "ContractorEmpRights_empty_form"


  @email
  Scenario: TC_EMPCOMP_04 - Enter a correct employee details
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "פראס" in "שם פרטי"
    And write a valid value "אבוסדד" in "שם משפחה"
    And pick "8/3/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And click on "שמור" icon
    Then validate new email received "@TEMP_EMAIL_ADDRESS"
    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
    When click on "המשך" Button



  Scenario: TC_EMPCOMP_05 - Enter correct employer details from cleaning department
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "8/8/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "2" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write a valid value "עיריית ירושלים" in "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button
#  Then

  Scenario: TC_EMPCOMP_06 - Enter correct employer details from security department
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "8/8/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "2" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "שמירה" from "ענף"
    And pick "מיקוד שמירה, אבטחה, שירותים וניקיון בע"מ" from "שם חברה"
    And write a valid value "עיריית ירושלים" in "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button


  Scenario: TC_EMPCOMP_07 - Enter correct employer details from catering department
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "8/8/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "2" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "הסעדה" from "ענף"
    And pick "גורמה ארוחות בע"מ" from "שם חברה"
    And write a valid value "עיריית ירושלים" in "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button


  Scenario: TC_EMPCOMP_08 - Enter correct employer details from any department with one complaint and one period for verification
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "8/8/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "2" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write a valid value "עיריית ירושלים" in "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
    When pick year "2020" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "1" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And write a valid value "דגדדד" in "התשובה שקיבלתי"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button


  Scenario: TC_EMPCOMP_09 - Enter correct employer details from any department with more then one complaint and period for verification
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "8/8/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "2" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write a valid value "עיריית ירושלים" in "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
    And pick "צבירת ימי מחלה" from "נושא התלונה"
    And pick "תשלומי שכר בגין השתתפות במטווחים, השתלמויות וקורסי ריענון ירי" from "נושא התלונה"
    When pick year "2020" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick a group of months "2,3,4" in widget "חודשים לבדיקה" at index "1"
    When choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    When add "1" in widget "חודשים לבדיקה"
    When pick year "2019" in widget "חודשים לבדיקה" at index "2"
    When pick a group of months "5,6,7" in widget "חודשים לבדיקה" at index "2"
    When remove "1" in widget "חודשים לבדיקה"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button


  Scenario: TC_EMPCOMP_10 - Upload one file to each section
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "פראס" in "שם פרטי"
    And write a valid value "אבוסדד" in "שם משפחה"
    And pick "8/3/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write a valid value "עיריית ירושלים" in "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
    When pick year "2020" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "8" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And write a valid value "דגדדד" in "התשובה שקיבלתי"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"
#    When Upload "png_to_upload.png" file in "תלושי שכר"
#    And Upload "word_to_upload.docx" file in "דוחו"ת נוכחות"
#    And Upload "excel_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
#    And Upload "png_to_upload.png" file in "אחר"
#    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
#    not able to do this steps
#    Click on "אני לא רובוט" in "אימות" field
#    Click on "שלח" button


  Scenario: TC_EMPCOMP_11 - Upload several files to each section
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "פראס" in "שם פרטי"
    And write a valid value "אבוסדד" in "שם משפחה"
    And pick "8/3/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write a valid value "עיריית ירושלים" in "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "דמי הבראה" from "נושא התלונה"
    When pick year "2023" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "9" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And write a valid value "דגדדד" in "התשובה שקיבלתי"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"
#    When Upload "png_to_upload.png" file in "תלושי שכר"
#    When Upload "word_to_upload.docx" file in "תלושי שכר"
#    And Upload "word_to_upload.docx" file in "דוחו"ת נוכחות"
#    When Upload "png_to_upload.png" file in "דוחו"ת נוכחות"
#    And Upload "excel_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
#    And Upload "png_to_upload.png" file in "אסמכתאות לתשלום שכר"
#    And Upload "png_to_upload.png" file in "אחר"
#    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
#    not able to do this steps
#    Click on "אני לא רובוט" in "אימות" field
#    And click on "המשך" Button










