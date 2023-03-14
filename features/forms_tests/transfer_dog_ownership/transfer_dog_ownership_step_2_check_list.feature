
Feature: TransferDogOwnership form - CheckList scenarios step 2

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

  Background:Background Scenario
    Given Navigate to "TransferDogOwnership" form and reach step "פרטי הכלב"



  Scenario Outline: write only in Hebrew Dog name test (valid)
    When write a valid value "<dog_name>" in "שם הכלב"
    Examples:
      | dog_name                                    |
      | סו"/ה.ייב_אבו_גנאם                           |
      | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג    |
      | פ                                           |


  #BUG
  Scenario Outline: write only in Hebrew Dog name test (invalid)
    When write an invalid value "<dog_name>" in "שם הכלב"
    Examples:
      | dog_name         |
      | sdadw            |
      | 1234             |
      | !@#$%%           |
      | sdwאטו#ه#&^*@!#% |

  #BUG
  Scenario Outline: Dog name error messages test: Invalid input
    When write an invalid value "<dog_name>" in "שם הכלב"
    Then check if "שם הכלב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | dog_name   |
      | DFGHJKL    |
      | سيبلاتنقفغ   |
      | גכעיח%^&   |
      | 3327!@#    |


  #BUG
  Scenario: Dog name error messages test: Empty input
    When write an invalid value " " in "שם הכלב"
    When clear "שם הכלב"
    Then check if "שם הכלב" error is "יש למלא שם הכלב"


  Scenario Outline: write only in Hebrew Dog breed test (valid)
    When write a valid value "<dog_breeds>" in "גזע"
    Examples:
      | dog_breeds                                  |
      | )"סוהייב_אב.ו_גנאם(                          |
      | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג     |
      | פ                                           |


  #BUG
  Scenario Outline: write only in Hebrew Dog breed test (invalid)
    When write an invalid value "<dog_breeds>" in "גזע"
    Examples:
      | dog_breeds        |
      | dwdwdw            |
      | 1234              |
      | ششהسي##&&^*فغ@!#%  |
      | !@#$%%            |

  #BUG
  Scenario Outline: Dog breed error messages test: Invalid input
    When write an invalid value "<dog_breeds>" in "גזע"
    Then check if "גזע" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | dog_breeds |
      | 3327!@#    |
      | DFGHJKL    |
      | سيبلاتنقفغ   |
      | גכעיח%^&   |


  #BUG
  Scenario:  Dog breed error messages test: Empty input
    When write an invalid value " " in "גזע"
    When clear "גזע"
    Then check if "גזע" error is "יש למלא גזע הכלב"


  Scenario Outline: write only in Hebrew Dog color test (valid)
    When write a valid value "<dog_color>" in "צבע"
    Examples:
      | dog_color    |
      | ככגךגדחדלגמג  |
      | )"סוהיי      |
      | ע            |


  #BUG
  Scenario Outline: write only in Hebrew Dog color test (invalid)
    When write an invalid value "<dog_color>" in "צבע"
    Examples:
      | dog_color     |
      | صawddaهيب     |
      | 1234          |
      | !@#$%%        |
      | sdw##&&^*@!#% |

  #BUG
  Scenario Outline: Dog color error messages test: Invalid input
    When write an invalid value "<dog_color>" in "צבע"
    Then check if "צבע" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | dog_color  |
      | DFGHJKL    |
      | سيبلاتنقفغ   |
      | גכעיח%^&   |
      | 3327!@#    |


  #BUG
  Scenario: Dog color error messages test: Empty input
    When write an invalid value " " in "צבע"
    When clear "גזע"
    Then check if "צבע" error is "יש למלא צבע"


  Scenario Outline: write only numbers in dog chip number (valid)
    When write an invalid value "<chip_number>" in "מספר שבב"
    Examples:
      | chip_number  |
      | 3432234432   |
      | 5534343332   |


  #BUG
  Scenario Outline: write only numbers in dog chip number (invalid)
    When write an invalid value "<chip_number>" in "מספר שבב"
    Examples:
      | chip_number |
      | ghjkk       |
      | כעיחל       |
      | بلاتنم        |
      | #$%^&       |


  Scenario Outline: Dog chip number error messages test: Invalid input
    When write an invalid value "<chip_number>" in "מספר שבב"
    Then check if "מספר שבב" error is "מספר שבב לא תקין"
    Examples:
      | chip_number    |
      | 3327!@#        |
      | סנינה"אבו"פראס |
      | بسبsefse       |
      | شيص            |


  Scenario: Dog chip number error messages test: Empty input
    When write an invalid value " " in "מספר שבב"
    When clear "מספר שבב"
    Then check if "מספר שבב" error is "יש למלא מספר שבב"

  Scenario: Rest of fields error messages test: Empty input
    When click on "המשך" icon
    Then check if "מין" error is "יש לבחור מין"
    Then check if "הכלב מחוסן כנגד מחלת הכלבת?" error is "חובה לסמן האם הכלב מחוסן"
    Then check if "שנת לידה" error is "יש לבחור שנת לידה"
    Then check if "הכלב מחוסן כנגד מחלת הכלבת?" error is "חובה לסמן האם הכלב מחוסן"
    Then check if "הכלב רשום ברשות המקומית" error is "חובה לבחור עיר"
    Then check if "תאריך מסירת הכלב" error is "יש לסמן תאריך מסירה"




