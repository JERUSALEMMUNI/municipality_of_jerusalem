Feature: improvementTax form - scenarios step 1

  - Form name: בירור חבות בהיטל השבחה
  - Feature file name: improvement_tax.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ImprovementTax
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: IMROVEMENTATX_01 הזנת ערכים תקינים בשדות "פרטי בעל הנכס"
    Given Navigate to "ImprovementTax" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And click on "המשך" button
    Then validate if "dialog" appeared
    When close "dialog"
    When clear fields


  Scenario: IMROVEMENTATX_04 הזנת ערכים שגוים בשדות "פרטי בעל הנכס"
    Given Navigate to "ImprovementTax" form
    When write an invalid value "sda" in "שם פרטי"
    Then validate "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asdsad" in "שם משפחה"
    Then validate "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write an invalid value "sdadw" in "מספר ת.ז."
    Then validate "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "058-807d68r" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "058-1234" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-80s86t7" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-1234" as invalid value in "טלפון קווי"
    Then validate "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להזין אותיות באנגלית בלבד"
    When write an invalid value "sdf@" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להשלים כתובת אימייל"
    When clear fields


