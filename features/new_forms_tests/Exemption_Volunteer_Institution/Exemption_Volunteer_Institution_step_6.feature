@in_dev
Feature: ExemptionVolunteerInstitution form - scenarios step 6

  - Form name: בקשה לקבלת פטור מארנונה לנכסי מוסד מתנדב לשירות הציבור
  - Feature file name: Exemption_Volunteer_Institution_step_6.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionVolunteerInstitution
  - Number of Pages is : 6, We are at step: 6
  - All fields are mandatory


  Background:
    Given  Navigate to "ExemptionVolunteerInstitution" form and reach step "מסמכים"

  Scenario: EXCEPTVOLUNT_07 "תצהיר ושליחת הטופס"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכ" in textarea of "הערות"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    #When click on "שמור" button
    #When click on "שמור טיוטה" button tyota
    #When 1st wait for "email" that contains pin code and link
    #When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #When click on "email" option
    #When 3rd wait for second "email" to get "קוד האימות" index "2"
    #When 4th close all tabs "email" at index "2"
    #Then 5th Validate if went back to expected "email" form
    #When click on "המשך"
