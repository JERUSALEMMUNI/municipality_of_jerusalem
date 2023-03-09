@in_dev
    #ToDo : wait for the popup message

Feature: BetterTaxPtor form

  - Form name: בקשה לפטור מהיטל השבחה-בהליך הוצאת היתר
  - Feature file name: better_tax_ptor.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/BetterTaxPtor
  - Number of Pages is : 1, We are at Page: 1
  - All fields are mandatory
  - Page Information:
  -

  #ToDo : חסר מספר תיק בנין

  Scenario: TC_IDENT_01 - Click on "מידע" button after form opened
    Given Navigate to "BetterTaxPtor" form
    When click on "מידע" icon
    Then validate information dialog is opened
    Then validate information dialog contains "טופס זה הוא טופס מקוון,"
    Then validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button


  Scenario: TC_IDENT_02 - Click on "שמור" button before entering the file number
    Given Navigate to "BetterTaxPtor" form
    When click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
    When close error message


  Scenario: TC_IDENT_03 - Click on "הדפס" button before entering the file number
    Given Navigate to "BetterTaxPtor" form
    When click on "הדפס" icon

  Scenario: TC_IDENT_04 - Enter a correct file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "11111" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button
    Then an error message appeared with the following description: "מספר תיק רישוי לא קיים"
    When close error message

  Scenario: TC_IDENT_05 - Enter an incorrect file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write an invalid value "sdsd" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button
    Then an error message appeared with the following description: "מספר תיק רישוי לא קיים"
    When close error message

  Scenario: TC_IDENT_06 - Enter a partial file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "31545" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button
    Then an error message appeared with the following description: "מספר תיק רישוי לא קיים"
    When close error message

  Scenario: TC_IDENT_07 - Click on "שמור" button after entering the file number
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "11111111" in "מספר תיק בנין"
    When click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
    When close error message

  Scenario: TC_IDENT_08 - Click on "הדפס" button after entering the file number
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "11111111" in "מספר תיק בנין"
    When click on "הדפס" icon


#------------------------------------------------------------------------------------------------
  Scenario: Header elements test
    Given Navigate to "BetterTaxPtor" form
    Then validate municipality logo is displayed in old header
    And validate old header title is default
    And validate form Title in old header is "שרותים דיגיטליים"
    And validate form explanation in old header contains "בבקשה להיתר אשר אושרה בועדה ניתן להגיש בקשות לפטור מהיטל השבחה"
    And validate form explanation in old header exists and contains at least "20" chars


  Scenario: Footer elements test
    Given Navigate to "BetterTaxPtor" form
    Then Validate Facebook Logo is displayed in footer
    And Validate Instagram Logo is displayed in footer
    And Validate Twitter Logo is displayed in footer
    And Validate old footer call us is displayed
    And Validate old footer follow us is displayed
    And Validate old footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    And Validate old footer follow us text is "עקבו אחרינו"
    And Validate old footer call us has the default text
    And Validate old footer follow us has the default text


  Scenario: footer facebook url test
    Given Navigate to "BetterTaxPtor" form
    Then Validate facebook url in footer
    And Back to previous page
    And Validate current page is "BetterTaxPtor"


  Scenario: footer instagram url test
    Given Navigate to "BetterTaxPtor" form
    Then Validate instagram url in footer
    And Back to previous page
    And Validate current page is "BetterTaxPtor"

  Scenario: footer twitter url test
    Given Navigate to "BetterTaxPtor" form
    Then Validate twitter url in footer
    And Back to previous page
    And Validate current page is "BetterTaxPtor"
