Feature: old footer test


  @sanity
  @blocker
  Scenario: footer elements test
    Given I navigate to "PlaceContainer" page
    Then Validate Facebook Logo is displayed in old footer
    Then Validate Instagram Logo is displayed in old footer
    Then Validate Twitter Logo is displayed in old footer
    Then Validate old footer call us is displayed
    Then Validate old footer follow us is displayed
    Then Validate old footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    Then Validate old footer follow us text is "עקבו אחרינו"
    Then Validate old footer call us has the default text
    Then Validate old footer follow us has the default text


  @sanity
  @blocker
  Scenario: footer facebook url test
    Given I navigate to "PlaceContainer" page
    Then Validate facebook url in old footer
    Then Back to previous page
    Then Validate current page is "PlaceContainer"



  @sanity
  @blocker
  Scenario: footer instagram url test
    Given I navigate to "PlaceContainer" page
    Then Validate instagram url in old footer
    Then Back to previous page
    Then Validate current page is "PlaceContainer"



  @sanity
  @blocker
  Scenario: footer twitter url test
    Given I navigate to "PlaceContainer" page
    Then Validate twitter url in old footer
    Then Back to previous page
    Then Validate current page is "PlaceContainer"


