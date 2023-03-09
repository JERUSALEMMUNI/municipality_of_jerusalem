@in_dev
    #ToDo : wait for the popup message

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
    When click on "שמור" icon
    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
    When close error message
    Examples:
      | id   |
      | 1234 |

  Scenario Outline: TC_IDENT_08 checklist - Click on "הדפס" button after entering the employee ID
    Given Navigate to "CollectiveLifeInsurance" form
    When write a valid value "<id>" in "מספר זהות"
    When click on "הדפס" icon
    Examples:
      | id   |
      | 1234 |

#------------------------------------------------------------------------------------------------

  Scenario: Header elements test
    Given Navigate to "CollectiveLifeInsurance" form
    Then validate municipality logo is displayed in old header
    And validate old header title is default
    And validate form Title in old header is "שרותים דיגיטליים"
    And validate form explanation in old header contains "עובדות ועובדים יקרים,"
    And validate form explanation in old header exists and contains at least "20" chars


  Scenario: Footer elements test
    Given Navigate to "CollectiveLifeInsurance" form
    Then Validate Facebook Logo is displayed in footer
    Then Validate Instagram Logo is displayed in footer
    Then Validate Twitter Logo is displayed in footer
    Then Validate old footer call us is displayed
    Then Validate old footer follow us is displayed
    Then Validate old footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים ראשון עד חמישי בין השעות 08:30-16:00"
    Then Validate old footer follow us text is "עקבו אחרינו"
    Then Validate old footer call us has the default text
    Then Validate old footer follow us has the default text


  Scenario: footer facebook url test
    Given Navigate to "CollectiveLifeInsurance" form
    Then Validate facebook url in footer
    Then Back to previous page
    Then Validate current page is "CollectiveLifeInsurance"


  Scenario: footer instagram url test
    Given Navigate to "CollectiveLifeInsurance" form
    Then Validate instagram url in footer
    Then Back to previous page
    Then Validate current page is "CollectiveLifeInsurance"

  Scenario: footer twitter url test
    Given Navigate to "CollectiveLifeInsurance" form
    Then Validate twitter url in footer
    Then Back to previous page
    Then Validate current page is "CollectiveLifeInsurance"



