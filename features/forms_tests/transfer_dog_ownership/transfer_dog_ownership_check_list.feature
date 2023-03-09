@in_dev
Feature: TransferDogOwnership form - CheckList scenarios
  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at Page: 1
  - All fields are mandatory except (.מספר דירה, ת.ד )

  Scenario: אחרי שמירה שטופס לא יקפוץ לעמוד הראשון-להשאיר בשלב שהתושב נמצא בו כעת
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "332796184" in "תעודת זהות"
    And write a valid value "דרןח" in "שם פרטי"
    And write a valid value "דגעחוח" in "שם משפחה"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "3454" in "תד"
    And write a valid value "קכקק" in "שם פרטי"
    And write a valid value "דגככגדק" in "שם משפחה"
    And write a valid value "332796184" in "תעודת זהות"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "ירושלים" in "יישוב"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "4" in "מספר דירה"
    And write a valid value "3233" in "תד"
    And click on "המשך" button
    And write a valid value "ביסקו" in "שם הכלב"
    And write a valid value "דשגדק" in "גזע"
    And choose "זכר" from "מין"
    And write a valid value "לבן" in "צבע"
    And write a valid value "982009104328548" in "מספר שבב"
    And click on "שמור" icon
    Then validate new email received "@TEMP_EMAIL_ADDRESS"
    And validate current step is "פרטי מגיש הבקשה המקבל והמוסר"
    Then validate current step is "פרטי הכלב"


  Scenario: הסבר לטופס - לכל טופס חייב להיות הסבר -בבדיקה מול טפסים ישנים שיש התאמה מול ההסברים הישנים
    Given Navigate to "TransferDogOwnership" form
    When click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב, לזכות בעדכון לגבי מצב הטיפול בטופס"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X button
    Then validate information dialog is closed


  Scenario Outline: לחסום תעודות זהות פקטיביות (valid)
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "<id>" in "שם פרטי"
    Examples:
      | id        |
      | 332796184 |
      | 227638475 |


  #BUG
  Scenario Outline: לחסום תעודות זהות פקטיביות (invalid)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<id>" in "תעודת זהות"
    Examples:
      | id        |
      | 0         |
      | 3327      |
      | 000000018 |


  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (ת.ז. קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<id>" in "תעודת זהות"
    Then check if "מספר זהות" error is "מספר זהות לא תקין"
    Examples:
      | id                   |
      | 87389228312232112312 |
      | 000000009            |
      | 3327!@#              |
      | סנינה"אבו"פראס       |
      | אבו/פראס/סנינה       |
      | פראס()_-אבו סנינה    |
      | صهيب                 |
      | suhaib               |


  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (ת.ז. קלט לא ריק)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value " " in "תעודת זהות"
    Then check if "מספר זהות" error is "יש להזין מספר זהות"


  Scenario Outline: בכל השדות טקסט לאפשר לכתוב רק בעברית (valid)
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "<first_name>" in "שם פרטי"
    When write a valid value "<last_name>" in "שם משפחה"
    When write a valid value "<address>" in "יישוב"
    When write a valid value "<street>" in "רחוב"
    Examples:
      | first_name                                  | last_name                                | address     | street       |
      | סו"/ה.ייב_אבו_גנאם                           | )"סוהייב_אב.ו_גנאם(                       | ככגךגדחדלגמג | ע            |
      | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג     | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג | )"סוהיי      | ככגךגדחדלגמג |
      | פ                                           | פ                                        | ע           | ככגךגדחדלגמג  |


  #BUG
  Scenario Outline: בכל השדות טקסט לאפשר לכתוב רק בעברית (invalid)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<first_name>" in "שם פרטי"
    When write an invalid value "<last_name>" in "שם משפחה"
    When write an invalid value "<address>" in "יישוב"
    When write an invalid value "<street>" in "רחוב"
    Examples:
      | first_name       | last_name        | address          | street           |
      | صهيب             | suhaib           | صهيب             | suhaib           |
      | suhaib           | صهيب             | suhaib           | صهيب             |
      | 1234             | 1234             | 1234             | 1234             |
      | !@#$%%           | סוהייב##&&^*@!#% | !@#$%%           | סוהייב##&&^*@!#% |
      | סוהייב##&&^*@!#% | !@#$%%           | סוהייב##&&^*@!#% | !@#$%%           |

  #BUG
  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (שם פרטי, שם משפחה קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<first_name>" in "שם פרטי"
    When write an invalid value "<last_name>" in "שם משפחה"
    When write an invalid value "<address>" in "יישוב"
    When write an invalid value "<street>" in "רחוב"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "יישוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "רחוב"" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | first_name | last_name  | address    | street     |
      | DFGHJKL    | 3327!@#    | DFGHJKL    | 3327!@#    |
      | سيبلاتنقفغ | DFGHJKL    | سيبلاتنقفغ | DFGHJKL    |
      | גכעיח%^&   | سيبلاتنقفغ | גכעיח%^&   | سيبلاتنقفغ |
      | 3327!@#    | גכעיח%^&   | 3327!@#    | גכעיח%^&   |


  #BUG
  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (שם פרטי, שם משפחה קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value " " in "שם פרטי"
    When write an invalid value " " in "שם משפחה"
    When write an invalid value " " in "יישוב"
    When write an invalid value " " in "רחוב"
    Then check if "שם פרטי" error is "יש למלא שם פרטי"
    Then check if "שם משפחה" error is "יש למלא שם משפחה"
    Then check if "יישוב" error is "יש למלא יישוב"


  Scenario Outline: בכתובת מייל לאפשר לכתוב רק באנגלית ומספרים (valid)
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "<email>" in "אימייל"
    Examples:
      | email             |
      | sui_b@ajj.com     |
      | 1234@12.com       |
      | sa_m@ss.co        |
      | sa1223m@12334.com |
      | suha@abu.net      |

  Scenario Outline: בכתובת מייל לאפשר לכתוב רק באנגלית ומספרים (invalid)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<email>" in "אימייל"
    Examples:
      | email        |
      | A@b.cO+m     |
      | com....@.... |
      | a%@b.c*om    |
      | a+r@b.co/m   |
      | a@b.co./mb   |


  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (אימייל קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<email>" in "אימייל"
    Then check if "אימייל" error is "דוא''ל לא תקין"
    Examples:
      | email                |
      | 87389228312232112312 |
      | 3327qwer             |
      | 3327!@#              |
      | פראס()_-אבו סנינה    |
      | صهيب                 |
      | suhaib               |

  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (אימייל קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value " " in "אימייל"
    Then check if "אימייל" error is "יש להזין כתובת אימייל"


  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (valid)
    Given Navigate to "TransferDogOwnership" form
    When fill "<phone_number>" in "מספר טלפון נייד"
    When write a valid value "<home_number>" in "מספר בית"
    When write a valid value "<apartment_number>" in "מספר דירה"
    When write a valid value "<postal_number>" in "ת.ד."
    Then field "מספר טלפון נייד" has valid value
    Examples:
      | phone_number | home_number | apartment_number | postal_number |
      | 050-8076283  | 23          | 1                | 231232        |
      | 050-1111111  | 123         | 23241343443      | 123123142424  |
      | 050-2222222  | 41221321    | 2332             | 2             |

  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (invalid)
    Given Navigate to "TransferDogOwnership" form
    When fill "<phone_number>" in "מספר טלפון נייד"
    When write an invalid value "<home_number>" in "מספר בית"
    When write an invalid value "<apartment_number>" in "מספר דירה"
    When write an invalid value "<postal_number>" in "ת.ד."
    Then field "מספר טלפון נייד" has valid value
    Examples:
      | phone_number | home_number | apartment_number | postal_number |
      | 050-שדגדגשד  | דגגד        | כע               | dfghj         |
      | 050-234#$%   | שד34        | ראטוחFן          | بلات          |
      | 050-כעיחUןם  | #$5         | %^لاتن           | ראטון         |

  Scenario Outline: לכל השגיאות בקבצים יש להציג הודעה מתאימה (מספר נייד, מספר בית, מספר דירה, ת.ד. קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When fill "<phone_number>" in "מספר טלפון נייד"
    When write an invalid value "<home_number>" in "מספר בית"
    When write an invalid value "<apartment_number>" in "מספר דירה"
    When write an invalid value "<postal_number>" in "ת.ד."
    Then field "מספר טלפון נייד" has valid value
    Then check if "מספר טלפון נייד" error is "יש להזין ספרות בלבד/nיש להשלים את הספרות החסרות"
    Then check if "מספר בית" error is "יש למלא מספר בית"
    Then check if "מספר דירה" error is "יש למלא מספר דירה"
    Then check if "ת.ד." error is "יש להזין ספרות בלבד"
    Examples:
      | phone_number | home_number | apartment_number | postal_number |
      | 050-שדגדגשד   | דגגד        | כע              | dfghj        |
      | 050-234#$%   | שד34        | ראטוחFן           | بلات            |
      | 050-כעיחUןם   | #$5        | %^لاتن           | ראטון         |


  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה (מספר נייד, מספר בית, מספר דירה, ת.ד. קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When fill " " in "מספר טלפון נייד"
    When write an invalid value "<home_number>" in "מספר בית"
    When write an invalid value "<postal_number>" in "ת.ד."
    Then field "מספר טלפון נייד" has valid value
    Then check if "מספר טלפון נייד" error is "יש להזין מספר טלפון נייד"
    Then check if "מספר בית" error is "יש למלא מספר בית"
    Then check if "ת.ד." error is "יש להזין ספרות בלבד"





