@test_this
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
    When from header click on "מידע" icon
    Then validate information dialog is opened
    Then validate information dialog contains "טופס זה הוא טופס מקוון,"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button
    Then validate information dialog is closed


  Scenario: TC_IDENT_02 - Click on "שמור" button before entering the file number
    Given Navigate to "BetterTaxPtor" form
    When from header click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
#    When close error message


#  Scenario: TC_IDENT_03 - Click on "הדפס" button before entering the file number
#    Given Navigate to "BetterTaxPtor" form
#    When from header click on "הדפס" icon
#    When click on cancel button
#    When from header click on "הדפס" icon
#    When click on print button
#    # alias
#    When I save the document as "new_file1"
#    Then I compare "new_file1" with reference pdf file "BetterTaxPtor_empty_form"

  Scenario: TC_IDENT_04 - Enter a correct file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "11111" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button
    Then an error message appeared with the following description: "מספר תיק רישוי לא קיים"

  Scenario: TC_IDENT_05 - Enter an incorrect file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write an invalid value "sdsd" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button
    Then an error message appeared with the following description: "מספר תיק רישוי לא קיים"

  Scenario: TC_IDENT_06 - Enter a partial file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "31545" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button
    Then an error message appeared with the following description: "מספר תיק רישוי לא קיים"

  Scenario: TC_IDENT_07 - Click on "שמור" button after entering the file number
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "11111111" in "מספר תיק בנין"
    When from header click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"

  Scenario: TC_IDENT_08 - Click on "הדפס" button after entering the file number
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "11111111" in "מספר תיק בנין"
    When from header click on "הדפס" icon
    When click on cancel button


#------------------------------------------------------------------------------------------------
  @header
  Scenario: Header elements test
    Given Navigate to "BetterTaxPtor" form
    Then validate municipality logo is displayed in old header
    And validate old header title is default
    And validate form Name in old header is "בקשה לפטור מהיטל השבחה-בהליך הוצאת היתר"
    And validate form explanation in old header contains "בבקשה להיתר אשר אושרה בועדה ניתן להגיש בקשות לפטור מהיטל השבחה"
    And validate form explanation in old header exists and contains at least "20" chars

  @footer
  Scenario: footer check (ContractorEmpRights)
    Given Navigate to "BetterTaxPtor" form
    Then validate Facebook Logo is displayed in footer
    And validate Instagram Logo is displayed in footer
    And validate Twitter Logo is displayed in footer
    And validate facebook url in footer
    And Back to previous page
    And validate instagram url in footer
    And Back to previous page
    And validate twitter url in footer
    And Back to previous page
    And validate footer follow us is displayed
    And validate footer follow us text is "עקבו אחרינו"
    And validate footer follow us text is default as "עקבו אחרינו"
    And validate footer call us is displayed
    And validate footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    And validate footer call us text is default as "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א - ה בין 08:30-16:00"
