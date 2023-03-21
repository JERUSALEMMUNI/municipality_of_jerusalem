@suhaib
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
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload "png_to_upload.png" file in "אחר"



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
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload "png_to_upload.png" file in "אחר"


  Scenario: TC_STANDINGORDEREQ_06 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload "png_to_upload.png" file in "אחר"


  Scenario: TC_STANDINGORDEREQ_07 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "512662669" in "מספר ח.פ."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload "png_to_upload.png" file in "אחר"


  Scenario: TC_STANDINGORDEREQ_08 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "3327" in "מספר מוסד"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload "png_to_upload.png" file in "אחר"

  Scenario: TC_STANDINGORDEREQ_09 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write a valid number "25783770" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload "png_to_upload.png" file in "אחר"



  Scenario: TC_STANDINGORDEREQ_10 - Checking "personal details" fields with correct details
    When write an invalid value "21reser1121" in "חשבון / נכס"
    When write an invalid value "ש77626" in "כתובת נכס"
    When write an invalid number "1273gg783" in "בית"
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When write an invalid value "dddd" in "שם פרטי"
    When write an invalid value "dddd" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "dqd2323" in "מספר ת.ז."
    When pick "דרכון" from "סוג זיהוי"
    When write an invalid value "ds2323" in "מספר דרכון"
    When pick "עמותה" from "סוג זיהוי"
    When write an invalid value "3dsf327" in "מספר עמותה"
    When pick "מוסד" from "סוג זיהוי"
    When write an invalid value "33fd27" in "מספר מוסד"

    When pick "ח.פ." from "סוג זיהוי"
    When write an invalid value "332sa7" in "מספר ח.פ."
    When fill "0jj-ds232" as invalid value in "טלפון נייד"
    When fill "02-ds232" as invalid value in "טלפון קווי"
    When write an invalid value "TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write an invalid number "2ssddsa70" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "xlsx_to_upload.xlsx" file in "צילום תעודת זהות + ספח"
    When Upload "xlsx_to_upload.xlsx" file in "אישור הרשאה לחיוב חשבון"
    When Upload "xlsx_to_upload.xlsx" file in "אחר"





