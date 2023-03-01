Feature: ConfirmationForStructure Form Page

  Scenario: Validate Municiplity Logo is displayed in old header
    Given I navigate to "ConfirmationForStructure" page
    Then Validate Municiplity Logo is displayed in header

  Scenario: Validate old Header Title is default
    Given I navigate to "ConfirmationForStructure" page
    Then Validate Header Title is default


  Scenario: Validate Form explanation in old header contains text
    Given I navigate to "ConfirmationForStructure" page
    Then Validate Header language option is displayed


  Scenario: Validate Form explanation in old header exists and contains/ at least number of chars
    Given I navigate to "ConfirmationForStructure" page
    Then Validate Form Title is "שרותים דיגיטליים"

  Scenario: Validate Form explanation in old header exists and contains/ at least number of chars
    Given I navigate to "ConfirmationForStructure" page
    Then Validate current step is "1"

  Scenario: Validate Form explanation in old header exists and contains/ at least number of chars
    Given I navigate to "ConfirmationForStructure" page
    Then Validate steps count is "3"


  Scenario: Validate Form explanation in old header exists and contains/ at least number of chars
    Given I navigate to "ConfirmationForStructure" page
    Then Validate Form explanation contains "לצורך בירור נא למלא"

  Scenario: Validate Form explanation in old header exists and contains/ at least number of chars
    Given I navigate to "ConfirmationForStructure" page
    Then Validate Form explanation exists and contains/ at least "10" chars



