@in_dev
Feature: TransferDogOwnership form - CheckList scenarios step 2

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

   Background:Background Scenario
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דרןח" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דגעחוח" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" pick "א טור" from "רחוב"
    And  from parent "פרטי מגיש הבקשה" write a valid value "2" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "קכקק" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "דגככגדק" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי המוסר" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" write a valid value "ירושלים" in "יישוב"
    And  from parent "פרטי המוסר" write a valid value "א טור" in "רחוב"
    And  from parent "פרטי המוסר" write a valid value "2" in "מספר בית"
    And click on "המשך" button


  Scenario: הסבר לטופס - לכל טופס חייב להיות הסבר -בבדיקה מול טפסים ישנים שיש התאמה מול ההסברים הישנים
    Given Navigate to "TransferDogOwnership" form
    When click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב, לזכות בעדכון לגבי מצב הטיפול בטופס"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X button
    Then validate information dialog is closed


  Scenario Outline: בכל השדות טקסט לאפשר לכתוב רק בעברית (valid)
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "<dog_name>" in "שם הכלב"
    And write a valid value "<dog_breeds>" in "גזע"
    And write a valid value "<dog_color>" in "צבע"
    Examples:
      | dog_name                                  | dog_breeds                               | dog_color     |
      | סו"/ה.ייב_אבו_גנאם                         | )"סוהייב_אב.ו_גנאם(                       | ככגךגדחדלגמג   |
      | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג   | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג | )"סוהיי       |
      | פ                                         | פ                                        | ע             |


  #BUG
  Scenario Outline: בכל השדות טקסט לאפשר לכתוב רק בעברית (invalid)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<dog_name>" in "שם הכלב"
    And write an invalid value "<dog_breeds>" in "גזע"
    And write an invalid value "<dog_color>" in "צבע"
    Examples:
      | dog_name         | dog_breeds       | dog_color     |
      | sdadw            | dwdwdw           | صawddaهيب      |
      | 1234             | 1234             | 1234           |
      | !@#$%%           | ششהسي##&&^*فغ@!#%| !@#$%%        |
      | sdwאטו#ه#&^*@!#% | !@#$%%            | sdw##&&^*@!#% |

  #BUG
  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (שם הכלב, גזע, צבע: קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<dog_name>" in "שם הכלב"
    And write an invalid value "<dog_breeds>" in "גזע"
    And write an invalid value "<dog_color>" in "צבע"
    Then check if "שם הכלב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "גזע" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "צבע" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | dog_name | dog_breeds  | dog_color|
      | DFGHJKL  | 3327!@#    | DFGHJKL   |
      | سيبلاتنقفغ | DFGHJKL    | سيبلاتنقفغ |
      | גכעיח%^&  | سيبلاتنقفغ  | גכעיח%^&  |
      | 3327!@#  | גכעיח%^&   | 3327!@#   |


  #BUG
  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (שם הכלב, גזע, צבע: קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value " " in "שם הכלב"
    And write an invalid value " " in "גזע"
    And write an invalid value " " in "צבע"
    Then check if "שם הכלב" error is "יש למלא שם הכלב"
    Then check if "גזע" error is "יש למלא גזע הכלב"
    Then check if "צבע" error is "יש למלא צבע"



  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (valid)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<chip_number>" in "מספר שבב"
    Examples:
      | chip_number|
      | 332796184  |
      | 227638475  |


  #BUG
  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (invalid)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<chip_number>" in "מספר שבב"
    Examples:
      | chip_number|
      | ghjkk      |
      | כעיחל      |
      | بلاتنم      |
      | #$%^&      |


  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (מספר שבב: קלט לא תקין)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "<chip_number>" in "מספר שבב"
    Then check if "מספר שבב" error is "מספר שבב לא תקין"
    Examples:
      | chip_number       |
      | 3327!@#           |
      | סנינה"אבו"פראס     |
      | بسبsefse          |
      | شيص               |


  Scenario:  לכל השגיאות בקבצים יש להציג הודעה מתאימה (מספר שבב: קלט  ריק)
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value " " in "מספר שבב"
    Then check if "מספר שבב" error is "יש למלא מספר שבב"

  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה לשאר השדות (מין, הכלב מחוסן כנגד מחלת הכלבת, שנת לידה, הכלב מחוסן כנגד מחלת הכלבת, הכלב רשום ברשות המקומית, תאריך מסירת הכלב קלט ריק)
    Given Navigate to "TransferDogOwnership" form
    When click on "המשך" icon
    Then check if "מין" error is "יש לבחור מין"
    Then check if "הכלב מחוסן כנגד מחלת הכלבת?" error is "חובה לסמן האם הכלב מחוסן"
    Then check if "שנת לידה" error is "יש לבחור שנת לידה"
    Then check if "הכלב מחוסן כנגד מחלת הכלבת?" error is "חובה לסמן האם הכלב מחוסן"
    Then check if "הכלב רשום ברשות המקומית" error is "חובה לבחור עיר"
    Then check if "תאריך מסירת הכלב" error is "יש לסמן תאריך מסירה"




