Feature: EmailRegistration form - scenarios step 1

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: email_registration.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/EmailRegistration
  - Number of Pages is : 2, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_EMAILREG_01-02 "הזנת ערכים תקינים לשדות "פרטים אישיים
    Given Navigate to "EmailRegistration" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write a valid value "2222222" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    And fill number "8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on "email" option
#    When 1st wait for "email" that contains pin code and link
#    When set pin code "email"
#    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_EMAILREG_11 "הזנת ערכים שגויים לשדות "פרטים אישיים
    Given Navigate to "EmailRegistration" form
    When write an invalid value "sdsd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "zxcz" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write an invalid value "000000018" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill number "807d367" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill number "80767" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    #Todo: Email error message as sofia: יש להזין אותיות באנגלית בלבד", "יש להשלים כתובת אימייל
    When write an invalid value "כעיחלך" in "דוא"ל"
    Then check if "דוא"ל" error is "שדה לא תקין"
#    When clear fields










