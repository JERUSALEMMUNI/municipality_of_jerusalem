Feature: ContractorEmpRights form - checklist scenarios

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Page: 1
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)

  Scenario Outline: first name (valid)
    Testing and validate different valid values at שם פרטי field
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name         |
      | פראס               |
      | .)('"סנינה_אבו_פראס |

  Scenario Outline: first name (invalid)
    - Testing and validate different invalid values at שם פרטי field
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<first_name>" in "שם פרטי"
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
    - Testing and validate different valid values at שם משפחה field
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<last_name>" in "שם משפחה"
    Examples:
      | last_name           |
      | פראס                |
      | .)('"סנינה_אבו_פראס |
      | פ                   |

  Scenario Outline: last name (invalid)
    - Testing and validate different valid invalues at שם משפחה field
    Given Navigate to "ContractorEmpRights" form
     When write an invalid value "<last_name>" in "שם משפחה"
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


  Scenario: Test mandatory fields with valid values
    #Todo: test description
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "332796184" in "מספר זהות"
    And write a valid value "פראס" in "שם פרטי"
    And write a valid value "אבו סלום" in "שם משפחה"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And fill "058-8078687" as valid value in "מספר טלפון נייד"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "3" in "מספר דירה"
#    When click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button


  Scenario: Test first and last name with invalid values
    - filling שם פרטי and שם משפחה with invalid values, and do a validity test
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "فؤاس" in "שם פרטי"
    When write an invalid value "dhjghj" in "שם משפחה"


  Scenario: Test information dialog
    - test the functionality of information pop up מידע
    - validate if it opens and closes correctly
    - validate if it has correct content, and its not less than 20 characters
    - click on save Icon, and then close the alert popup message
    #Todo: do the print icon
    Given Navigate to "ContractorEmpRights" form
    When click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button
    Then validate information dialog is closed
    When click on "שמור" icon
    When close error message
#    When click on "הדפס" icon



  Scenario: Test all mandatory fields and date with valid values
    Test mandatory fields including date by choosing from calendar.
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
#    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
#    When click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button


  Scenario: validate dropdown נושא התלונה with underneath label
    - Test functionality of the dropdown checkbox
    - Selecting all the menu options
    - compare the selected options from dropdown menu, with result written under the field
    Given Navigate to "ContractorEmpRights" form
    When select all options of "נושא התלונה"
    Then validate if all checked options appeared in selection order under "נושא התלונה"

  @email
  Scenario: Test fields with valid values and email verification
    - fill all fields with correct values
    - check the functionality of e-mail verification process
    - test functionality of generated pin codes, and saving backup
    - return to saved form and validate that we returned to the same filled form previously
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
    When pick year "2021" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "7" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
    And write a valid value "דגדדד" in "התשובה שקיבלתי"
    When click on "שמור" icon
    When 1st get pin code from email validation
    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
    When 3rd wait for second email to get "קוד האימות"
    When 4th close all tabs
    Then 5th Validate if went back to expected form
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"

  @AfterEmail
  Scenario: Test fields with valid values Two
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
    When pick year "2018" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "8" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
#    When click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button



  Scenario: Upload file test
    - fill all mandatory fields
    - test functionality of uploading files
    #Todo: do we need to make any validation tests on uploaded files
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
    When pick year "2018" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "א טור" in textarea of "פרטי התלונה"
    When pick month "11" in widget "חודשים לבדיקה" at index "1"
    When choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
#    When click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"
#    When click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"
#    When Upload "png_to_upload.png" file in "תלושי שכר"
#    And Upload "word_to_upload.docx" file in "דוחו"ת נוכחות"
#    And Upload "excel_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
#    And Upload "png_to_upload.png" file in "אחר"
#    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."
#    When click on "שלח" Button


  Scenario: Declaration test
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
    And pick "צבירת ימי מחלה" from "נושא התלונה"
    And pick year "2022" in widget "חודשים לבדיקה" at index "1"
    And write a valid value "קיבלתי מכה בעבודה " in textarea of "פרטי התלונה"
    And pick month "12" in widget "חודשים לבדיקה" at index "1"
    And choose "לא" from "האם היתה פניה למעסיק קודם הגשת תלונה זו?"
#    And click on "המשך" Button
#    Then validate current step is "צרופות והצהרה"
#    When Upload "png_to_upload.png" file in "תלושי שכר"
#    And Upload "word_to_upload.docx" file in "דוחו"ת נוכחות"
#    And Upload "excel_to_upload.xlsx" file in "אסמכתאות לתשלום שכר"
#    And Upload "png_to_upload.png" file in "אחר"
#    And Check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס התלונה המקוון נכונים, שלמים ומדוייקים."


  Scenario: Header elements test
    - Check if the Municipality of Jerusalem logo is displayed
    - Check if the title is displayed and has the wanted value
    - Check the explanation text if displayed correctly with a minimum count of 20 characters
    Given Navigate to "ContractorEmpRights" form
    Then validate municipality logo is displayed in old header
    And validate old header title is default
    And validate form Title in old header is "שרותים דיגיטליים"
    And validate form explanation in old header contains "טופס זה נועד לסייע לך בהגשת תלונה בגין פגיעה "
    And validate form explanation in old header exists and contains at least "20" chars


  Scenario: Footer elements test
    Footer elements check, including icons, text, and links
    - Check if Facebook, Instagram and Twitter logos are displayed
    - Validate each one, and check if links are working correctly
    - Check call us, follow us if displayed correctly
    Given Navigate to "ContractorEmpRights" form
    Then Validate Facebook Logo is displayed in footer
    Then Validate Instagram Logo is displayed in footer
    Then Validate Twitter Logo is displayed in footer
    Then Validate old footer call us is displayed
    Then Validate old footer follow us is displayed
    Then Validate old footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    Then Validate old footer follow us text is "עקבו אחרינו"
    Then Validate old footer call us has the default text
    Then Validate old footer follow us has the default text


  Scenario: footer facebook url test
    - Click on facebook icon, check if goes to the correct link
    Given Navigate to "ContractorEmpRights" form
    Then Validate facebook url in footer
    #Todo: I think we need to add a step in here to check if the link opens in the same tab or different one.
    Then Back to previous page
    Then Validate current page is "ContractorEmpRights"

  Scenario: footer instagram url test
    - Click on instagram icon, check if goes to the correct link
    Given Navigate to "ContractorEmpRights" form
    Then Validate instagram url in footer
    Then Back to previous page
    Then Validate current page is "ContractorEmpRights"

  Scenario: footer twitter url test
    - Click on twitter icon, check if goes to the correct link
    Given Navigate to "ContractorEmpRights" form
    Then Validate twitter url in footer
    Then Back to previous page
    Then Validate current page is "ContractorEmpRights"







