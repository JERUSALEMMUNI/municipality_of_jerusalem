Feature: HoldersExchange form step 1

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, we are in step 1
  - All fields are mandatory expect of (טלפון קווי)

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_01 הזנת ערכים תקינים בשדות "פרטי מגיש"
    Given Navigate to "HoldersExchange" form
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
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_10 הזנת ערכים שגוים בשדות "פרטי מגיש"
    When write an invalid value "asdasd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asdf" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write an invalid value "agvxsw" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "058-80s86a7" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    #todo: add another option
    When fill "02-8xx8e87" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    #todo: add another option
    When write an invalid value "dfghj" in "דוא"ל"
    #todo: email error message
    Then check if "דוא"ל" error is "שדה לא תקין"
    When clear fields
