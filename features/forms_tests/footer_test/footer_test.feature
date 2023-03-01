Feature: footer test



  @sanity
  @blocker
  Scenario: footer test
    Given I navigate to "FreedomInfo" page
    Then Validate footer call us is displayed
    Then Validate footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    Then Validate footer call us has the default text
    Then Validate footer privacy policy is displayed
    Then Validate footer privacy policy is "This site is protected by reCAPTCHA and the Google Privacy Policy and Terms of Service apply."
    Then Validate footer privacy policy has the default text



