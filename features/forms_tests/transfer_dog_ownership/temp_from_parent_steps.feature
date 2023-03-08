@in_dev
Feature: Test Scenarios for functionality and validation of TransferDogOwnership form

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at Page: 1
  - All fields are mandatory except (.ספר דירה, ת.ד )
  - Page Information:

  Scenario Outline: first name on parent  "פרטי מגיש הבקשה"  (valid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name          |
      | פראס                |
      | .)('"סנינה_אבו_פראס  |
      | פ                   |

  Scenario Outline: first name on parent "פרטי המוסר" (valid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי המוסר" write a valid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name          |
      | פראס                |
      | .)('"סנינה_אבו_פראס  |
	  | פ                   |

  Scenario Outline: first name on parent  "פרטי מגיש הבקשה" (invalid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name |
      | فراس       |
      | firas      |
      | 1234       |
      | !@#$%%     |
      | פראסضض     |
      | פראסwdd    |
      | פראס123    |
      | פראס!@##   |

  Scenario Outline: first name on parent "פרטי המוסר" (invalid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי המוסר" write an invalid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name |
      | فراس       |
      | firas      |
      | 1234       |
      | !@#$%%     |
      | פראסضض     |
      | פראסwdd    |
      | פראס123    |
      | פראס!@##   |

  Scenario: Test all mandatory fields with valid values
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "2345" in "תעודת זהות"
    And from parent "פרטי מגיש הבקשה" write a valid value "סאמר" in "שם פרטי"
    And from parent "פרטי מגיש הבקשה" write a valid value "אבו סלום" in "שם משפחה"
    And from parent "פרטי מגיש הבקשה" write a valid value "salem_salom@hotmail.com" in "אימייל"
    And from parent "פרטי מגיש הבקשה" fill "058-8078687" as valid value in "מספר טלפון נייד"
    And from parent "פרטי מגיש הבקשה" pick "א טור" from "רחוב"
    And from parent "פרטי מגיש הבקשה" write a valid value "1" in "מספר בית"
    And from parent "פרטי מגיש הבקשה" write a valid value "2" in "מספר דירה"
    And from parent "פרטי מגיש הבקשה" write a valid value "3" in "ת.ד"
    When I wait for "10" seconds

  Scenario: Test all mandatory fields with valid values
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי המוסר" write a valid value "2345" in "תעודת זהות"
    And from parent "פרטי המוסר" write a valid value "סאמר" in "שם פרטי"
    And from parent "פרטי המוסר" write a valid value "אבו סלום" in "שם משפחה"
    And from parent "פרטי המוסר" fill "058-8078687" as valid value in "מספר טלפון נייד"
    And from parent "פרטי המוסר" write a valid value "א טור" in "רחוב"
    And from parent "פרטי המוסר" write a valid value "1" in "מספר בית"
    And from parent "פרטי המוסר" write a valid value "2" in "מספר דירה"
    And from parent "פרטי המוסר" write a valid value "3" in "ת.ד"
    And from parent "פרטי המוסר" write a valid value "כגעגכ" in "יישוב"
    When I wait for "10" seconds
