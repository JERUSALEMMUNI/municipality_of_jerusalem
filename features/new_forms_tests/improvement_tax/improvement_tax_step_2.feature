Feature: improvementTax form - scenarios step 2

  - Form name: בירור חבות בהיטל השבחה
  - Feature file name: improvement_tax.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ImprovementTax
  - Number of Pages is : 3, We are at step: 2


  Background: Background Scenario
    Given Navigate to "ImprovementTax" form and reach step "פרטי הנכס"

  @Checked_By_Firas_and_Darweesh
  Scenario: IMROVEMENTATX_02 הזנת ערכים תקינים בשדות "פרטי הנכס"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "123123123321223" in "זיהוי נכס (מתוך חשבון הארנונה)"
    And search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "1" in "מספר בית"
    And write a valid value "1223" in "גוש"
    And write a valid value "875" in "חלקה"
    And pick "למגורים" from "מהות נכס"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: IMROVEMENTATX_05 הזנת ערכים שגוים בשדות "פרטי הנכס"
    When write an invalid value "efdfsdfsfd" in "זיהוי נכס (מתוך חשבון הארנונה)"
    Then check if "זיהוי נכס (מתוך חשבון הארנונה)" error is "יש להזין ספרות בלבד"
    When search invalid value and pick "dsfsdf" in search field "רחוב"
    Then check if "רחוב" no results found appeared
    When write a valid number "sfs31" in "מספר בית"
    Then validate if "מספר בית" number is "31"
    When write an invalid value "sdfsdfds" in "גוש"
    Then check if "גוש" error is "יש להזין ספרות בלבד"
    When write an invalid value "sdfsdf" in "חלקה"
    Then check if "חלקה" error is "יש להזין ספרות בלבד"
    When clear fields


