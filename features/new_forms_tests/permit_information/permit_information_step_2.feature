Feature: PermitInformation form - scenarios step 2

  - Form name: טופס תשלום עבור תיק מידע להיתר
  - Feature file name: permit_information.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PermitInformation
  - Number of Pages is : 3, We are at step: 2



  Background: Background Scenario
    Given Navigate to "PermitInformation" form and reach step "פרטי הבקשה"


  Scenario: PERMITINFO_02 הזנת פרטים תקינים בשדות "פרטי בקשה"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "34234234232" in "מספר תיק רישוי זמין"
    And write a valid value "23432" in "כמות חלקות רצופות"
    And write a valid value "23432" in "כמות חלקות בודדות"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "הערות"
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


  Scenario: PERMITINFO_05 הזנת פרטים שגוים בשדות "פרטי בקשה"
    When write an invalid value "000000" in "מספר תיק רישוי זמין"
    Then check if "מספר תיק רישוי זמין" error is "שדה לא תקין"
    When write a valid number "sd11a" in "כמות חלקות רצופות"
    Then validate if "כמות חלקות רצופות" number is "11"
    When write a valid number "sd11a" in "כמות חלקות בודדות"
    Then validate if "כמות חלקות בודדות" number is "11"
    When write an invalid value "dsfsdfdsf" in textarea of "הערות"
    Then check if "הערות" error is "שפת קלט לא תקינה"
    When clear fields
