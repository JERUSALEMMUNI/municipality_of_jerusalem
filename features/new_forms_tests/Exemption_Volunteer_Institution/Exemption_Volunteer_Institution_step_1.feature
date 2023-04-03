#@in_dev

Feature: ExemptionVolunteerInstitution form - scenarios step 1

  - Form name: בקשה לקבלת פטור מארנונה לנכסי מוסד מתנדב לשירות הציבור
  - Feature file name: Exemption_Volunteer_Institution_step_1.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionVolunteerInstitution
  - Number of Pages is : 6, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

  Scenario: EXCEPTVOLUNT_01 הזנת ערכים תקינים ב"פרטי מגיש הבקשה"
    Given Navigate to "ExemptionVolunteerInstitution" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    And fill number "8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    # When click on "המשך"
    # button # When click on "email" option
    # When 1st wait for "email" that contains pin code and link
#    When set pin code "email"
    When clear fields


  Scenario: EXCEPTVOLUNT_08 הזנת ערכים שגויים ב"פרטי מגיש הבקשה"
    When write an invalid value "asdasd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asdf" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write an invalid value "000000018" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-sdfdsf" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-233" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-232" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill "02-שדגדש" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-sdfdsf" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    When write an invalid value "dfghj" in "דוא"ל"
    Then check if "דוא"ל" error is "שדה לא תקין"
    When clear fields
