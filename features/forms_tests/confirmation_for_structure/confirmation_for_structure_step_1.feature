Feature: Basic Test for ConfirmationForStructure Form Page
@in_dev
Scenario: general test for all mandatory fields
    Given Navigate to "ConfirmationForStructure" form
    When write a valid value "332796184" in "מספר ת.ז."
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
