#@in_dev
Feature: ExemptionVolunteerInstitution form - scenarios step 2

  - Form name: בקשה לקבלת פטור מארנונה לנכסי מוסד מתנדב לשירות הציבור
  - Feature file name: Exemption_Volunteer_Institution_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionVolunteerInstitution
  - Number of Pages is : 6, We are at step: 2


  Background: Background Scenario
    Given Navigate to "ExemptionVolunteerInstitution" form and reach step "פרטי מוסד"

  Scenario: EXCEPTVOLUNT_02 הזנת ערכים תקינים ב"פרטי מוסד"
    When write a valid value "ווסאם" in "שם מוסד"
    And pick "עמותה" from "צורת ההתאגדות"
    And write a valid value "1223" in "מספר רישום"
    And search valid value and pick "ירושלים" in search field "ישוב"
    And search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "1" in "מס' בית"
    And fill number "8078687" as valid value in "טלפון קווי"
    When choose "כן" from "האם העמותה מחזיקה בדירות מגורים?"
    And write a valid value "1223" in textarea of "המטרות העיקריות של המוסד"
    And write a valid value "דדדדדד" in textarea of "סקירת השירותים הניתנים על ידי המוסד והפעילויות המתבצעות במסגרתו"
    And write a valid value "1223" in textarea of "פירוט מלא של התמורה שהמוסד גובה עבור שירותיו/פעולותיו"
    And write a valid value "בבבב" in textarea of "הקריטריונים/תנאי הזכאות לקבלת שירותים מהמוסד"
    And write a valid value "1223" in textarea of "פירוט האוכלוסיה הנהנית משירותי המוסד"
    And write a valid value "בבסבס בססבסב בסבסבס" in "האם המוסד קשור לארגון/תאגיד מקומי או ארצי אחר"
    And write a valid number "21" in "אחוז תושבי ירושלים המקבלים שירות מהעמותה מבין כלל מקבלי השירותים מהעמותה"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    When click on "המשך"



#  Scenario: EXCEPTVOLUNT_09 הזנת ערכים שגויים ב"פרטי מוסד"
#    When write an invalid value "asdasd" in "שם מוסד"
#    Then check if "שם מוסד" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
#    When write an invalid value "12345678901234" in "מספר רישום"

