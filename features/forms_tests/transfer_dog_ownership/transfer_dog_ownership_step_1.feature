
Feature: TransferDogOwnership form - scenarios step 1

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory except (.מספר דירה, ת.ד )

  Scenario: TC_DOGOWNER_02 - הזנת ערכים שגויים לשדות מקבל הכלב
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "one" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "hello" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "there" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "ertydfg" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "052-sdasdwטו" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write "سيليسبيس" in search field "רחוב"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "شسيشسي" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "sdf" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "sdfsdfse" in "ת.ד"


  Scenario: TC_DOGOWNER_03 - הזנת ערכים שגויים לשדות מקבל הכלב
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "one" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "hello" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "there" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "ertydfg" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "054-sdasdwטו" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write "سيليسبيس" in search field "רחוב"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "شسيشسي" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "sdf" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "sdfsdfse" in "ת.ד"
    And  from parent "פרטי המוסר" write a valid value "קכקק" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "דגככגדק" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי המוסר" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" write a valid value "ירושלים" in "יישוב"
    And  from parent "פרטי המוסר" write a valid value "א טור" in "רחוב"
    And  from parent "פרטי המוסר" write a valid value "2" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "3" in "מספר דירה"
    And  from parent "פרטי המוסר" write a valid value "3233" in "ת.ד"
#    When from header click on "שמור" icon
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form
#    And validate current step is "פרטי מגיש הבקשה המקבל והמוסר"



  Scenario:TC_DOGOWNER_04 - הזנת ערכים שגויים לשדות מקבל הכלב
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "one" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "hello" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "there" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "ertydfg" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "053-sdasdwטו" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write "سيليسبيس" in search field "רחוב"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "شسيشسي" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "sdf" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write an invalid value "sdfsdfse" in "ת.ד"
    And  from parent "פרטי המוסר" write an invalid value "hello" in "שם פרטי"
    And  from parent "פרטי המוסר" write an invalid value "there" in "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value "one" in "תעודת זהות"
    And  from parent "פרטי המוסר" fill "052-sdasdwטו" as invalid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" write an invalid value "سيليسبيس" in "יישוב"
    And  from parent "פרטי המוסר" write an invalid value "سيليسبيس" in "רחוב"
    And  from parent "פרטי המוסר" write an invalid value "شسيشسي" in "מספר בית"
    And  from parent "פרטי המוסר" write an invalid value "sdf" in "מספר דירה"
    And  from parent "פרטי המוסר" write an invalid value "sdfsdfse" in "ת.ד"









