@in_dev
Feature: BetterTaxPtor form - checklist scenarios

  - Form name: בקשה לפטור מהיטל השבחה-בהליך הוצאת היתר
  - Feature file name: better_tax_ptor.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/BetterTaxPtor
  - Number of Pages is : 1, We are at Page: 1
  - All fields are mandatory
  - Page Information: same feature with multi values
  -

  Scenario: TC_IDENT_04 checklist - Enter a correct file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "111" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button


  Scenario: TC_IDENT_05 checklist - Enter an incorrect file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "111" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button

  Scenario: TC_IDENT_06 checklist - Enter a partial file number to the "מספר תיק בנין" field
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "111" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" button

  Scenario: TC_IDENT_07 checklist - Click on "שמור" button after entering the file number
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "111" in "מספר תיק בנין"
    When from header click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"

  Scenario: TC_IDENT_08 checklist - Click on "הדפס" button after entering the file number
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "111" in "מספר תיק בנין"
    When from header click on "הדפס" icon
     When click on cancel button


