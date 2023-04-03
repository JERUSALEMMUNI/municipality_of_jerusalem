
Feature: ExemptionVolunteerInstitution form - scenarios step 4

  - Form name: בקשה לקבלת פטור מארנונה לנכסי מוסד מתנדב לשירות הציבור
  - Feature file name: Exemption_Volunteer_Institution_step_4.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionVolunteerInstitution
  - Number of Pages is : 6, We are at step: 4
  - All fields are mandatory expect of (סכום הארנונה הנדרש)


  Background:
    Given  Navigate to "ExemptionVolunteerInstitution" form and reach step "פרוט נכסים"

  Scenario: EXCEPTVOLUNT_04 הזנת ערכים תקינים ב"פירוט נכסים" נכס יחיד
    When from table "פרוט נכסים" at row "1" write a valid value "1234567890" in "זיהוי נכס או מס' חשבון ארנונה"
    When from table "פרוט נכסים" at row "1" search valid value and pick "א טברי" in search field "רחוב"
    When from table "פרוט נכסים" at row "1" write a valid number "123" in "מס' בית"
    When from table "פרוט נכסים" at row "1" write a valid value "3323" in "שטח החיוב במ"ר"
    When from table "פרוט נכסים" at row "1" write a valid value "33223" in "סכום הארנונה הנדרש"
    When from table "פרוט נכסים" at row "1" pick "כן" from "האם הנכס משמש אדם או גוף אחר?"
    When from table "פרוט נכסים" at row "1" write a valid value "דדד" in textarea of "סוג הפעילות המפורט בנכס"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך"




  Scenario: EXCEPTVOLUNT_05 הזנת ערכים תקינים ב"פירוט נכסים" מספר נכסים
    When from table "פרוט נכסים" at row "1" write a valid value "1234567890" in "זיהוי נכס או מס' חשבון ארנונה"
    When from table "פרוט נכסים" at row "1" search valid value and pick "א טברי" in search field "רחוב"
    When from table "פרוט נכסים" at row "1" write a valid number "123" in "מס' בית"
    When from table "פרוט נכסים" at row "1" write a valid value "3323" in "שטח החיוב במ"ר"
    When from table "פרוט נכסים" at row "1" write a valid value "33223" in "סכום הארנונה הנדרש"
    When from table "פרוט נכסים" at row "1" pick "כן" from "האם הנכס משמש אדם או גוף אחר?"
    When from table "פרוט נכסים" at row "1" write a valid value "דדד" in textarea of "סוג הפעילות המפורט בנכס"
    When from table "פרוט נכסים" add "1" rows
    When from table "פרוט נכסים" at row "2" write a valid value "1234567890" in "זיהוי נכס או מס' חשבון ארנונה"
    When from table "פרוט נכסים" at row "2" search valid value and pick "א טברי" in search field "רחוב"
    When from table "פרוט נכסים" at row "2" write a valid number "123" in "מס' בית"
    When from table "פרוט נכסים" at row "2" write a valid value "3323" in "שטח החיוב במ"ר"
    When from table "פרוט נכסים" at row "2" write a valid value "33223" in "סכום הארנונה הנדרש"
    When from table "פרוט נכסים" at row "2" pick "לא" from "האם הנכס משמש אדם או גוף אחר?"
    When from table "פרוט נכסים" at row "2" write a valid value "דדד" in textarea of "סוג הפעילות המפורט בנכס"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך"


  Scenario: EXCEPTVOLUNT_11 הזנת ערכים שגויים ב"פירוט נכסים"
    When from table "פרוט נכסים" at row "1" write an invalid value "qwertyuio" in "זיהוי נכס או מס' חשבון ארנונה"
    Then from table "פרוט נכסים" at row "1" check if "זיהוי נכס או מס' חשבון ארנונה" error is "יש להזין ספרות בלבד"
    When from table "פרוט נכסים" at row "1" search invalid value and pick "zz" in search field "רחוב"
    When from table "פרוט נכסים" at row "1" write an invalid number "tt" in "מס' בית"
    Then from table "פרוט נכסים" at row "1" check if "מס' בית" error is "יש להזין ספרות בלבד"
    When from table "פרוט נכסים" at row "1" write an invalid value "3323" in "שטח החיוב במ"ר"
    Then from table "פרוט נכסים" at row "1" check if "שטח החיוב במ"ר" error is "יש להזין ספרות בלבד"
    When from table "פרוט נכסים" at row "1" write an invalid value "33223" in "סכום הארנונה הנדרש"
    Then from table "פרוט נכסים" at row "1" check if "שטח החיוב במ"ר" error is "סכום הארנונה הנדרש"
    When from table "פרוט נכסים" at row "1" write an invalid value "דדד" in textarea of "סוג הפעילות המפורט בנכס"
    Then from table "פרוט נכסים" at row "1" check if textarea "סוג הפעילות המפורט בנכס" error is "שפת קלט לא תקינה"
