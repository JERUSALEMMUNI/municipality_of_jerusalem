Feature: BetterTaxPtor Page fields test


  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "3327485962" in "מספר תיק בנין"
    And click on "בדיקת אופציה לפטור" Button

  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write an invalid value "23456yudj" in "מספר תיק בנין"
    When click on "בדיקת אופציה לפטור" Button


  Scenario: general test for all fields
    Given Navigate to "BetterTaxPtor" form
    When write a valid value "1234567884" in ""מספר תיק בנין""
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



  Scenario: Header elements test
    Given Navigate to "BetterTaxPtor" form
    Then validate municipality logo is displayed in old header
    And validate old header title is default
    And validate form Title in old header is "תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה"
    And validate form explanation in old header contains "טופס זה נועד לסייע לך בהגשת תלונה בגין פגיעה "
    And validate form explanation in old header exists and contains at least "20" chars


  Scenario: Footer elements test
    Given Navigate to "BetterTaxPtor" form
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
    Given Navigate to "BetterTaxPtor" form
    Then Validate facebook url in old footer
    Then Back to previous page
    Then Validate current page is "BetterTaxPtor"


  Scenario: footer instagram url test
    Given Navigate to "BetterTaxPtor" form
    Then Validate instagram url in old footer
    Then Back to previous page
    Then Validate current page is "BetterTaxPtor"

  Scenario: footer twitter url test
    Given Navigate to "BetterTaxPtor" form
    Then Validate twitter url in old footer
    Then Back to previous page
    Then Validate current page is "BetterTaxPtor"









