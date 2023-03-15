Feature: TreeCut form - scenarios step 1

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

@in_dev
  Scenario: TC_TREECUT_01 - Checking "personal details" fields with correct details
    Given Navigate to "TreeCut" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When goto "א נחיל" from "רחוב"
    When write a valid value "1" in "מספר בית"
    When click on "המשך" button
    When test temp
