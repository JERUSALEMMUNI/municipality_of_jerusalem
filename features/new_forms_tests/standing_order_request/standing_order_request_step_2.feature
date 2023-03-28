Feature: StandingOrderRequest - scenarios step 2

  - Form name: בקשה להצטרפות להסדר הוראת קבע ארנונה/ חינוך
  - Feature file name: standing_order_request
  - Form link: https://jeronlineforms.jerusalem.muni.il/StandingOrderRequest
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "StandingOrderRequest" form and reach step "פרטי תשלום"


  Scenario: TC_STANDINGORDEREQ_04 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When pick "אגרת חינוך - ביטוח תלמידים (24059)" from "קוד מוטב להקמת ההרשאה"
    When search valid value and pick "9 - בנק הדואר" in search field "בנק"
    When search valid value and pick "1-סניף ראשי" in search field "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "1" from "יום גביה חודשי"
    When pick "10" from "יום גביה חודשי"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When clear fields


  Scenario: TC_STANDINGORDEREQ_05 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When search valid value and pick "9 - בנק הדואר" in search field "בנק"
    When search valid value and pick "1-סניף ראשי" in search field "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload a valid "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload a valid "png_to_upload.png" file in "אחר"
    When clear fields


  Scenario: TC_STANDINGORDEREQ_06 - Checking "personal details" fields with incorrect details
    When write an invalid value "21reser1121" in "חשבון / נכס"
    When write an invalid value "ש77626" in "כתובת נכס"
    When write an invalid number "1273gg783" in "בית"
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When search invalid value and pick "9 - בנק הדuewואר" in search field "בנק"
    When search invalid value and pick "1-סניף eweראשי" in search field "סניף"
    When write an invalid number "012345678" in "מספר חשבון"
    Then check if "מספר חשבון" error is "מספר חשבון לא תקין"
    When write an invalid number "jdskגדגדגד" in "מספר חשבון"
    When pick "140" from "יום גביה חודשי"
    When Upload an invalid "xlsx_to_upload.xlsx" file in "צילום תעודת זהות + ספח"
    When Upload an invalid "xlsx_to_upload.xlsx" file in "אישור הרשאה לחיוב חשבון"
    When Upload an invalid "xlsx_to_upload.xlsx" file in "אחר"
    When clear fields





