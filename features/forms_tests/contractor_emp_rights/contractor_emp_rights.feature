Feature: ContractorEmpRights form - checklist scenarios

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Page: 1
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)
  - Page Information:
  -
# Todo: Add the scenario name from excel file of sofiya



  Scenario Outline: first name (valid)
    Given Navigate to "ContractorEmpRights" form
    When write "<first_name>" into "שם פרטי"
    Then field "שם פרטי" has valid value
    Examples:
      | first_name          |
      | פראס                |
      | .)('"סנינה_אבו_פראס |
      | פ                   |

  Scenario Outline: first name (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write "<first_name>" into "שם פרטי"
    Then field "שם פרטי" has invalid value
    Examples:
      | first_name |
      | فراس       |
      | firas      |
      | 1234       |
      | !@#$%%     |
      | פראסضض     |
      | פראסwdd    |
      | פראס123    |
      | פראס!@##   |

  Scenario Outline: last name (valid)
    Given Navigate to "ContractorEmpRights" form
    When write "<last_name>" into "שם משפחה"
    Then field "שם משפחה" has valid value
    Examples:
      | last_name           |
      | פראס                |
      | .)('"סנינה_אבו_פראס |
      | פ                   |

  Scenario Outline: last name (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write "<last_name>" into "שם משפחה"
    Then field "שם משפחה" has invalid value
    Examples:
      | last_name |
      | فراس      |
      | firas     |
      | 1234      |
      | !@#$%%    |
      | פראסضض    |
      | פראסwdd   |
      | פראס123   |
      | פראס!@##  |


  Scenario: Test all mandatory fields with valid values
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "3327" in "מספר זהות"
    And write a valid value "סאמר" in "שם פרטי"
    And write a valid value "אבו סלום" in "שם משפחה"
    And write a valid value "salem_salom@hotmail.com" in "אימייל"
    And fill "058-8078687" in "מספר טלפון נייד"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "3" in "מספר דירה"
#    BUG with the save button after clicking on save it take us to empty page
#    When click on "שמור" Button
#    And write "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    Then validate new email received
#    click on the link from the mail
#    And click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"

  Scenario: Test first and last name with invalid values
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "Firas" in "שם פרטי"
    And write an invalid value "أبوسنينة" in "שם משפחה"


  Scenario: Test information dialog
    Given Navigate to "ContractorEmpRights" form
    When click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button
    # TODO: we need to add wait untill he close the dialog
#    When I wait for "1" seconds
    Then validate information dialog is closed
#   When click on "שמור" Button
#   When click on "הדפס" Button



  Scenario: Test all mandatory fields and date with valid values
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "3327" in "מספר זהות"
    And write a valid value "פראס" in "שם פרטי"
    And write a valid value "אבוסדד" in "שם משפחה"
    And pick "8/3/1996" from calendar of "תאריך לידה"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "026282068" in "מספר טלפון"
    And fill "058-8078687" in "מספר טלפון נייד"
    And write a valid value "asd@wwf.com" in "אימייל"
#    When click on "שמור" Button
#    And click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"

  Scenario: validate dropdown נושא התלונה with underneath label
    Given Navigate to "ContractorEmpRights" form
    When select all options of "נושא התלונה"
    Then validate if all checked options appeared in selection order under "נושא התלונה"

  @email
  Scenario: Test fields with valid values One with email verification
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
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And pick "ניקיון" from "ענף"
    And pick "מוקד יסעור נקיון ותחזוקה בע"מ" from "שם חברה"
    And write "עיריית ירושלים" into "שם אתר עירוני"
    And pick "8/1/2019" from calendar of "תאריך תחילת העבודה בחברה"
    And pick "אי צבירה נאותה - ימי חופשה" from "נושא התלונה"
    When pick year "2021" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "7" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And write a valid value "דגדדד" in "התשובה שקיבלתי"
    When click on "שמור" icon
    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    And click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"
  Scenario: Test fields with valid values Two
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
#    When click on "שמור" Button
#    And click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"


  Scenario: Upload file test
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
    When pick month "11" in widget "חודשים לבדיקה" at index "1"
    When choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
##    When click on "שמור" Button
#    And click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"
#    When Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Excel_try_file.xlsx" file in "תלושי שכר"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\pdf_try_file.pdf" file in "דוחו"ת נוכחות"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\png_try_file.png" file in "אסמכתאות לתשלום שכר"
#    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Word_try_file.docx" file in "אחר"
##    When click on "שלח" Button


  Scenario: Declaration test
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
    And pick "צבירת ימי מחלה" from "נושא התלונה"
    And pick year "2022" in widget "חודשים לבדיקה" at index "1"
    And write "קיבלתי מכה בעבודה " into "פרטי התלונה"
    And pick month "12" in widget "חודשים לבדיקה" at index "1"
    And choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And click on "המשך" Button
    #TODO: need to add page 2 of feature file for this page
    Then validate current step is "צרופות והצהרה"
    When Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Excel_try_file.xlsx" file in "תלושי שכר"
    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\pdf_try_file.pdf" file in "דוחו"ת נוכחות"
    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\png_try_file.png" file in "אסמכתאות לתשלום שכר"
    And Upload "C:\Users\LENOVO\Documents\municipality_of_jerusalem\media\Word_try_file.docx" file in "אחר"
    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."


  Scenario: Header elements test
    Given Navigate to "ContractorEmpRights" form
    Then validate municipality logo is displayed in old header
    And validate old header title is default
    And validate form Title in old header is "שרותים דיגיטליים"
    And validate form explanation in old header contains "טופס זה נועד לסייע לך בהגשת תלונה בגין פגיעה "
    And validate form explanation in old header exists and contains at least "20" chars


  Scenario: Footer elements test
    Given Navigate to "ContractorEmpRights" form
    Then Validate Facebook Logo is displayed in old footer
    Then Validate Instagram Logo is displayed in old footer
    Then Validate Twitter Logo is displayed in old footer
    Then Validate old footer call us is displayed
    Then Validate old footer follow us is displayed
    Then Validate old footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    Then Validate old footer follow us text is "עקבו אחרינו"
    Then Validate old footer call us has the default text
    Then Validate old footer follow us has the default text


  Scenario: footer facebook url test
    Given Navigate to "ContractorEmpRights" form
    Then Validate facebook url in old footer
    Then Back to previous page
    Then Validate current page is "ContractorEmpRights"

   # TODO: Solve, there is a problem after the browser come back from another website page like facebook
  # solved the problem by using the driver in the footer field instead of web_element
  Scenario: footer instagram url test
    Given Navigate to "ContractorEmpRights" form
    Then Validate instagram url in old footer
    Then Back to previous page
    Then Validate current page is "ContractorEmpRights"

  Scenario: footer twitter url test
    Given Navigate to "ContractorEmpRights" form
    Then Validate twitter url in old footer
    Then Back to previous page
    Then Validate current page is "ContractorEmpRights"












