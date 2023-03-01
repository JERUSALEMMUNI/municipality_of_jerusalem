Feature: Basic Test for contractoremprights Form Page

  Scenario: Validate information dialog
    Given I navigate to "ContractorEmpRights" page
    When click on "מידע" icon
    Then Validate information dialog is opened
    Then Validate information dialog text in old header exists and contains/ at least "10" chars
    Then Validate information dialog contains "טופס זה הוא"
    #Then Validate information dialog is closed