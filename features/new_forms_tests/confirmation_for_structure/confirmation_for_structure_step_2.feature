Feature: ConfirmationForStructure form - scenarios step 2
  - Form name: בקשה לאישור העדר סכנה למבנה
  - Feature file name: ConfirmationForStructure.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ConfirmationForStructure
  - Number of Pages is : 2, We are at Step: 2
  - All fields are mandatory except ( רחוב, מספר בית, מספר דירה, גוש, חלקה, תת חלקה)

 Background: Background Scenario
    Given Navigate to "ConfirmationForStructure" form and reach step "פרטי הנכס"

  @Checked_By_Firas_and_Darweesh
  Scenario: CONFIRSTRUCT_02 - Entering correct values for the "request details" fields
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When search valid value and pick "א טברי" in search field "רחוב"
    When write a valid value "1" in "מספר בית"
    When write a valid value "1" in "מספר דירה"
    When write a valid value "1" in "גוש"
    When write a valid value "1" in "חלקה"
    When write a valid value "1" in "תת חלקה"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך" button
#    When clear fields


  @Checked_By_Firas_and_Darweesh
  Scenario: CONFIRSTRUCT_05 - Entering incorrect values for the "Details of the applicant" fields
    When search invalid value and pick "א טdssברי" in search field "רחוב"
    Then check if "רחוב" no results found appeared
    When write an invalid value "54d" in "מספר בית"
    Then check if "מספר בית" error is "יש להזין ספרות בלבד"
    When write an invalid value "1cdc223" in "גוש"
    Then check if "גוש" error is "יש להזין ספרות בלבד"
    When write an invalid value "1frf54re4" in "מספר דירה"
    Then check if "מספר דירה" error is "יש להזין ספרות בלבד"
    When write an invalid value "8ce75ecec" in "חלקה"
    Then check if "חלקה" error is "יש להזין ספרות בלבד"
    When write an invalid value "4jk5981" in "תת חלקה"
    Then check if "תת חלקה" error is "יש להזין ספרות בלבד"
#    When clear fields


