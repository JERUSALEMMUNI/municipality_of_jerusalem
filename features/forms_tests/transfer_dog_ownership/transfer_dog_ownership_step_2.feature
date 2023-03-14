
Feature: TransferDogOwnership form - scenarios step 2

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

   Background: Background Scenario
     Given Navigate to "TransferDogOwnership" form and reach step "פרטי הכלב"



  Scenario:TC_DOGOWNER_05 - Dog fields test (valid)
    When write a valid value "ביסקו" in "שם הכלב"
    And write a valid value "דשגדק" in "גזע"
    And choose "זכר" from "מין"
    And write a valid value "לבן" in "צבע"
    And write a valid value "982009104328548" in "מספר שבב"
    And pick "2020" from "שנת לידה"
    And choose "כן" from "הכלב מחוסן כנגד מחלת הכלבת?"
    And pick "8/3/2020" from second type of calendar of "תאריך חיסון כלבת אחרון"
    And search and pick "אבו גוש" in search field "הכלב רשום ברשות המקומית"
    And pick "8/5/2023" from second type of calendar of "תאריך מסירת הכלב"



  Scenario: TC_DOGOWNER_06 - Dog fields test (invalid)
    When write an invalid value "قفغعه" in "שם הכלב"
    And write an invalid value "يسبسtyu" in "גזע"
    And choose "זכר" from "מין"
    And write an invalid value "يبلات" in "צבע"
    And write an invalid value "ثقفغعة" in "מספר שבב"
    And pick "شسيشيص" from "הכלב רשום ברשות המקומית"









