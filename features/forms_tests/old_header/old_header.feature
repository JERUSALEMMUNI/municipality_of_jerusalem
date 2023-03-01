Feature: PlaceContainer Form Page


  Scenario: Validate Municiplity Logo is displayed in old header
    Given I navigate to "PlaceContainer" page
    Then Validate Municiplity Logo is displayed in old header

  Scenario: Validate old Header Title is default
    Given I navigate to "PlaceContainer" page
    Then Validate old Header Title is default


  Scenario: Validate Form explanation in old header contains text
    Given I navigate to "PlaceContainer" page
    Then Validate Form explanation in old header contains "קבלן בעל רישיון עסק"


  Scenario: Validate Form explanation in old header exists and contains/ at least number of chars
    Given I navigate to "PlaceContainer" page
    Then Validate Form explanation in old header exists and contains/ at least "10" chars
