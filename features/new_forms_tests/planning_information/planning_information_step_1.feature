Feature: PlanningInformation form - scenarios step 1

  - Form name: קבלת מידע תכנוני בתשלום לפי סעיף 119א
  - Feature file name: planning_information.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PlanningInformation
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PLANNINGINFO_01 "הזנת ערכים תקינים לשדות "פרטים אישיים
    Given Navigate to "PlanningInformation" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    And click on "המשך" button
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_PLANNINGINFO_05 "הזנת ערכים שגוים לשדות "פרטים אישיים
    Given Navigate to "PlanningInformation" form
    When write an invalid value "sda" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asdsad" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write an invalid value "sdadw" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "058-807d68r" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "058-23" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-80s86t7" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-23" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"
    #todo: sofiya error is : יש להזין אותיות באנגלית בלבד", "יש להשלים כתובת אימייל but in web its "שדה לא תקין"
    Then check if "דוא"ל" error is "שדה לא תקין"
    When clear fields


