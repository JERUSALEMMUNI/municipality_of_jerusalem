Feature: TreeCut form - scenarios step 1

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory of (טלפון קווי)

  @wisam
  Scenario: TC_TREECUT_01 - Checking "personal details" fields with correct details
    Given Navigate to "TreeCut" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
#    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill prefix "058" in "טלפון נייד"
    When fill number "7899988" as valid value in "טלפון נייד"
#    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When search valid value and pick "א טברי" in search field "רחוב"
    When write a valid number "1" in "מספר בית"


  Scenario: TC_TREECUT_02 - Checking "personal details" fields with correct details
    Given Navigate to "TreeCut" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When search valid value and pick "א טברי" in search field "רחוב"
    When write a valid number "1" in "מספר בית"

  Scenario: TC_TREECUT_03 - Checking "personal details" fields with incorrect details
    Given Navigate to "TreeCut" form
    When write an invalid value "dddd" in "שם פרטי"
    When write an invalid value "dddd" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "dqd2323" in "מספר ת.ז."
    When pick "דרכון" from "סוג זיהוי"
    When write an invalid value "ds2jk323" in "מספר דרכון"
    When fill "098-ds232" as invalid value in "טלפון נייד"
    When fill "450-ds232" as invalid value in "טלפון קווי"
    When write an invalid value "TEMP_EMAIL_ADDRESS" in "דוא"ל"
     When search invalid value and pick "א DSDנחיל" in search field "רחוב"
    When write an invalid number "dsa1dada" in "מספר בית"