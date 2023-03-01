Feature: Basic Test for MedicalAssistant Form Page

Scenario:test first name empty and invalid
    Given I navigate to "MedicalAssistant" page
    When pick "27/9/2019" from calendar of "תאריך לידה תלמיד/ה"
#    When write date "2/4/2000" in "תאריך לידה תלמיד/ה"
    And I wait for "6" seconds
    Then validate picked date of "תאריך לידה תלמיד/ה" is "02/04/2000"
    Then checking on dialog alert in "תאריך לידה תלמיד/ה"


#  # making senario for tittle
#  Scenario: Check explanation of form
#    Given I navigate to "MedicalAssistant" page
#    Then check the tittle is "הגשת בקשה לסיוע מלווה למטרת טיפול"
#    And Check if the tittle have text
#
#
#   #  making senario for info button
#  Scenario:check saving the form befor fill the form
#    Given I navigate to "MedicalAssistant" page
#    When I click on "מידע"
#    Then check message is "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב"
#
## making senario for print button
#  Scenario: Check Print display
#    Given I navigate to "MedicalAssistant" page
#    When I click on "הדפס"
#    And Check if Print display is clear
#
#
## making senario for רישום לשנת לימודים
#  Scenario: year of edu test (valid)
#    Given I navigate to "MedicalAssistant" page
#    When select "תשפ"ד" in "רישום לשנת לימודים"
#    Then Check field "רישום לשנת לימודים" has valid value
#
#  Scenario:year of edu test (invalid)
#    Given I navigate to "MedicalAssistant" page
#    When select "תשפ"ד" in "רישום לשנת לימודים"
#    Then Click on "המשך"
#    Then Check field "רישום לשנת לימודים" has invalid value
#
#
##making senrio for student =======================================================
#
##   making senario for select id
#  Scenario:select id  test (active)
#    Given I navigate to "MedicalAssistant" page
#    When click on "ת.ז." in "סוג זהות"
#    Then Check if field "ת.ז." is active
#    Then Check if field "דרכון" is not active
#
## making senario for select passport
#  Scenario:select passport test (active)
#    Given I navigate to "MedicalAssistant" page
#    When click on "דרכון" in "סוג זהות"
#    Then Check if field "דרכון" is active
#    Then Check if field "ת.ז." is not active
#
#
#  Scenario Outline: id for student value test (invalid)
#    Given I navigate to "MedicalAssistant" page
#    When I write "<id>" in "ת"ז תלמיד/ה"
#    Then Check field "ת"ז תלמיד/ה" has invalid value
#    Examples:
#      | id                         |
#      | 000000001                  |
#      | 000000118                  |
#      | 000000009                  |
#      | 3121                       |
#      | 34379818234336234724282    |
#      | 92443232                   |
#      | salem12321342133           |
#      | salem12343457893r44677458  |
#      | 83427961833                |
#      | 3219                       |
#      | 8883                       |
#      | 0157                       |
#      | 0180                       |
#      | 22345556754                |
#      | 23e23444322343355          |
#      | 33sham344557895            |
#      | 33ק'/דגגבשד344554897       |
#      | 33ק'سببسث344567897         |
#      | 33ק'/דגגכבבשד34557897      |
#      | 33!@#$%3445765897          |
#      | 33زسيhhjכעיח!@#$%344557457 |
#      | 331133232ssd24312233       |
#      | 01                         |
#      | 231312324                  |
#      | 453344553                  |
#      | 612235427                  |
#      | 322314466                  |
#      | 613167101                  |
#      | 213141517                  |
#      | 293942999                  |
#      | 135416541                  |
#      | 224222424                  |
#      | 108102581                  |
#      | 233243236                  |
#      | 154528136                  |
#      | 160786030                  |
#
#
#  Scenario Outline: id for student value test (valid)
#    Given I navigate to "MedicalAssistant" page
#    When I write "<id>" in "ת"ז תלמיד/ה"
#    Then Check field "ת"ז תלמיד/ה" has valid value
#    Examples:
#      | id        |
#      | 301240149 |
#
#  @critical
#  Scenario Outline: First name for student value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<text>" in "שם פרטי"
#    Then Check field "שם פרטי" has invalid value
#    Examples:
#      | text              |
#      | אבגד/()'.,_-זחט12 |
#      | אבגד/()'.,_-זחט!  |
#      | אבגד/()'.,_-זחט@  |
#      | אבגד/()'.,_-זחט#  |
#      | אבגד/()'.,_-זחט$  |
#      | אבגד/()'.,_-זחט%  |
#      | אבגד/()'.,_-זחט^  |
#      | אבגד/()'.,_-זחט&  |
#      | אבגד/()'.,_-זחט*  |
#      | אבגד/()'.,_-זחט+  |
#      | אבג/12            |
#      | דהו!              |
#      | זחט@              |
#      | יכל#              |
#      | מנס$              |
#      | פצק%              |
#      | רשת^              |
#      | בגדי&             |
#      | הוזח*             |
#      | לכמנ+             |
#      | אבג/12            |
#      | דהו!              |
#      | זחט@              |
#      | יכל#              |
#      | מנס$              |
#      | פצק%              |
#      | רשת^              |
#      | 32kj4k324         |
#      | 432اتتاלחךל       |
#      | כגד09לחi09تهךח    |
#      | 234324324         |
#      | בגדי&             |
#      | הוזח*             |
#      | לכמנ+             |
#      | אבג/()            |
#      | רשת12             |
#      | חכלכיעחלך         |
#      | בגדי!             |
#      | הוזח@             |
#      | לכמנ#             |
#
#  @critical
#  Scenario Outline: First name for student value test (valid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<text>" in "שם פרטי"
#    Then field "שם פרטי" has valid value
#    Examples:
#      | text                                               |
#      | גדכגדכ                                             |
#      | דגכככככככככ                                        |
#      | םיעןחפםעיח                                         |
#      | שדגכעיחלךלחיעכגדגכעיחלךלחיעכגדגכעיחלךלחיעכגכעיחלךל |
#      | ךלחגדכ(דגכ)                                        |
#      | ש                                                  |
#
#
#  @critical
#  Scenario Outline: last name for student value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<text>" in "שם משפחה"
#    Then field "שם משפחה" has invalid value
#    Examples:
#      | text              |
#      | אבגד/()'.,_-זחט12 |
#      | אבגד/()'.,_-זחט!  |
#      | אבגד/()'.,_-זחט@  |
#      | אבגד/()'.,_-זחט#  |
#      | אבגד/()'.,_-זחט$  |
#      | אבגד/()'.,_-זחט%  |
#      | אבגד/()'.,_-זחט^  |
#      | אבגד/()'.,_-זחט&  |
#      | אבגד/()'.,_-זחט*  |
#      | אבגד/()'.,_-זחט+  |
#      | אבג/12            |
#      | דהו!              |
#      | זחט@              |
#      | יכל#              |
#      | מנס$              |
#      | פצק%              |
#      | רשת^              |
#      | בגדי&             |
#      | הוזח*             |
#      | לכמנ+             |
#      | אבג/12            |
#      | דהו!              |
#      | זחט@              |
#      | יכל#              |
#      | מנס$              |
#      | פצק%              |
#      | רשת^              |
#      | 32kj4k324         |
#      | 432اتتاלחךל       |
#      | כגד09לחi09تهךח    |
#      | 234324324         |
#      | בגדי&             |
#      | הוזח*             |
#      | לכמנ+             |
#      | אבג/()            |
#      | רשת12             |
#      | חכלכיעחלך         |
#      | בגדי!             |
#      | הוזח@             |
#      | לכמנ#             |
#
#  @critical
#  Scenario Outline: last name for student value test (valid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<text>" in "שם משפחה"
#    Then field "שם משפחה" has valid value
#    Examples:
#      | text                                               |
#      | גדכגדכ                                             |
#      | דגכככככככככ                                        |
#      | םיעןחפםעיח                                         |
#      | שדגכעיחלךלחיעכגדגכעיחלךלחיעכגדגכעיחלךלחיעכגכעיחלךל |
#      | ךלחגדכ(דגכ)                                        |
#      | ש                                                  |
#
#
#    #making senrio for parent =======================================================
#  #   making senario for select id
#  Scenario:select id  test (active)
#    Given I navigate to "MedicalAssistant" page
#    When click on "ת.ז." in "סוג זהות"
#    Then Check if field "ת.ז." is active
#    Then Check if field "דרכון" is not active
#
## making senario for select passport
#  Scenario:select passport test (active)
#    Given I navigate to "MedicalAssistant" page
#    When click on "דרכון" in "סוג זהות"
#    Then Check if field "דרכון" is active
#    Then Check if field "ת.ז." is not active
#
#
#  Scenario Outline: id for parent value test (invalid)
#    Given I navigate to "MedicalAssistant" page
#    When I write "<id>" in "ת"ז תלמיד/ה"
#    Then Check field "ת"ז תלמיד/ה" has invalid value
#    Examples:
#      | id                         |
#      | 000000001                  |
#      | 000000118                  |
#      | 000000009                  |
#      | 3121                       |
#      | 34379818234336234724282    |
#      | 92443232                   |
#      | salem12321342133           |
#      | salem12343457893r44677458  |
#      | 83427961833                |
#      | 3219                       |
#      | 8883                       |
#      | 0157                       |
#      | 0180                       |
#      | 22345556754                |
#      | 23e23444322343355          |
#      | 33sham344557895            |
#      | 33ק'/דגגבשד344554897       |
#      | 33ק'سببسث344567897         |
#      | 33ק'/דגגכבבשד34557897      |
#      | 33!@#$%3445765897          |
#      | 33زسيhhjכעיח!@#$%344557457 |
#      | 331133232ssd24312233       |
#      | 01                         |
#      | 231312324                  |
#      | 453344553                  |
#      | 612235427                  |
#      | 322314466                  |
#      | 613167101                  |
#      | 213141517                  |
#      | 293942999                  |
#      | 135416541                  |
#      | 224222424                  |
#      | 108102581                  |
#      | 233243236                  |
#      | 154528136                  |
#      | 160786030                  |
#
#
#  Scenario Outline: id for parent value test (valid)
#    Given I navigate to "MedicalAssistant" page
#    When I write "<id>" in "ת"ז תלמיד/ה"
#    Then Check field "ת"ז תלמיד/ה" has valid value
#    Examples:
#      | id        |
#      | 301240149 |
#
#  @critical
#  Scenario Outline: First name for parent value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<text>" in "שם פרטי"
#    Then Check field "שם פרטי" has invalid value
#    Examples:
#      | text              |
#      | אבגד/()'.,_-זחט12 |
#      | אבגד/()'.,_-זחט!  |
#      | אבגד/()'.,_-זחט@  |
#      | אבגד/()'.,_-זחט#  |
#      | אבגד/()'.,_-זחט$  |
#      | אבגד/()'.,_-זחט%  |
#      | אבגד/()'.,_-זחט^  |
#      | אבגד/()'.,_-זחט&  |
#      | אבגד/()'.,_-זחט*  |
#      | אבגד/()'.,_-זחט+  |
#      | אבג/12            |
#      | דהו!              |
#      | זחט@              |
#      | יכל#              |
#      | מנס$              |
#      | פצק%              |
#      | רשת^              |
#      | בגדי&             |
#      | הוזח*             |
#      | לכמנ+             |
#      | אבג/12            |
#      | דהו!              |
#      | זחט@              |
#      | יכל#              |
#      | מנס$              |
#      | פצק%              |
#      | רשת^              |
#      | 32kj4k324         |
#      | 432اتتاלחךל       |
#      | כגד09לחi09تهךח    |
#      | 234324324         |
#      | בגדי&             |
#      | הוזח*             |
#      | לכמנ+             |
#      | אבג/()            |
#      | רשת12             |
#      | חכלכיעחלך         |
#      | בגדי!             |
#      | הוזח@             |
#      | לכמנ#             |
#
#  @critical
#  Scenario Outline: First name for parent value test (valid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<text>" in "שם פרטי"
#    Then field "שם פרטי" has valid value
#    Examples:
#      | text                                               |
#      | גדכגדכ                                             |
#      | דגכככככככככ                                        |
#      | םיעןחפםעיח                                         |
#      | שדגכעיחלךלחיעכגדגכעיחלךלחיעכגדגכעיחלךלחיעכגכעיחלךל |
#      | ךלחגדכ(דגכ)                                        |
#      | ש                                                  |
#
#
#
##    making senario for tele-phone=========================================
##insert text and number with lenght 7 or more
#  @critical
#  Scenario Outline: tele-phone value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון"
#    Then field "טלפון" has invalid value
#    Then check error message is "יש להזין ספרות בלבד"
#    Examples:
#      | phone           |
#      | 32kj4k324       |
#      | 432اتتاלחךל     |
#      | כגד09לחi0       |
#      | ass23sadsa      |
#      | 223dd23d23333   |
#      | sasdsaddsds     |
#      | سشيشيشيسشيسش232 |
#      | صضصضصضصيؤربيربي |
#      | @121212         |
#
#
#    #insert text and number with lenght less than 7
#  @critical
#  Scenario Outline: tele-phone value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון"
#    Then field "טלפון" has invalid value
#    Then check error message is "יש להזין ספרות בלבד יש להשלים את הספרות החסרות"
#    Examples:
#      | phone  |
#      | 32kj4  |
#      | اتלל   |
#      | כגדi0  |
#      | 3sadsa |
#      | 2dd23  |
#      | @5%/h  |
#      | سش232  |
#      | صض     |
#      | @      |
#
#     #insert numbers with lenght less than 7
#  @critical
#  Scenario Outline: tele-phone value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון"
#    Then field "טלפון" has invalid value
#    Then check error message is "יש להשלים את הספרות החסרות"
#    Examples:
#      | phone  |
#      | 32     |
#      | 888    |
#      | 112120 |
#      | 00     |
#      | 2      |
#      | 0982   |
#      | 87232  |
#
#
#     #insert numbers with lenght 7
#  @critical
#  Scenario Outline: tele-phone value test (valid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון"
#    Then field  "טלפון" has valid value
#    Examples:
#      | phone   |
#      | 3223726 |
#      | 1111111 |
#      | 1121201 |
#      | 0000000 |
#      | 2502611 |
#
#    #    making senario for mobile=========================================
##insert text and number with lenght 7 or more
#  @critical
#  Scenario Outline: moblie value test (invalid text and number >=7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "מספר טלפון נייד"
#    Then field "מספר טלפון נייד" has invalid value
#    Then check error message is "יש להזין ספרות בלבד"
#    Examples:
#      | phone           |
#      | 32kj4k324       |
#      | 432اتتاלחךל     |
#      | כגד09לחi0       |
#      | ass23sadsa      |
#      | 223dd23d23333   |
#      | sasdsaddsds     |
#      | سشيشيشيسشيسش232 |
#      | صضصضصضصيؤربيربي |
#      | @121212         |
#
#
#    #insert text and number with lenght less than 7
#  @critical
#  Scenario Outline: moblie value test (invalid text and number <7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "מספר טלפון נייד"
#    Then field "מספר טלפון נייד" has invalid value
#    Then check error message is "יש להזין ספרות בלבד יש להשלים את הספרות החסרות"
#    Examples:
#      | phone  |
#      | 32kj4  |
#      | اتלל   |
#      | כגדi0  |
#      | 3sadsa |
#      | 2dd23  |
#      | @5%/h  |
#      | سش232  |
#      | صض     |
#      | @      |
#
#     #insert numbers with lenght less than 7
#  @critical
#  Scenario Outline: moblie value test (invalid number>7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "מספר טלפון נייד"
#    Then field "מספר טלפון נייד" has invalid value
#    Then check error message is "יש להשלים את הספרות החסרות"
#    Examples:
#      | phone  |
#      | 32     |
#      | 888    |
#      | 112120 |
#      | 00     |
#      | 2      |
#      | 0982   |
#      | 87232  |
#
#     #empty text
#  @critical
#  Scenario : moblie no value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "phone" in "מספר טלפון נייד"
#    When I clear "מספר טלפון נייד"
#    Then field "מספר טלפון נייד" has invalid value
#    Then check error message is "יש להזין מספר טלפון נייד"
#
#
#     #insert numbers with lenght 7
#  @critical
#  Scenario Outline: moblie value test (valid number=7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "מספר טלפון נייד"
#    Then field  "מספר טלפון נייד" has valid value
#    Examples:
#      | phone   |
#      | 3223726 |
#      | 1111111 |
#      | 1121201 |
#      | 0000000 |
#      | 2502611 |
#
#       #    making senario for additional mobile=========================================
##insert text and number with lenght 7 or more
#  @critical
#  Scenario Outline: em-moblie value test (invalid text and number >=7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון נוסף לחירום"
#    Then field "טלפון נוסף לחירום" has invalid value
#    Then check error message is "יש להזין ספרות בלבד"
#    Examples:
#      | phone           |
#      | 32kj4k324       |
#      | 432اتتاלחךל     |
#      | כגד09לחi0       |
#      | ass23sadsa      |
#      | 223dd23d23333   |
#      | sasdsaddsds     |
#      | سشيشيشيسشيسش232 |
#      | صضصضصضصيؤربيربي |
#      | @121212         |
#
#
#    #insert text and number with lenght less than 7
#  @critical
#  Scenario Outline: em-moblie value test (invalid text and number <7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון נוסף לחירום"
#    Then field "טלפון נוסף לחירום" has invalid value
#    Then check error message is "יש להזין ספרות בלבד יש להשלים את הספרות החסרות"
#    Examples:
#      | phone  |
#      | 32kj4  |
#      | اتלל   |
#      | כגדi0  |
#      | 3sadsa |
#      | 2dd23  |
#      | @5%/h  |
#      | سش232  |
#      | صض     |
#      | @      |
#
#     #insert numbers with lenght less than 7
#  @critical
#  Scenario Outline: em-moblie value test (invalid number>7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון נוסף לחירום"
#    Then field "טלפון נוסף לחירום" has invalid value
#    Then check error message is "יש להשלים את הספרות החסרות"
#    Examples:
#      | phone  |
#      | 32     |
#      | 888    |
#      | 112120 |
#      | 00     |
#      | 2      |
#      | 0982   |
#      | 87232  |
#
#    #empty text
#  @critical
#  Scenario : em-moblie no value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "phone" in "טלפון נוסף לחירום"
#    When I clear "טלפון נוסף לחירום"
#    Then field "טלפון נוסף לחירום" has invalid value
#    Then check error message is "יש למלא טלפון נוסף לחירום"
#
#
#
#     #insert numbers with lenght 7
#  @critical
#  Scenario Outline: em-moblie value test (valid number=7)
#    Given I navigate to "PhotoPermission" page
#    When I write "<phone>" in "טלפון נוסף לחירום"
#    Then field  "מספר טלפון נייד" has valid value
#    Examples:
#      | phone   |
#      | 3223726 |
#      | 1111111 |
#      | 1121201 |
#      | 0000000 |
#      | 2502611 |
#
#
##    making senario for email
##  the formual of the emal is x@y.zw
#  """
#so here we will making three senarios
#first one incorrect formela
#second one empty value
#last one right formula
#"""
#    #wrong formula
#  @critical
#  Scenario Outline: email wrong value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<email>" in "אימייל"
#    Then field "אימייל" has invalid value
#    Then check error message is "דוא''ל לא תקין"
#    Examples:
#      | email                         |
#      | user@.com                     |
#      | @missingusername.com          |
#      | user@missingtld               |
#      | user@.missingtld.             |
#      | user@missingtld.              |
#      | user@-invalidtld.com          |
#      | plainaddress                  |
#      | #@%^%#$@#$@#.com              |
#      | @missingatsign.com            |
#      | missingdot@.com               |
#      | two@@missingatsigns.com       |
#      | leadingdot@.com               |
#      | .leadingdot@com.com           |
#      | email.with!symbol@com.com     |
#      | email.with%percent@com.com    |
#      | email.with_underscore@com.com |
#      | SDFG56ש@FG5.FG                |
#
##empty text
#  @critical
#  Scenario : email no value test (invalid)
#    Given I navigate to "PhotoPermission" page
#    When I write "email" in "אימייל"
#    When I clear "אימייל"
#    Then field "אימייל" has invalid value
#    Then check error message is "יש להזין כתובת אימייל"
#
## right formula
#  @critical
#  Scenario Outline: email right value test (valid)
#    Given I navigate to "PhotoPermission" page
#    When I write "<email>" in "אימייל"
#    Then field "אימייל" has valid value
#    Examples:
#      | email                                          |
#      | user@example.com                               |
#      | user@example.co.il                             |
#      | user.name@example.co.il                        |
#      | user.name@example.com                          |
#      | user_name@example.com                          |
#      | user+name@example.com                          |
#      | user.nametag@example.com                       |
#      | user@subdomain.example.com                     |
#      | user@sub.example.com                           |
#      | user@sub-domain.example.com                    |
#      | FH2345@F6G.UH                                  |
#      | ASSSSSSSSSSSSSSSSSERTYUIOIUYRDFGHJKL@ERTY.TYUI |
#










