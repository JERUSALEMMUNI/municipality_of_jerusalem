Feature: ConfirmationForStructure form - scenarios step 3
  - Form name: בקשה לאישור העדר סכנה למבנה
  - Feature file name: ConfirmationForStructure.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ConfirmationForStructure
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except ( רחוב, מספר בית, מספר דירה, גוש, חלקה, תת חלקה)

  Background: Background Scenario
    Given Navigate to "ConfirmationForStructure" form and reach step "הזדהות ושליחה"


  Scenario: CONFIRSTRUCT_03 - Filling out a statement
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך"
    When clear fields


