
Feature: PhotoPermission form - scenarios step 1

  - Form name: בקשה לקבלת היתר צילומים בירושלים
  - Feature file name: photo_permission_step1.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: TC_PHOTOPERMIT_01 הזנת ערכים תקינים לשדות "פרטי מגיש הבקשה"
    Given Navigate to "PhotoPermission" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
  # When click on "המשך" button
  # When click on "email" option
  # When 1st wait for "email" that contains pin code and link
  # When set pin code "email"
  # When close "email" dialog
    When clear fields


  Scenario: TC_PHOTOPERMIT_06 הזנת ערכים שגויים לשדות "פרטי מגיש הבקשה"
    Given Navigate to "PhotoPermission" form
    When write an invalid value "dddd" in "שם פרטי"
    Then validate "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "dddd" in "שם משפחה"
    Then validate "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick a valid "ת.ז." from "סוג זיהוי"
    When write an invalid value "000000009" in "מספר ת.ז."
    Then validate "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-שדגדש" as invalid value in "טלפון נייד"
    Then validate "טלפון נייד" error is "יש להזין ספרות בלבד"
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
    When write an invalid value "TEMP_EMAIL_ADDRESS" in "דוא"ל"
    Then validate "דוא"ל" error is "יש להשלים את כתובת דוא"ל"
    When write an invalid value "דגכגדכגדכ" in "דוא"ל"
    Then validate "דוא"ל" error is "הוזן ערך לא תקין, יש להזין דואר אלקטרוני"
    When write an invalid value "876543456" in "דוא"ל"
    Then validate "דוא"ל" error is "הוזן ערך לא תקין, יש להזין דואר אלקטרוני"
    When clear fields
