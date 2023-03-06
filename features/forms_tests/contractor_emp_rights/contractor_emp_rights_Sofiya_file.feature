#Feature: Test Scenarios for functionality and validation of ContractorEmpRights form
#
#  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
#  - Feature file name: contractor_emp_rights.feature
#  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
#  - Number of Pages is : 2, We are at Page: 1
#  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)
#  - Page Information:
#  -
#
#  # Todo: Add the scenario name from excel file of sofiya
#  # Test information from sofiya excel file
#  # File name: בקשה להחזקת כלב - העברת בעלות
#  # test id: TC_DOGOWNER_01
#  Scenario: TC_DOGOWNER_01 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "סאמר" in "שם פרטי"
#    And write a valid value "אבו סלום" in "שם משפחה"
#    And write a valid value "salem_salom@hotmail.com" in "אימייל"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "3" in "מספר דירה"
##    When click on "שמור" Button
##    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
##    Then validate new email received
##    click on the link from the mail
##    And click on "המשך" Button
##    Then validate current step is "צרופות והצהרה"
#
#
#
#  # Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_01
#  Scenario: TC_EMPCOMP_01 Test
#    Given Navigate to "ContractorEmpRights" form
#    When click on "מידע" icon
#    Then validate information dialog is opened
#    #BUG: There is no tittle for the information dialog
#    #And Verify the title on message header is "מידע"
#    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב"
#    And validate information dialog text in old header exists and contains at least "20" chars
#    When click on X Button
#    # TODO: we need to add wait untill he close the dialog
#    When I wait for "1" seconds
#    Then validate information dialog is closed
#
#  # Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_02
#  Scenario: TC_EMPCOMP_02 Test
#    Given Navigate to "ContractorEmpRights" form
#    When click on "שמור" icon
#
#
#  # Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_03
#  Scenario: TC_EMPCOMP_03 Test
#    Given Navigate to "ContractorEmpRights" form
#    When click on "הדפס" icon
#
#
#  # Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_04
#  Scenario: TC_EMPCOMP_04 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "פראס" in "שם פרטי"
#    And write a valid value "אבוסדד" in "שם משפחה"
#    And pick "8/3/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "2" in "מספר בית"
#    And write a valid value "1" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
##    When click on "שמור" Button
##    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
##    Then validate new email received
##    click on the link from the mail
##    And click on "המשך" Button
##    Then validate current step is "צרופות והצהרה"
#
#  # Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_05
#  Scenario: TC_EMPCOMP_05 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    And pick "8/8/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "2" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
#    And pick "ניקיון" from "ענף"
#    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
#    And write "עיריית ירושלים" into "שם אתר עירוני"
#    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
##    When click on "שמור" Button
##    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
##    Then validate new email received
##    click on the link from the mail
##    And click on "המשך" Button
##    Then validate current step is "צרופות והצהרה"
#
#
#
#
#  # Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_06
#  Scenario: TC_EMPCOMP_06 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    And pick "8/8/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "2" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
#    And pick "ניקיון" from "ענף"
#    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
#    And write "עיריית ירושלים" into "שם אתר עירוני"
#    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
##    When click on "שמור" Button
##    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
##    Then validate new email received
##    click on the link from the mail
##    And click on "המשך" Button
##    Then validate current step is "צרופות והצהרה"
#
#
#  # Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_07
#  Scenario: TC_EMPCOMP_07 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    And pick "8/8/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "2" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
#    And pick "ניקיון" from "ענף"
#    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
#    And write "עיריית ירושלים" into "שם אתר עירוני"
#    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
##    When click on "שמור" Button
##    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
##    Then validate new email received
##    click on the link from the mail
##    And click on "המשך" Button
##    Then validate current step is "צרופות והצהרה"
#
#
## Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_08
#  Scenario: TC_EMPCOMP_08 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    And pick "8/8/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "2" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
#    And pick "ניקיון" from "ענף"
#    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
#    And write "עיריית ירושלים" into "שם אתר עירוני"
#    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
#    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
#    When pick year "2020" in widget "חודשים לבדיקה" at index "1"
#    And write a valid value "א טור" in textarea of "פרטי התלונה"
#    When pick month "9" in widget "חודשים לבדיקה" at index "1"
#    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
#    And write a valid value "דגדדד" in "התשובה שקיבלתי"
##    When click on "שמור" Button
##    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
##    Then validate new email received
##    click on the link from the mail
##    And click on "המשך" Button
##    Then validate current step is "צרופות והצהרה"
#
#
## Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_09
#  Scenario: TC_EMPCOMP_09 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    And pick "8/8/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "2" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
#    And pick "ניקיון" from "ענף"
#    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
#    And write "עיריית ירושלים" into "שם אתר עירוני"
#    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
#    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
#    When pick year "2020" in widget "חודשים לבדיקה" at index "1"
#    And write a valid value "א טור" in textarea of "פרטי התלונה"
#    When pick month "9" in widget "חודשים לבדיקה" at index "1"
#    When choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
#    When pick year "2020" in widget "חודשים לבדיקה" at index "1"
#    When pick month "9" in widget "חודשים לבדיקה" at index "1"
#    When pick month "5" in widget "חודשים לבדיקה" at index "1"
##    not understood step
##    When Remove the first period form Step 5
##    When click on "שמור" Button
##    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
##    Then validate new email received
##    click on the link from the mail
##    And click on "המשך" Button
##    Then validate current step is "צרופות והצהרה"
#
#
#
## Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_10
#  Scenario: TC_EMPCOMP_10 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    And pick "8/8/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "2" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
#    And pick "ניקיון" from "ענף"
#    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
#    And write "עיריית ירושלים" into "שם אתר עירוני"
#    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
#    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
#    And pick year "2022" in widget "חודשים לבדיקה" at index "1"
#    And write "קיבלתי מכה בעבודה " into "פרטי התלונה"
#    And pick month "9" in widget "חודשים לבדיקה" at index "1"
#    And choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
#    And click on "המשך" Button
#    #TODO: need to add page 2 of feature file for this page
#    Then validate current step is "צרופות והצהרה"
#    When Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Excel_try_file.xlsx" file in "תלושי שכר"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\pdf_try_file.pdf" file in "דוחו"ת נוכחות"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\png_try_file.png" file in "אסמכתאות לתשלום שכר"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Word_try_file.docx" file in "אחר"
#    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
#    #undiefind step
#    #And click on "אני לא רובוט" in "אימות" field
#    #And click on "שלח" Button
#
#
#
## Test information from sofiya excel file
#  # File name: תלונה בגין פגיעה בזכויות עובד קבלן
#  # test id: TC_EMPCOMP_11
#  Scenario: TC_EMPCOMP_11 Test
#    Given Navigate to "ContractorEmpRights" form
#    When write a valid value "3327" in "מספר זהות"
#    And write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    And pick "8/8/1996" from calendar of "תאריך לידה"
#    And write a valid value "א טור" in "רחוב"
#    And write a valid value "1" in "מספר בית"
#    And write a valid value "2" in "מספר דירה"
#    And write a valid value "026282068" in "מספר טלפון"
#    And fill "058-8078687" in "מספר טלפון נייד"
#    And write a valid value "asd@wwf.com" in "אימייל"
#    And pick "ניקיון" from "ענף"
#    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
#    And write "עיריית ירושלים" into "שם אתר עירוני"
#    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
#    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
#    And pick year "2022" in widget "חודשים לבדיקה" at index "1"
#    And write "קיבלתי מכה בעבודה " into "פרטי התלונה"
#    And pick month "9" in widget "חודשים לבדיקה" at index "1"
#    And choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
#    And click on "המשך" Button
#    #TODO: need to add page 2 of feature file for this page
#    Then validate current step is "צרופות והצהרה"
#    When Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Excel_try_file.xlsx" file in "תלושי שכר"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\pdf_try_file.pdf" file in "דוחו"ת נוכחות"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\png_try_file.png" file in "אסמכתאות לתשלום שכר"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Word_try_file.docx" file in "אחר"
#    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
#    #undiefind step
#    #And click on "אני לא רובוט" in "אימות" field
#    And click on "המשך" Button
#
#
#
#
#
#
#
#
#
