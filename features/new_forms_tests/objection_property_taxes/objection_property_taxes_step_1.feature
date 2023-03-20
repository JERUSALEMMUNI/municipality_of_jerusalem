@in_dev
Feature: objectionPropertyTaxes form - scenarios step 1

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)



  Scenario: TC_OBJECTIONPRO_01 - Entering correct values for personal fields when the thesis identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write a valid value "דני" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write a valid value "גלעד" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "ת.ז." from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write a valid value "3327" in "מספר ת.ז."
    And  from parent "פרטי מגיש הבקשה" fill "058-8078687" as valid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-8078687" as valid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When from parent "פרטי מגיש הבקשה" pick "המחזיק" from "ממלא ההשגה"





  Scenario: TC_OBJECTIONPRO_02 - Entering correct values for personal fields when the passport identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write a valid value "דני" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write a valid value "גלעד" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "דרכון" from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write a valid value "3327" in "מספר דרכון"
    And  from parent "פרטי מגיש הבקשה" fill "058-8078687" as valid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-8078687" as valid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When from parent "פרטי מגיש הבקשה" pick "המחזיק" from "ממלא ההשגה"



  #BUG : we dont have a valid  ח.פ. number
  Scenario: TC_OBJECTIONPRO_03 - Entering correct values for personal fields when the H.P. identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write a valid value "דני" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write a valid value "גלעד" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "ח.פ." from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write a valid value "3327" in "מספר ח.פ."
    And  from parent "פרטי מגיש הבקשה" fill "058-8078687" as valid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-8078687" as valid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When from parent "פרטי מגיש הבקשה" pick "המחזיק" from "ממלא ההשגה"






  Scenario: TC_OBJECTIONPRO_04 - Entering correct values for personal fields when the institution identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write a valid value "דני" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write a valid value "גלעד" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "מוסד" from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write a valid value "3327" in "מספר מוסד"
    And  from parent "פרטי מגיש הבקשה" fill "058-8078687" as valid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-8078687" as valid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When from parent "פרטי מגיש הבקשה" pick "המחזיק" from "ממלא ההשגה"





  Scenario: TC_OBJECTIONPRO_05 - Entering correct values for personal fields when the association identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write a valid value "דני" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write a valid value "גלעד" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "עמותה" from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write a valid value "3327" in "מספר עמותה"
    And  from parent "פרטי מגיש הבקשה" fill "058-8078687" as valid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-8078687" as valid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When from parent "פרטי מגיש הבקשה" pick "המחזיק" from "ממלא ההשגה"





  Scenario: TC_OBJECTIONPRO_06 type 1 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "sda" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "asdsad" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "ת.ז." from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "sdadw" in "מספר ת.ז."
    And  from parent "פרטי מגיש הבקשה" fill "058-807d68r" as invalid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-80s86t7" as invalid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "גכעיחלעיח" in "דוא"ל"



  Scenario: TC_OBJECTIONPRO_06 type 2 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "sda" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "asdsad" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "דרכון" from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "sfdsfsdfs" in "מספר דרכון"
    And  from parent "פרטי מגיש הבקשה" fill "058-807d68r" as invalid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-80s86t7" as invalid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "גכעיחלעיח" in "דוא"ל"




  Scenario: TC_OBJECTIONPRO_06 type 3 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "sda" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "asdsad" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "ח.פ." from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "sfdsfsdfs" in "מספר ח.פ."
    And  from parent "פרטי מגיש הבקשה" fill "058-807d68r" as invalid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-80s86t7" as invalid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "גכעיחלעיח" in "דוא"ל"



  Scenario: TC_OBJECTIONPRO_06 type 4 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "sda" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "asdsad" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "מוסד" from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "sfdsfsdfs" in "מספר מוסד"
    And  from parent "פרטי מגיש הבקשה" fill "058-807d68r" as invalid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-80s86t7" as invalid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "גכעיחלעיח" in "דוא"ל"



  Scenario: TC_OBJECTIONPRO_06 type 5 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "sda" in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "asdsad" in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" pick "עמותה" from "סוג זיהוי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "sfdsfsdfs" in "מספר עמותה"
    And  from parent "פרטי מגיש הבקשה" fill "058-807d68r" as invalid value in "טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" fill "02-80s86t7" as invalid value in "טלפון קווי"
    When from parent "פרטי מגיש הבקשה" write an invalid value "גכעיחלעיח" in "דוא"ל"

