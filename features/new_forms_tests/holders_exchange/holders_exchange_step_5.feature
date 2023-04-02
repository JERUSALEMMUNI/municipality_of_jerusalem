Feature: HoldersExchange form step 5

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, we are in step 5
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "HoldersExchange" form and reach step "תצהיר ושליחה"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_09 הזנת ערכים תקינים בשדות "תצהיר ושליחה"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכ" in textarea of "הערות"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
#    When clear fields




