Feature: PermitInformation form - scenarios step 1

  - Form name: טופס תשלום עבור תיק מידע להיתר
  - Feature file name: permit_information.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PermitInformation
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  @Checked_By_Firas_and_Darweesh
  Scenario: PERMITINFO_01 הזנת פרטים תקינים בשדות "פרטים אישיים"
    Given Navigate to "PermitInformation" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#   And click on "המשך" button
    When clear fields


  @Checked_By_Firas_and_Darweesh
  Scenario: PERMITINFO_04 הזנת פרטים שגוים בשדות "פרטים אישיים"
    Given Navigate to "PermitInformation" form
    When write an invalid value "sda" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asdsad" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    And write an invalid value "sdadw" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "058-807d68r" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    #Todo: write missing number, and letters
    When fill "02-80s86t7" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"
    #Todo: write missing number, and letters
    Then check if "דוא"ל" error is "שדה לא תקין"
    #Todo: email error message
    When clear fields
