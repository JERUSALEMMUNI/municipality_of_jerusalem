Feature: improvementTax form - scenarios step 3

  - Form name: בירור חבות בהיטל השבחה
  - Feature file name: improvement_tax.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ImprovementTax
  - Number of Pages is : 3, We are at step: 3


  Background: Background Scenario
    Given Navigate to "ImprovementTax" form and reach step "הצהרה"
    When close "dialog"

  Scenario: IMROVEMENTATX_03 הזנת ערכים תקינים בשדות "הצהרה ושליחת הטופס"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When clear fields

