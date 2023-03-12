
Feature: TransferDogOwnership form - CheckList scenarios step 1

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory except (.ספר דירה, ת.ד )

  @in_dev
  Scenario: אחרי שמירה שטופס לא יקפוץ לעמוד הראשון-להשאיר בשלב שהתושב נמצא בו כעת
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דרןח" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דגעחוח" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" pick "א טור" from "רחוב"
    And  from parent "פרטי מגיש הבקשה" write a valid value "2" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write a valid value "1" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "3454" in "ת.ד"
    And  from parent "פרטי המוסר" write a valid value "קכקק" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "דגככגדק" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי המוסר" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" write a valid value "ירושלים" in "יישוב"
    And  from parent "פרטי המוסר" write a valid value "א טור" in "רחוב"
    And  from parent "פרטי המוסר" write a valid value "2" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "3" in "מספר דירה"
    And  from parent "פרטי המוסר" write a valid value "3233" in "ת.ד"
    And click on "המשך" button
    And write a valid value "ביסקו" in "שם הכלב"
    And write a valid value "דשגדק" in "גזע"
    And choose "זכר" from "מין"
    And write a valid value "לבן" in "צבע"
    And write a valid value "982009104328548" in "מספר שבב"
    And click on "שמור" icon
    When 1st get pin code from email validation
    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
    When 3rd wait for second email to get "קוד האימות"
    When 4th close all tabs
    Then 5th Validate if went back to expected form
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
    When from parent "פרטי מגיש הבקשה" write a valid value "<id>" in "תעודת זהות"
    And  from parent "פרטי המוסר" write a valid value "<id>" in "תעודת זהות"
    Examples:
      | id        |
      | 332796184 |
      | 227638475 |


  #BUG
  Scenario Outline: לחסום תעודות זהות פקטיביות (invalid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "<id>" in "תעודת זהות"
    And from parent "פרטי המוסר" write an invalid value "<id>" in "תעודת זהות"
    Examples:
      | id        |
      | 0         |
      | 3327      |
      | 000000018 |
      | ghjkk     |
      | כעיחל     |
      | بلاتنم     |
      | #$%^&     |


  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (תעודת זהות פרטי מגיש הבקשה: קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "<id>" in "תעודת זהות"
    Then from parent "פרטי מגיש הבקשה" check if "תעודת זהות" error is "מספר זהות לא תקין"
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


  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (תעודת זהות פרטי מגיש הבקשה: קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value " " in "תעודת זהות"
    Then from parent "פרטי מגיש הבקשה" check if "תעודת זהות" error is "יש להזין מספר זהות"


  Scenario Outline: בכל השדות טקסט לאפשר לכתוב רק בעברית (שם פרטי, שם משפחה, יישוב, רחוב) (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write a valid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write a valid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" pick "<street>" from "רחוב"
    And  from parent "פרטי המוסר" write a valid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "<address>" in "יישוב"
    And  from parent "פרטי המוסר" write a valid value "<street>" in "רחוב"
    Examples:
      | first_name                                  | last_name                                | address     | street       |
      | סו"/ה.ייב_אבו_גנאם                           | )"סוהייב_אב.ו_גנאם(                       | ככגךגדחדלגמג | ע            |
      | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג     | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג | )"סוהיי      | ככגךגדחדלגמג |
      | פ                                           | פ                                        | ע           | ככגךגדחדלגמג  |


  #BUG
  Scenario Outline: בכל השדות טקסט לאפשר לכתוב רק בעברית (שם פרטי, שם משפחה, יישוב, רחוב) (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" pick "<street>" from "רחוב"
    And  from parent "פרטי המוסר" write an invalid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי המוסר" write an invalid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value "<address>" in "יישוב"
    And  from parent "פרטי המוסר" write an invalid value "<street>" in "רחוב"
    Examples:
      | first_name       | last_name        | address          | street           |
      | صهيب             | suhaib           | صهيب             | suhaib           |
      | suhaib           | صهيب             | suhaib           | صهيب             |
      | 1234             | 1234             | 1234             | 1234             |
      | !@#$%%           | סוהייב##&&^*@!#% | !@#$%%           | סוהייב##&&^*@!#% |
      | סוהייב##&&^*@!#% | !@#$%%           | סוהייב##&&^*@!#% | !@#$%%           |

  #BUG
  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (שם פרטי, שם משפחה, רחוב, יישוב: קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" pick "<street>" from "רחוב"
    And  from parent "פרטי המוסר" write an invalid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי המוסר" write an invalid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value "<address>" in "יישוב"
    And  from parent "פרטי המוסר" write an invalid value "<street>" in "רחוב"
    Then from parent "פרטי מגיש הבקשה" check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי מגיש הבקשה" check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי מגיש הבקשה" check if "רחוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי המוסר" check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי המוסר" check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי המוסר" check if "יישוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי המוסר" check if "רחוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | first_name | last_name  | address    | street     |
      | DFGHJKL    | 3327!@#    | DFGHJKL    | 3327!@#    |
      | سيبلاتنقفغ | DFGHJKL    | سيبلاتنقفغ | DFGHJKL    |
      | גכעיח%^&   | سيبلاتنقفغ | גכעיח%^&   | سيبلاتنقفغ |
      | 3327!@#    | גכעיח%^&   | 3327!@#    | גכעיח%^&   |


  #BUG
  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (שם פרטי, שם משפחה, רחוב, יישוב: קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value " " in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write an invalid value " " in "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value " " in "שם פרטי"
    And  from parent "פרטי המוסר" write an invalid value " " in "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value " " in "יישוב"
    And  from parent "פרטי המוסר" write an invalid value " " in "רחוב"
    Then from parent "פרטי מגיש הבקשה" check if "שם פרטי" error is "יש למלא שם פרטי"
    Then from parent "פרטי מגיש הבקשה" check if "שם משפחה" error is "יש למלא שם משפחה"
    Then from parent "פרטי המוסר" check if "שם פרטי" error is "יש למלא שם פרטי"
    Then from parent "פרטי המוסר" check if "שם משפחה" error is "יש למלא שם משפחה"
    Then from parent "פרטי המוסר" check if "יישוב" error is "יש למלא יישוב"
    Then from parent "פרטי המוסר" check if "רחוב" error is "יש למלא רחוב"



  Scenario Outline: בכתובת מייל לאפשר לכתוב רק באנגלית ומספרים (valid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "<email>" in "אימייל"
    Examples:
      | email             |
      | sui_b@ajj.com     |
      | 1234@12.com       |
      | sa_m@ss.co        |
      | sa1223m@12334.com |
      | suha@abu.net      |

  Scenario Outline: בכתובת מייל לאפשר לכתוב רק באנגלית ומספרים (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<email>" in "אימייל"
    Examples:
      | email        |
      | A@b.cO+m     |
      | com....@.... |
      | a%@b.c*om    |
      | a+r@b.co/m   |
      | a@b.co./mb   |


  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (אימייל: קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<email>" in "אימייל"
    Then from parent "פרטי מגיש הבקשה" check if "אימייל" error is "דוא''ל לא תקין"
    Examples:
      | email                |
      | 87389228312232112312 |
      | 3327qwer             |
      | 3327!@#              |
      | פראס()_-אבו סנינה    |
      | صهيب                 |
      | suhaib               |

  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (אימייל: קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value " " in "אימייל"
    Then from parent "פרטי מגיש הבקשה" check if "אימייל" error is "יש להזין כתובת אימייל"



  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (valid)
    Given Navigate to "TransferDogOwnership" form
     When  from parent "פרטי מגיש הבקשה" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" fill "<phone_number>" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write a valid value "<home_number>" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "<home_number>" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write a valid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי המוסר" write a valid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "<postal_number>" in "ת.ד"
    And  from parent "פרטי המוסר" write a valid value "<postal_number>" in "ת.ד"
    Examples:
      | phone_number | home_number | apartment_number | postal_number |
      | 050-8076283  | 23          | 1                | 231232        |
      | 050-1111111  | 123         | 23241343443      | 123123142424  |
      | 050-2222222  | 41221321    | 2332             | 2             |

  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<home_number>" in "מספר בית"
    And  from parent "פרטי המוסר" write an invalid value "<home_number>" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי המוסר" write an invalid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<postal_number>" in "ת.ד"
    And  from parent "פרטי המוסר" write an invalid value "<postal_number>" in "ת.ד"
    Examples:
      | phone_number | home_number | apartment_number | postal_number |
      | 050-שדגדגשד  | דגגד        | כע               | dfghj         |
      | 050-234#$%   | שד34        | ראטוחFן          | بلات          |
      | 050-כעיחUןם  | #$5         | %^لاتن           | ראטון         |

  Scenario Outline: לכל השגיאות בקבצים יש להציג הודעה מתאימה (מספר טלפון נייד, מספר בית, מספר דירה, ת.ד:  קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<home_number>" in "מספר בית"
    And  from parent "פרטי המוסר" write an invalid value "<home_number>" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי המוסר" write an invalid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "<postal_number>" in "ת.ד"
    And  from parent "פרטי המוסר" write an invalid value "<postal_number>" in "ת.ד"
    #TODO: do the split for the error message
    Then from parent "פרטי מגיש הבקשה" check if "מספר טלפון נייד" error is "יש להזין ספרות בלבד/nיש להשלים את הספרות החסרות"
    Then from parent "פרטי מגיש הבקשה" check if "מספר בית" error is "יש למלא מספר בית"
    Then from parent "פרטי מגיש הבקשה" check if "מספר דירה" error is "יש למלא מספר דירה"
    Then from parent "פרטי מגיש הבקשה" check if "ת.ד" error is "יש להזין ספרות בלבד"
    Then from parent "פרטי המוסר" check if "מספר טלפון נייד" error is "יש להזין ספרות בלבד/nיש להשלים את הספרות החסרות"
    Then from parent "פרטי המוסר" check if "מספר בית" error is "יש למלא מספר בית"
    Then from parent "פרטי המוסר" check if "מספר דירה" error is "יש למלא מספר דירה"
    Then from parent "פרטי המוסר" check if "ת.ד" error is "יש להזין ספרות בלבד"
    Examples:
      | phone_number | home_number | apartment_number | postal_number |
      | 050-שדגדגשד   | דגגד        | כע               | dfghj         |
      | 050-234#$%   | שד34        | ראטוחFן           | بلات           |
      | 050-כעיחUןם   | #$5        | %^لاتن             | ראטון         |


  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה (מספר טלפון נייד, מספר בית: קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" fill "052- " as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" fill "054- " as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write an invalid value " " in "מספר בית"
    And  from parent "פרטי המוסר" write an invalid value " " in "מספר בית"
    Then from parent "פרטי מגיש הבקשה" check if "מספר טלפון נייד" error is "יש להזין מספר טלפון נייד"
    Then from parent "פרטי מגיש הבקשה" check if "מספר בית" error is "יש למלא מספר בית"
    Then from parent "פרטי המוסר" check if "מספר טלפון נייד" error is "יש להזין מספר טלפון נייד"
    Then from parent "פרטי המוסר" check if "מספר בית" error is "יש למלא מספר בית"














