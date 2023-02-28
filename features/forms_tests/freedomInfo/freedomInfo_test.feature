Feature: Basic Test for FreedomInfo Form Page


  Scenario: general test for all fields with type in input in the address
    Given I navigate to "FreedomInfo" page
    When I write "332796184" in "זיהוי"
    And I write "פראס" in "שם פרטי"
    And I write "אבו סנינה" in "שם משפחה"
    And I entered "077-8078687" in "טלפון נייד"
    And I entered "04-7987688" in "טלפון קווי"
    And I write "firas@ab.com" in "דוא"ל"
#    And I select "דרכון" in "סוג זיהוי"
    And search on "ת.ז." in "סוג זיהוי"
    When I write address as "ירושלים" in "יישוב"
    When I write address as "א טור" in "רחוב"
    And I write "30" in "מספר בית"
    And I write "34" in "מיקוד"
    And Am I in the "1" page
    And We have "3" pages in this screen
    Then I click on "המשך" button
#
#
# Scenario: general test for all fields with search in input in the address
#    Given I navigate to "FreedomInfo" page
#    When I write "332796184" in "זיהוי"
#    And I write "פראס" in "שם פרטי"
#    And I write "אבו סנינה" in "שם משפחה"
#    And I entered "077-8078687" in "טלפון נייד"
#    And I entered "04-7987688" in "טלפון קווי"
#    And I write "firas@ab.com" in "דוא"ל"
#    And I select "דרכון" in "סוג זיהוי"
#    When I search address as "ירושלים" in "יישוב"
#    When I search address as "א טור" in "רחוב"
#    And I write "30" in "מספר בית"
#    And I write "34" in "מיקוד"
#    And Am I in the "1" page
#    And We have "3" pages in this screen
#    Then I click on "המשך" button
#
#
#   Scenario: Empty first name error msg
#      Given I navigate to "FreedomInfo" page
#      When  I write "  " in "שם פרטי"
#      Then  field "שם פרטי" has invalid value
#      And  check if "שם פרטי" error is "empty_field_error"
#
#   Scenario: wrong language first name error msg
#      Given I navigate to "FreedomInfo" page
#      When  I write "firas@%2" in "שם פרטי"
#      Then  field "שם פרטי" has invalid value
#      And  check if "שם פרטי" error is "language_error"
#
#   Scenario: Empty last name error msg
#      Given I navigate to "FreedomInfo" page
#      When  I write "  " in "שם משפחה"
#      Then  field "שם משפחה" has invalid value
#      And  check if "שם משפחה" error is "empty_field_error"
#
#   Scenario: wrong language last name error msg
#      Given I navigate to "FreedomInfo" page
#      When  I write "firas@%2" in "שם משפחה"
#      Then  field "שם משפחה" has invalid value
#      And  check if "שם משפחה" error is "language_error"
#
#  Scenario: Empty id error msg there is a problem
#      Given I navigate to "FreedomInfo" page
#      When  I write "   " in "זיהוי"
#      Then  field "זיהוי" has invalid value
#      And  check if "זיהוי" error is "empty_field_error"
#
#   Scenario: Empty phone number error msg
#      Given I navigate to "FreedomInfo" page
#      When I entered "052- " in "טלפון נייד"
#      Then field "טלפון נייד" has invalid value
#      And check if "טלפון נייד" error is "incomplete_unclean_phone_number_error"
#
#   Scenario: incomplete phone number error msg
#      Given I navigate to "FreedomInfo" page
#      When I entered "052-44" in "טלפון נייד"
#      Then field "טלפון נייד" has invalid value
#      And check if "טלפון נייד" error is "incomplete_phone_number_error"
#
#   Scenario: using language phone number error msg
#      Given I navigate to "FreedomInfo" page
#      When I entered "052-44ad" in "טלפון נייד"
#      Then field "טלפון קווי" has invalid value
#      And check if "טלפון קווי" error is "incomplete_unclean_phone_number_error"
#
#   Scenario: Empty home phone number error msg
#      Given I navigate to "FreedomInfo" page
#      When I entered "02-    " in "טלפון קווי"
#      Then field "טלפון קווי" has invalid value
#      And check if "טלפון קווי" error is "incomplete_unclean_phone_number_error"
#
#   Scenario: incomplete home phone number error msg
#      Given I navigate to "FreedomInfo" page
#      When I entered "03-44" in "טלפון קווי"
#      Then field "טלפון קווי" has invalid value
#      And check if "טלפון קווי" error is "incomplete_phone_number_error"
#
#   Scenario: using language home phone number error msg
#      Given I navigate to "FreedomInfo" page
#      When I entered "02-44שגשג" in "טלפון קווי"
#      Then field "טלפון קווי" has invalid value
#      And check if "טלפון קווי" error is "incomplete_unclean_phone_number_error"
#
#  Scenario: Empty email error msg there is a problem with it
#      Given I navigate to "FreedomInfo" page
#      When I write " " in "דוא"ל"
#      Then field "דוא"ל" has invalid value
#      And check if "דוא"ל" error is "empty_field_error"
#
#   Scenario: unclean email error msg
#      Given I navigate to "FreedomInfo" page
#      When I write "firas" in "דוא"ל"
#      Then field "דוא"ל" has invalid value
#      And check if "דוא"ל" error is "unclean_email_error"
#
#   Scenario: unclean house number error msg
#      Given I navigate to "FreedomInfo" page
#      When I write "firas" in "מספר בית"
#      Then field "מספר בית" has invalid value
#      And check if "מספר בית" error is "enter_letters_error"
#
#   Scenario: unclean postal number error msg
#      Given I navigate to "FreedomInfo" page
#      When I write "firas" in "מיקוד"
#      Then field "מיקוד" has invalid value
#      And check if "מיקוד" error is "enter_letters_error"
#
#  Scenario: test if language selected
#    Given I navigate to "FreedomInfo" page
#    When Is "עברית" language  is selected
#
#  Scenario: header footer test
#    Given I navigate to "FreedomInfo" page
#    When check if the application tittle is "שרותים דיגיטליים"
##    When I change page language to "العربية"
#    And check if  "العربية" language is in the application
#    And check if the application pic is available
#    And check if the application name is "חופש המידע"
#    And check if the application steps is available
#    And check if the application explanation is available
#    And check if the application rules are "שדות המסומנים ב-* (כוכבית) הם שדות חובה"
#    And check if the application call us is available
#    And check if the application privacy policy is available
#
#  Scenario Outline: first name (valid)
#    Given I navigate to "FreedomInfo" page
#    When I write " <first_name> " in "שם פרטי"
#    Then field "שם פרטי" has valid value
#    Examples:
#    | first_name  |
#    | פראס  |
#    | סנינה_אבו_פראס  |
#    | סנינה-אבו-פראס  |
#    | (פראס)  |
#    | פראס`אבו סנינה  |
#    | פראס,אבו,סנינה  |
#    | פראס.אבו.סנינה  |
#    | סנינה"אבו"פראס  |
#    | אבו/פראס/סנינה  |
#    | פראס()_-אבו סנינה  |
#    | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג   |
#    | פ    |
#    | פ)(_-.,ץשדג |
#
#  Scenario Outline: first name (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I write " <first_name> " in "שם פרטי"
#    Then field "שם פרטי" has invalid value
#    Examples:
#    | first_name  |
#    | فراس  |
#    | firas   |
#    | 1234    |
#    |         |
#    | !@#$%%  |
#    | פראסضض  |
#    | פראסwdd  |
#    | פראס123  |
#    | פראס!@##  |
#
#  Scenario Outline: last name (valid)
#    Given I navigate to "FreedomInfo" page
#    When I write "<last_name>" in "שם משפחה"
#    Then field "שם משפחה" has valid value
#    Examples:
#    | last_name  |
#    | פראס  |
#    | סנינה_אבו_פראס  |
#    | סנינה-אבו-פראס  |
#    | (פראס)  |
#    | פראס`אבו סנינה  |
#    | פראס,אבו,סנינה  |
#    | פראס.אבו.סנינה  |
#    | סנינה"אבו"פראס  |
#    | אבו/פראס/סנינה  |
#    | פראס()_-אבו סנינה  |
#    | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג   |
#    | פ    |
#    | פ)(_-.,ץשדג |
#
#  Scenario Outline: last name (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I write "<last_name>" in "שם משפחה"
#    Then field "שם משפחה" has invalid value
#    Examples:
#    | last_name  |
#    | فراس  |
#    | firas   |
#    | 1234    |
#    |         |
#    | !@#$%%  |
#    | פראסضض  |
#    | פראסwdd  |
#    | פראס123  |
#    | פראס!@##  |
#
#  Scenario Outline: id (valid)
#    Given I navigate to "FreedomInfo" page
#    When I write "<id>" in "זיהוי"
#    Then field "זיהוי" has valid value
#    Examples:
#    | id  |
#    | 332796184 |
#    | 227638475 |
#    | 112233445 |
#    | 775588443 |
#    | 998877873 |
#    | 233244556 |
#    | 337868449 |
#    | 338879087 |
#
#  Scenario Outline: id (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I write "<id>" in "זיהוי"
#    Then field "זיהוי" has invalid value
#    Examples:
#    | id  |
#    | 1111111 |
#    | 000000000|
#    | 87389228312232112312 |
#    | 3327 |
#    | 000000018 |
#    | 000000009 |
#    | 1111111111 |
#    | 11111111111111111111 |
#    | 111111111111111111111111 |
#    | 3239827884 |
#    | 3327qwer |
#    | 3327!@# |
#    |         |
#    | 3319  |
#    | 8888  |
#    | 0117  |
#    | 0190   |
#
#  Scenario Outline: email (valid)
#    Given I navigate to "FreedomInfo" page
#    When I write "<email> in "דוא"ל"
#    Then field "דוא"ל" has valid value
#    Examples:
#    | email  |
#    | firas@ajj.com  |
#    |  1234@12.com |
#    | sam@ss.co |
#    | sam@12334.com |
#
#  Scenario Outline: email (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I write "<email> in "דוא"ל"
#    Then field "דוא"ל" has invalid value
#    Examples:
#    | email  |
#    | |
#    | ابوسنينة@ستت.com  |
#    | יכחלכלגל@חחגגח.com |
#    | sjskldffl  |
#    | 124445  |
#    | ששגכעי |
#    | sdfghj  |
#    | dgjfk!@jsk.com  |
#    | djdkdjf@kads |
#    | skslsm@jdkddkcom |
#    | sam@ss.c |
#    | sam@ss.comaa |
#    | sam@ss.casasaddfeff |
#    | firas@sls.123 |
#    | a@b.com.com.com.com|
#    | a@b.................com |
#    | 123312123322111@11222222222222222222222222.com|
#    | a@b.com.122|
#    | a@b.com.|
#    | A@B.COM |
#    | A@b.cOm |
#    | com....@.... |
#    | a%@b.com |
#    | a_----___---_____r@b.com|
#    | a+r@b.com|
#    | a@b.comb|
#
#  Scenario Outline: phone number (valid)
#    Given I navigate to "FreedomInfo" page
#    When I entered "<phone_number>" in "טלפון נייד"
#    Then field "טלפון נייד" has valid value
#    Examples:
#    | phone_number  |
#    | 052-8076283|
#    | 056-8072283|
#    | 052-9807628|
#
#  Scenario Outline: phone number (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I entered "<phone_number>" in "טלפון נייד"
#    Then field "טלפון נייד" has invalid value
#    Examples:
#    | phone_number  |
#    | |
#    | ابوسنينة  |
#    | ידידדל |
#    | shjkfkf  |
#    |  12323822833838374744 |
#    | 1  |
#    | 33271aaa  |
#    | 33271שדגג |
#    | 33271شششس  |
#    | 332798@#$  |
#    | !@#$% |
#    | 8076374|
#    | 052>8076283|
#    | 052.8076283|
#    | 052,8076283|
#    | 0528076283|
#    | 052807628!|
#
#  Scenario Outline: home phone number (valid)
#    Given I navigate to "FreedomInfo" page
#    When I entered "<phone_number>" in "טלפון קווי"
#    Then field "טלפון קווי" has valid value
#    Examples:
#    | phone_number  |
#    | 02-8076283|
#    | 03-6807628|
#    | 04-9807623|
#
#  Scenario Outline: home phone number (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I entered "<phone_number>" in "טלפון קווי"
#    Then field "טלפון קווי" has invalid value
#    Examples:
#    | phone_number  |
#    | |
#    | ابوسنينة  |
#    | ידידדל |
#    | shjkfkf  |
#    |  12323822833838374744 |
#    | 1  |
#    | 33271aaa  |
#    | 33271שדגג |
#    | 33271شششس  |
#    | 332798@#$  |
#    | !@#$% |
#    | 8076374|
#    | 052>8076283|
#    | 052.8076283|
#    | 052,8076283|
#    | 0528076283|
#    | 052807628!|
#
#  Scenario Outline: home number (valid)
#    Given I navigate to "FreedomInfo" page
#    When I write " <home_number> " in "מספר בית"
#    Then field "מספר בית" has valid value
#    Examples:
#    | home_number  |
#    | 1  |
#    | 1000  |
#    | 2345  |
#    | 2356  |
#    | 8754  |
#    | 0000  |
#    | 0353  |
#    | 1246 |
#    | 2999 |
#    | 7622 |
#    | 87  |
#    | 35   |
#    | 7656 |
#
#  Scenario Outline: home number (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I write " <home_number> " in "מספר בית"
#    Then field "מספר בית" has invalid value
#    Examples:
#    | home_number  |
#    | فراس  |
#    | firas   |
#    | 1234    |
#    |         |
#    | !@#$%%  |
#    | פראסضض  |
#    | פראסwdd  |
#    | פראס123  |
#    | פראס!@##  |
#
#  Scenario Outline: postal number (valid)
#    Given I navigate to "FreedomInfo" page
#    When I write " <postal_number> " in "מיקוד"
#    Then field "מיקוד" has invalid value
#    Examples:
#    | postal_number  |
#    | 2332121  |
#    | 100032  |
#    | 23453 |
#    | 2356  |
#    | 8754  |
#    | 0000  |
#    | 0353  |
#    | 1246 |
#    | 2999 |
#    | 7622 |
#    | 87  |
#    | 35   |
#    | 7656 |
#
#  Scenario Outline: postal number (invalid)
#    Given I navigate to "FreedomInfo" page
#    When I write " <postal_number> " in "מיקוד"
#    Then field "מיקוד" has invalid value
#    Examples:
#    | postal_number  |
#    | فراس  |
#    | firas   |
#    | 1234    |
#    |         |
#    | !@#$%%  |
#    | פראסضض  |
#    | פראסwdd  |
#    | פראס123  |
#    | פראס!@##  |
#
#  Scenario: change language to arabic test
#    Given I navigate to "FreedomInfo" page
#    When I change page language to "العربية"
#
