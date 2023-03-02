Feature: BetterTaxPtor Page fields test


  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "<string>" in ""מספר תיק בנין""
    When click on "בדיקת אופציה לפטור" Button

  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write an invalid value "<string>" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" Button

  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "<string>" in ""מספר תיק בנין""
    When click on "בדיקת אופציה לפטור" Button

  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "<string>" in ""מספר תיק בנין""
    When click on "שמור" icon


  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "<string>" in ""מספר תיק בנין""
    When click on "הדפס" icon


  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When click on "מידע" icon
    Then validate information dialog is opened
    Then validate information dialog contains "טופס זה הוא טופס מקוון,"
    Then validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button








