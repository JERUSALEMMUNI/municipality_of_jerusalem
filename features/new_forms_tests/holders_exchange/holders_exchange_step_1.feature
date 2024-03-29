Feature: HoldersExchange form step 1

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, we are in step 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: TC_HOLDERSEXCH_01 הזנת ערכים תקינים בשדות "פרטי מגיש"
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write a valid value "2222222" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    And fill number "8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When click on "המשך" button
    Then validate if "dialog" appeared
    When close "dialog"
    When clear fields


  Scenario: TC_HOLDERSEXCH_10 הזנת ערכים שגוים בשדות "פרטי מגיש"
    When write an invalid value "asdasd" in "שם פרטי"
    Then validate "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asdf" in "שם משפחה"
    Then validate "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write an invalid value "agvxsw" in "מספר ת.ז."
    Then validate "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-sdfdsf" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-233" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-232" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill "02-שדגדש" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להזין ספרות בלבד"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להזין אותיות באנגלית בלבד"
    When write an invalid value "dfg@" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להשלים כתובת אימייל"
    When clear fields
