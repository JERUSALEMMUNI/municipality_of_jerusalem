Feature: PlanningInformation form - scenarios step 2

  - Form name: קבלת מידע תכנוני בתשלום לפי סעיף 119א
  - Feature file name: planning_information.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PlanningInformation
  - Number of Pages is : 3, We are at step: 2


  Background: Background Scenario
    Given Navigate to "PlanningInformation" form and reach step "פרטי הבקשה"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PLANNINGINFO_02 הזנת ערכים תקינים לשדות "פרטי הבקשה" דואר אלקטרוני
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "דואר אלקטרוני" from "הדרך המועדפת לקבלת התשובה ופרטים נוספים הנדרשים לבירור"
    And write a valid value "2" in "חלקות רצופות"
    And write a valid value "3" in "חלקות בודדות"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא מלא את את בקשתך, יש לציין גוש וחלקה ו/או תוכנית ומגרש ו/או כתובת ו/או קורדינאטות"
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
  Scenario: TC_PLANNINGINFO_03 הזנת ערכים תקינים לשדות "פרטי הבקשה" דואר רגיל
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "דואר רגיל" from "הדרך המועדפת לקבלת התשובה ופרטים נוספים הנדרשים לבירור"
    And write a valid value "שד' הרצל 15/2, חיפה" in "כתובת"
    And write a valid value "2" in "חלקות רצופות"
    And write a valid value "3" in "חלקות בודדות"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא מלא את את בקשתך, יש לציין גוש וחלקה ו/או תוכנית ומגרש ו/או כתובת ו/או קורדינאטות"
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
  Scenario: TC_PLANNINGINFO_06 הזנת ערכים שגוים לשדות "פרטי הבקשה"
    When choose "דואר רגיל" from "הדרך המועדפת לקבלת התשובה ופרטים נוספים הנדרשים לבירור"
    And write an invalid value "afdssdf" in "כתובת"
    Then check if "כתובת" error is "שפת הקלט לא תקינה"
    When write an invalid value "דגכדגכדגכדגכגדכדגכדקכקדקכגדכדגכדשגכגדכשדכשדגכדשגכגדשכשדגכגדשכשדגכדגשכגדכדשגכדשגכגדכדגכדשגכגדכגדשכדגכדגכדשגערשעדכגדכגדכשדגכגדשכדשגכדשגכגדכשדגכדשגכגדשכדגכשכקדכדקכדקכדקכקדכדקכקדכקדכ" in "כתובת"
    Then check if "כתובת" error is "ניתן להזין עד 50 תווים"
    #todo: error message should be יש להזין מספר מעל/עד X תווים
    When write an invalid value "234234234234" in "חלקות רצופות"
    Then check if "חלקות רצופות" error is "שדה לא תקין"
    #todo: error message should be יש להזין מספר עד X תווים
    When write an invalid value "234234234234234" in "חלקות בודדות"
    Then check if "חלקות בודדות" error is "שדה לא תקין"
    When write an invalid value "sfdadfadfsd" in textarea of "נא מלא את את בקשתך, יש לציין גוש וחלקה ו/או תוכנית ומגרש ו/או כתובת ו/או קורדינאטות"
    Then check if "נא מלא את את בקשתך, יש לציין גוש וחלקה ו/או תוכנית ומגרש ו/או כתובת ו/או קורדינאטות" error is "שפת קלט לא תקינה"
    When clear fields
