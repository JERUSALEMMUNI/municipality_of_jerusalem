Feature: StandingOrderRequest form - scenarios step 1

  - Form name: בקשה להצטרפות להסדר הוראת קבע ארנונה/ חינוך
  - Feature file name: standing_order_request.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/StandingOrderRequest
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_STANDINGORDEREQ_01 - Checking "personal details" fields with correct details
    Given Navigate to "StandingOrderRequest" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When pick a valid "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When clear fields


  @Checked_By_Firas_and_Darweesh
  Scenario: TC_STANDINGORDEREQ_03 - Checking "personal details" fields with incorrect details
    Given Navigate to "StandingOrderRequest" form
    When write an invalid value "dddd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "dddd" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write an invalid value "dqd2323" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When pick a valid "דרכון" from "סוג זיהוי"
    When write an invalid value "ds2323" in "מספר דרכון"
    Then check if "מספר דרכון" error is "מספר דרכון לא תקין"
    When fill number "80767" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When write an invalid value "כעיחלך" in "דוא"ל"
    #Todo: Email error message as sofia: יש להזין אותיות באנגלית בלבד", "יש להשלים כתובת אימייל
    Then check if "דוא"ל" error is "שדה לא תקין"
    When fill number "80767" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
#    When clear fields


