Feature: ConfirmationForStructure form - scenarios step 1
  - Form name: בקשה לעקירת עצים
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ConfirmationForStructure
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory of (טלפון קווי)

 Scenario: CONFIRSTRUCT_01 - Checking "personal details" fields with correct details
    Given Navigate to "ConfirmationForStructure" form
    When write a valid value "332796184" in "מספר ת.ז."
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill number "8073267" as valid value in "טלפון קווי"
    When clear fields


 Scenario: CONFIRSTRUCT_04 - Entering incorrect values for the "Details of the applicant" fields
    Given Navigate to "ConfirmationForStructure" form
    When write an invalid value "dddd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "dddd" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "000000018" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill number "80767" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When write an invalid value "כעיחלך" in "דוא"ל"
    Then check if "דוא"ל" error is "שדה לא תקין"
    When fill number "80767" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When clear fields
