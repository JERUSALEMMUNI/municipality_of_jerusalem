@in_dev
Feature: ObjectionPropertyTaxes form - scenarios step 1

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  Scenario: TC_OBJECTIONPRO_01 - Entering correct values for personal fields when the thesis identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



  Scenario: TC_OBJECTIONPRO_02 - Entering correct values for personal fields when the passport identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_03 - Entering correct values for personal fields when the H.P. identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ח.פ."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form




  Scenario: TC_OBJECTIONPRO_04 - Entering correct values for personal fields when the institution identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "3327" in "מספר מוסד"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form






  Scenario: TC_OBJECTIONPRO_05 - Entering correct values for personal fields when the association identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_06 type 1 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "sdadw" in "מספר ת.ז."
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"

  Scenario: TC_OBJECTIONPRO_06 type 2 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "sfdsfsdfs" in "מספר דרכון"
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"


  Scenario: TC_OBJECTIONPRO_06 type 3 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "sdaasdasd" in "מספר ח.פ."
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"


  Scenario: TC_OBJECTIONPRO_06 type 4 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "fdsdfsdf" in "מספר מוסד"
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"


  Scenario: TC_OBJECTIONPRO_06 type 5 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "sfdssdf" in "מספר עמותה"
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"

