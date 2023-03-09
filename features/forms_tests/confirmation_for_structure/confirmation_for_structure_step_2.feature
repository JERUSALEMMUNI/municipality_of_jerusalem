Feature: ConfirmationForStructure form - scenarios step 2

  - Form name: בקשה לאישור העדר סכנה למבנה
  - Feature file name: ConfirmationForStructure.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ConfirmationForStructure
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except ( רחוב, מספר בית, מספר דירה, גוש, חלקה, תת חלקה)

  Scenario: Background Scenario
    Given Navigate to "ConfirmationForStructure" form
    When write a valid value "332796184" in "מספר ת.ז."
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When click on "המשך" button
    When test temp

  Scenario: fill form
    When goto "א זוהור" from "רחוב"
    When write a valid value "1" in "מספר בית"
    When write a valid value "1" in "מספר דירה"
    When write a valid value "1" in "גוש"
    When write a valid value "1" in "חלקה"
    When write a valid value "1" in "תת חלקה"
    When click on "המשך" button



