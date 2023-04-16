#@in_dev

Feature: ExemptionEmptyProperty form - scenarios step 1

  - Form name:  פטור לנכס ריק וחדש וריק
  - Feature file name: Exemption_Empty_Property_step_1.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionEmptyProperty
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  Scenario: EMPTYPROPERTY_01 הזנת ערכים תקינים בשדות "מגיש הבקשה"
    Given Navigate to "ExemptionEmptyProperty" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    And fill number "8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When click on "המשך"
    # button # When click on "email" option
    # When 1st wait for "email" that contains pin code and link
#    When set pin code "email"
    Then validate if "dialog" appeared
    When close "dialog"
    When clear fields


  Scenario: EMPTYPROPERTY_13 הזנת ערכים שגוים בשדות "מגיש הבקשה"
    When write an invalid value "asdasd" in "שם פרטי"
    Then validate "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asdf" in "שם משפחה"
    Then validate "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write an invalid value "000000018" in "מספר ת.ז."
    Then validate "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-sdfdsf" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-233" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-232" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill "02-שדגדש" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-sdfdsf" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להזין ספרות בלבד"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להזין אותיות באנגלית בלבד"
    When write an invalid value "www@" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להשלים כתובת אימייל"
    Then validate if "dialog" did not appear
    When clear fields
