Feature: TreeCut form - scenarios step 1

  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TreeCut
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory of (טלפון קווי)


  Scenario: TC_TREECUT_01 - Checking "personal details" fields with correct details
    Given Navigate to "TreeCut" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill number "8078687" as valid value in "טלפון נייד"
    When fill number "8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "10215" in "מספר בית"
#    When click on "המשך" button

  Scenario: TC_TREECUT_07 - Entering incorrect values for the "Details of the applicant" fields
    Given Navigate to "TreeCut" form
    When write an invalid value "dddd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "dddd" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "000000018" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When pick "דרכון" from "סוג זיהוי"
    When write an invalid value "ds2jk323" in "מספר דרכון"
    When fill number "80767" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When write an invalid value "כעיחלך" in "דוא"ל"
    Then check if "דוא"ל" error is "שדה לא תקין"
    When fill number "80767" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When search invalid value and pick "א DSDנחיל" in search field "רחוב"
    When write a valid number "54332326" in "מספר בית"

