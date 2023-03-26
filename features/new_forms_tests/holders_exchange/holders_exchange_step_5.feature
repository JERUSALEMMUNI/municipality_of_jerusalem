@in_dev
Feature: HoldersExchange form step 5

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, we are in step 5
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "HoldersExchange" form and reach step "פרטי מחזיק חדש"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "2222222" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "22022023" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "10MB_file_to_upload.pdf" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button



  Scenario: TC_HOLDERSEXCH_09 הזנת ערכים תקינים בשדות "תצהיר ושליחה"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכ" in textarea of "הערות"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"





