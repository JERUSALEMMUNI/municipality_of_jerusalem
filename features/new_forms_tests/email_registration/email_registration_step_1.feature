Feature: EmailRegistration form - scenarios step 1

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: email_registration.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/EmailRegistration
  - Number of Pages is : 2, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: TC_EMAILREG_01-02 "הזנת ערכים תקינים לשדות "פרטים אישיים
    Given Navigate to "EmailRegistration" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "2222222" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    And fill number "8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on "email" option
#    When 1st wait for "email" that contains pin code and link
#    When set pin code "email"
    When clear fields


  Scenario: TC_EMAILREG_11 "הזנת ערכים שגויים לשדות "פרטים אישיים
    Given Navigate to "EmailRegistration" form
    When write an invalid value "sdsd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "zxcz" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "000000018" in "מספר ת.ז."
    And fill number "807d367" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When write an invalid value "כעיחלך" in "דוא"ל"
    Then check if "דוא"ל" error is "יש להזין אותיות באנגלית בלבד"
    When clear fields


  Scenario: TC_EMAILREG_11 type 2 "הזנת ערכים שגויים לשדות "פרטים אישיים
    Given Navigate to "EmailRegistration" form
    When write an invalid value "sdsd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "zxcz" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "000000018" in "מספר ת.ז."
    And fill number "80767" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When write an invalid value "כעיחלך" in "דוא"ל"
    Then check if "דוא"ל" error is "יש להזין אותיות באנגלית בלבד"
    When clear fields








