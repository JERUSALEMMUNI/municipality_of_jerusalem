@in_dev
Feature: TreeCut form - scenarios step 1

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 1
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

@in_dev
  Scenario: TC_TREECUT_02 - Checking "personal details" fields with correct details
    Given Navigate to "TreeCut" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When goto "א נחיל" from "רחוב"
    #todo there is somthing wrong in the xpath input has no valid/invalid
    When write a valid value "1" in "מספר בית"
    When click on "המשך" button


  Scenario: TC_TREECUT_03 - Checking "personal details" fields with incorrect details
    Given Navigate to "TreeCut" form
    When write an invalid value "dddd" in "שם פרטי"
    When write an invalid value "dddd" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "dqd2323" in "מספר ת.ז."
    When pick "דרכון" from "סוג זיהוי"
    When write an invalid value "ds2323" in "מספר דרכון"
    When fill number "ds232" as invalid value in "טלפון נייד"
    When fill number "ds232" as invalid value in "טלפון קווי"
    When write an invalid value "TEMP_EMAIL_ADDRESS" in "דוא"ל"
        #todo broken here
    When goto "נklיל" from "רחוב"
    When write an invalid value "1dsc233233" in "מספר בית"

















