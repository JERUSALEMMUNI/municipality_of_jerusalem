@in_dev
Feature: TransferDogOwnership form - scenarios step 2

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

  #TODO : wait for fix email address in background scenario
   Background:Background Scenario
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דרןח" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דגעחוח" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "f.a@c.com" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" write "א טור" in search field "רחוב"
    And  from parent "פרטי מגיש הבקשה" write a valid value "2" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "קכקק" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "דגככגדק" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי המוסר" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" write a valid value "ירושלים" in "יישוב"
    And  from parent "פרטי המוסר" write a valid value "א טור" in "רחוב"
    And  from parent "פרטי המוסר" write a valid value "2" in "מספר בית"
    And click on "המשך" icon

  #there is a problem, the scenario dont pick from calendar
  Scenario:TC_DOGOWNER_05 - הזנת ערכים תקינים לשדות  הכלב
    When write a valid value "ביסקו" in "שם הכלב"
    And write a valid value "דשגדק" in "גזע"
    And choose "זכר" from "מין"
    And write a valid value "לבן" in "צבע"
    And write a valid value "982009104328548" in "מספר שבב"
    And pick "2020" from "שנת לידה"
    And choose "כן" from "הכלב מחוסן כנגד מחלת הכלבת?"
    And pick "8/3/2020" from calendar of "תאריך חיסון כלבת אחרון"
    And search for "אבו סריחאן )שבט(" in "הכלב רשום ברשות המקומית"
    And pick "8/3/2020" from calendar of "תאריך מסירת הכלב"
    When from header click on "שמור" icon
    And close error message
    When 1st wait for email that contains pin code and link
    And 2nd click on link and fill email "{email}" pin code
    And 3rd wait for second email to get "קוד האימות"
    And 4th close all tabs
    Then 5th Validate if went back to expected form
    Then validate current step is "פרטי מגיש הבקשה המקבל והמוסר"



  Scenario: TC_DOGOWNER_06 - הזנת ערכים תקינים לשדות  הכלב
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "قفغعه" in "שם הכלב"
    And write an invalid value "يسبسtyu" in "גזע"
    And choose "זכר" from "מין"
    And write an invalid value "يبلات" in "צבע"
    And write an invalid value "ثقفغعة" in "מספר שבב"
    And pick "شسيشيص" from "הכלב רשום ברשות המקומית"









