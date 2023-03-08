Feature: Test Scenarios for functionality and validation of ContractorEmpRights form

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Page: 1
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)
  - Page Information:
  -

  Scenario Outline: id (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<id>" in "מספר זהות"
    Examples:
    | id  |
    | 332796184 |
    | 227638475 |
    | 209441179 |
    | 332796184 |


  Scenario Outline: id (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<id>" in "מספר זהות"
    Examples:
    | id  | state|
    | 1111111 | Bug |
    | 000000000|Bug |
    | 87389228312232112312 ||
    | 3327 |        Bug        |
    | 000000018 |  Bug         |
    | 000000009 |           |
    | 1111111111 |          |
    | 11111111111111111111 ||
    | 111111111111111111111111 ||
    | 3239827884 | Bug             |
    | 3327qwer |                |
    | 3327!@# |                 |
    | 3319  | Bug|
    | 8888  | Bug|
    | 0117  |Bug |
    | 0190   |Bug|
     | סנינה"אבו"פראס  ||
    | אבו/פראס/סנינה  ||
    | פראס()_-אבו סנינה  ||
    | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג   ||
    | פ    |                                         |
    | פ)(_-.,ץשדג |                                  |
    | صهيب  |                                        |
    | suhaib   |                                     |
     | סוהייב  |                                      |


Scenario Outline: id (invalid/error message)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<id>" in "מספר זהות"
    Then check if "מספר זהות" error is "מספר זהות לא תקין"
    Examples:
    | id  | state|
    | 87389228312232112312 ||
    | 000000009 |           |
    | 1111111111 |          |
    | 11111111111111111111 ||
    | 111111111111111111111111 ||
    | 3327qwer |                |
    | 3327!@# |                 |
     | סנינה"אבו"פראס  ||
    | אבו/פראס/סנינה  ||
    | פראס()_-אבו סנינה  ||
    | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג   ||
    | פ    |                                         |
    | פ)(_-.,ץשדג |                                  |
    | صهيب  |                                        |
    | suhaib   |                                     |
     | סוהייב  |                                      |


  Scenario Outline: first name (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<first_name>" in "שם פרטי"
    Examples:
    | first_name  |
    | סוהייב  |
    | סוהייב_אבו_גנאם  |
    | סנינה-אבו-פראס  |
    | (סוהייב)  |
    | סוהייב אבו גנאם  |
    | פראססוהייב |
    | סוהייב.אבו.גנאם  |
    | סנינה"אבו"פראס  |
    | אבו/פראס/סנינה  |
    | פראס()_-אבו סנינה  |
    | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג   |
    | פ    |
    | פ)(_-.,ץשדג |

  Scenario Outline: first name (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<first_name>" in "שם פרטי"
    Examples:
    | first_name  |
    | صهيب  |
    | suhaib   |
    | 1234    |
    | !@#$%%  |
    | סוהייבסضض  |
    | פסוהייבwdd  |
    | פראס123סוהייב  |
    | סוהייב##&&^*@!#%  |
    | 111111111111111111111111 |
    | 3239827884 |
    | 3327qwer |
    | 3327!@# |

  Scenario Outline: last name (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<last_name>" in "שם משפחה"
    Examples:
    | last_name  |
    | סוהייב  |
    | סוהייב_אבו_גנאם  |
    | סנינה-אבו-פראס  |
    | (סוהייב)  |
    | סוהייב אבו גנאם  |
    | פראססוהייב |
    | סוהייב.אבו.גנאם  |
    | סנינה"אבו"פראס  |
    | אבו/פראס/סנינה  |
    | פראס()_-אבו סנינה  |
    | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג   |
    | פ    |
    | פ)(_-.,ץשדג |

  Scenario Outline: last name (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<last_name>" in "שם משפחה"
    Examples:
    | last_name  |
   | صهيب  |
    | suhaib   |
    | 1234    |
    | !@#$%%  |
    | סוהייבסضض  |
    | פסוהייבwdd  |
    | פראס123סוהייב  |
    | סוהייב##&&^*@!#%  |
  | 111111111111111111111111 |
    | 3239827884 |
    | 3327qwer |
    | 3327!@# |


  Scenario Outline: email (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<email>" in "אימייל"
    Examples:
    | email  |
    | suhaib@ajj.com  |
    |  1234@12.com |
    | sam@ss.co |
    | sam@12334.com |
    | suhaib@abu.net |

  Scenario Outline: email (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<email>" in "אימייל"
    Then check if "אימייל" error is "דוא''ל לא תקי"
    Examples:
    | email  |
    | ابوسنينة@ستت.com  |
    | יכחלכלגל@חחגגח.com |
    | sjskldffl  |
    | 124445  |
    | ששגכעי |
    | sdfghj  |
    | dgjfk!@jsk.c-om  |
    | djdkdjf@kads |
    | skslsm@j11dkddkcom |
    | sam@ss.c1 |
    | sam@ss.11comaa11 |
    | sam@ss.casasaddfeff |
    | firas@sls.123 |
    | a@b.com.com.com.com|
    | a@b.................com |
    | 123312123322111@11222222222222222222222222.coגכm|
    | a@b.com.122|
    | a@b.com.|
    | A@B.CO=M |
    | A@b.cO+m |
    | com....@.... |
    | a%@b.c*om |
    | a_----___---_____r@b|
    | a+r@b.co/m|
    | a@b.co./mb|

  Scenario Outline: phone number (valid)
   Given Navigate to "ContractorEmpRights" form
    When fill "<phone_number>" as valid value in "מספר טלפון נייד"
    Then field "מספר טלפון נייד" has valid value
    Examples:
    | phone_number  |
    | 050-8076283|
    | 050-1111111|
    | 050-2222222|

  Scenario Outline: phone number (invalid)
    Given Navigate to "ContractorEmpRights" form
    When fill "<phone_number>" as valid value in "מספר טלפון נייד"
    Then field "מספר טלפון נייד" has invalid value
    Examples:
    | phone_number  |
    | 050-1  |
    | 050-331aaa  |
    | 054-ءشييسش |
    |058-גדגדג|
    | 050-332798@#$  |
    | 050-!@#$% |
    | 050-dsdddss|
    | 050->807683|
    | 050-.807&83|
    | 050-,8076283|
    | 050-807628!|





