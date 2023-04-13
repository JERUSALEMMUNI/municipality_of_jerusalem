Feature: TreeCut form - scenarios step 3

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory of (טלפון קווי)


  Background: Background Scenario
    Given Navigate to "TreeCut" form and reach step "הצהרה"


  Scenario: TTC_TREECUT_06 מילוי הצהרה
    When check the box of "מגיש הבקשה מצהיר"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך"
#    When clear fields


