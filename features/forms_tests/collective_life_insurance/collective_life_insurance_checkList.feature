@in_dev
    #ToDo : wait for the popup message
@test

Feature: CollectiveLifeInsurance form - checklist scenarios
  - Form name: טופס הצטרפות לביטוח חיים קולקטיבי לעובדי העירייה
  - Feature file name: collective_life_insurance.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/CollectiveLifeInsurance
  - Number of Pages is : 1, We are at Page: 1
  - All fields are mandatory except
  - Page Information: same feature with multi values
  -

  Scenario Outline: TC_IDENT_04 checklist - Enter an employee ID to the "מספר זהות" field
    Given Navigate to "CollectiveLifeInsurance" form
    When write a valid value "<id>" in "מספר זהות"
    When click on "שלח קוד זיהוי" button
    When close error message
    Examples:
      | id  |
      | 111 |

  Scenario Outline: TC_IDENT_05 checklist - Enter a none employee ID to the "מספר זהות" field
    Given Navigate to "CollectiveLifeInsurance" form
    When write a valid value "<id>" in "מספר זהות"
    When click on "שלח קוד זיהוי" button
    Then an error message appeared with the following description: "ההזדהות אינה תקינה, נא הזן פרטי הזדהות נכונים"
    When close error message
    Examples:
      | id        |
      | 315456848 |
      | 080348238 |

  Scenario Outline: TC_IDENT_06 checklist - Enter a partial employee/none employee ID to the "מספר זהות" field
    Given Navigate to "CollectiveLifeInsurance" form
    When write a valid value "<id>" in "מספר זהות"
    When click on "שלח קוד זיהוי" button
    Then an error message appeared with the following description: "ההזדהות אינה תקינה, נא הזן פרטי הזדהות נכונים"
    When close error message
    Examples:
      | id      |
      | 1111111 |
      | 315456  |

  Scenario Outline: TC_IDENT_07 checklist - Click on "שמור" button after entering the employee ID
    Given Navigate to "CollectiveLifeInsurance" form
    When write a valid value "<id>" in "מספר זהות"
    When from header click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
    When close error message
    Examples:
      | id   |
      | 1234 |

  Scenario Outline: TC_IDENT_08 checklist - Click on "הדפס" button after entering the employee ID
    Given Navigate to "CollectiveLifeInsurance" form
    When write a valid value "<id>" in "מספר זהות"
    When from header click on "הדפס" icon
    Examples:
      | id   |
      | 1234 |


