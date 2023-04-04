Feature: PermitInformation form - scenarios step 3

  - Form name: טופס תשלום עבור תיק מידע להיתר
  - Feature file name: permit_information.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PermitInformation
  - Number of Pages is : 3, We are at step: 3


  Background: Background Scenario
    Given Navigate to "PermitInformation" form and reach step "הצהרה"


  Scenario: PERMITINFO_03 הזנת פרטים תקינים בשדות "הצהרה"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
#   And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


