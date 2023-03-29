Feature: FreedomInfo form - scenarios step 1

  - Form name: חופש המידע
  - Feature file name: freedom_info_step_1.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/FreedomInfo
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי,יישוב,רחוב,מספר בית, מיקוד)


  Scenario: TC_FREEDOMINFO_01 - Checking "Presenter details" fields with correct details
    Given Navigate to "FreedomInfo" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "4444" in "מספר בית"
    When write a valid value "11111" in "מיקוד"
    When search valid value and pick "ירוש" in search field "יישוב"
    When search valid value and pick "א טור" in search field "רחוב"
    When clear fields

  Scenario: TC_FREEDOMINFO_08  - Checking "Presenter details" fields with incorrect details
    Given Navigate to "FreedomInfo" form
    When write an invalid value "dddd" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "dddd" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "000000009" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-שדגדש" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
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
    When write an invalid value "TEMP_EMAIL_ADDRESS" in "דוא"ל"
    Then check if "דוא"ל" error is "יש להשלים את כתובת דוא"ל"
    When write an invalid value "דגכגדכגדכ" in "דוא"ל"
    Then check if "דוא"ל" error is "הוזן ערך לא תקין, יש להזין דואר אלקטרוני"
    When write an invalid value "876543456" in "דוא"ל"
    Then check if "דוא"ל" error is "הוזן ערך לא תקין, יש להזין דואר אלקטרוני"
    When write an invalid value "dfdsf" in "מספר בית"
    Then check if "מספר בית" error is "יש להזין ספרות בלבד"
    When write an invalid value "ךלחגדכךל" in "מספר בית"
    Then check if "מספר בית" error is "יש להזין ספרות בלבד"
    When write an invalid value "1234567" in "מספר בית"
    When write an invalid value "dfdsf" in "מיקוד"
    Then check if "מיקוד" error is "יש להזין ספרות בלבד"
    When write an invalid value "ךלחגדכךל" in "מיקוד"
    Then check if "מיקוד" error is "יש להזין ספרות בלבד"
    When write an invalid value "1234567" in "מיקוד"
    When search valid value and pick "לוס אנגלוס" in search field "יישוב"
    When search valid value and pick "לוס אנגלוס" in search field "רחוב"
    When clear fields
