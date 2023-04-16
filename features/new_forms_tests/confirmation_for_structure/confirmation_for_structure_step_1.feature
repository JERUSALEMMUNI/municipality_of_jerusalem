Feature: ConfirmationForStructure form - scenarios step 1
  - Form name:  בקשה לאישור העדר סכנה למבנה
  - Feature file name: tree_cut.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ConfirmationForStructure
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory of (טלפון קווי)


 Scenario: CONFIRSTRUCT_01 "הזנת ערכים תקינים בשדות "פרטי מגיש הבקשה
    Given Navigate to "ConfirmationForStructure" form
    When write a valid value "332796184" in "מספר ת.ז."
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill number "8073267" as valid value in "טלפון קווי"
    When click on "המשך" button
    Then validate if "dialog" appeared
    When close "dialog"
#    When clear fields


 Scenario: CONFIRSTRUCT_04 "הזנת ערכים שגוים בשדות "פרטי מגיש הבקשה
    Given Navigate to "ConfirmationForStructure" form
    When write an invalid value "dddd" in "שם פרטי"
    Then validate "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "dddd" in "שם משפחה"
    Then validate "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "000000018" in "מספר ת.ז."
    Then validate "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill number "80767" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill number "חלחמג" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להזין ספרות בלבד"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להזין אותיות באנגלית בלבד"
    When write an invalid value "wwws@" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להשלים כתובת אימייל"
    When fill number "80767" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill number "חלחמג" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להזין ספרות בלבד"
    When click on "המשך" button
    Then validate if "dialog" did not appear
#    When clear fields
