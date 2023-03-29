Feature: PlanningInformation form - scenarios step 3

  - Form name: קבלת מידע תכנוני בתשלום לפי סעיף 119א
  - Feature file name: planning_information.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PlanningInformation
  - Number of Pages is : 3, We are at step: 3


  Background: Background Scenario
    Given Navigate to "PlanningInformation" form and reach step "הצהרה"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PLANNINGINFO_04 "הזנת ערכים תקינים לשדות "הצהרה
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When clear fields

