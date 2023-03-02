Feature: Test Scenarios for CollectiveLifeInsurance Page


  Scenario: general test for all fields
    Given Navigate to "CollectiveLifeInsurance" form
    When click on "מידע" icon
    Then validate information dialog is opened
    Then validate information dialog contains "טופס זה הוא טופס מקוון,"
    Then validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button
    When click on "שמור" icon
    When click on "הדפס" icon
    When write a valid value "VALUE" in "מספר זהות"
    When click on "שלח קוד זיהוי" button


  Scenario: general test for all fields
    Given Navigate to "CollectiveLifeInsurance" form
    When click on "מידע" icon
    Then validate information dialog is opened
    Then validate information dialog contains "טופס זה הוא טופס מקוון,"
    Then validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button



