Feature: ObjectionPropertyTaxes form - scenarios step 2

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory expect of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "ObjectionPropertyTaxes" form and reach step "פרטי הנכס וסיבת ההשגה"


  Scenario: TC_OBJECTIONPRO_07 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "הנכס אינו ראוי לשימוש" from "סיבת ההשגה"
    And choose "לא" from "האם הנכס נהרס עד היסוד?"
    And choose "לא" from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    And Upload "png_to_upload.png" file in "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)"


  Scenario: TC_OBJECTIONPRO_08 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "הנכס אינו ראוי לשימוש" from "סיבת ההשגה"
    And choose "כן" from "האם הנכס נהרס עד היסוד?"
    And pick "3/1/2023" from calendar of "תאריך הריסת הנכס"
    And choose "כן" from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?"
    And write a valid value "דכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "דו"ח מהנדס"


  Scenario: TC_OBJECTIONPRO_09 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "שטח החיוב שנקבע לנכס שגוי" from "סיבת ההשגה"
    And write a valid value "כדגכגדכדגדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    And Upload "png_to_upload.png" file in "מומלץ לצרף תשריט / סקיצה מטעמך"


  Scenario: TC_OBJECTIONPRO_10 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "השימוש בפועל שונה מהחיוב הקיים" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"


  Scenario: TC_OBJECTIONPRO_11 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "הנכס פוצל למספר יחידות או אוחד עם נכסים אחרים" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "מומלץ לצרף תשריט / סקיצה מטעמך"
    And Upload "png_to_upload.png" file in "מומלץ לצרף חוזי שכירות של היחידות שפוצלו"
    And Upload "png_to_upload.png" file in "אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס"


  Scenario: TC_OBJECTIONPRO_12 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "החיוב אינו שלי" from "סיבת ההשגה"
    And pick "אני לא בעל השליטה בחברה" from no label dropdown of "דרוב אחרי החיוב אינו שלי"
    And write a valid value "דגכדגכקדכקדג" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"


  Scenario: TC_OBJECTIONPRO_13 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "כתובת הנכס בארנונה איננה נכונה" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדכגכג" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "תמונות"
    And Upload "png_to_upload.png" file in "ספח תעודת זהות"
    And Upload "png_to_upload.png" file in "אחר"




  Scenario: TC_OBJECTIONPRO_14 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "3327" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write a valid value "2432434323" in "חשבון / נכס"
    When goto "א טור" from "רחוב"
    When write a valid value "2" in "בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכגדככג" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"




  Scenario: TC_OBJECTIONPRO_15 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "3327" in "מספר דרכון"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write a valid value "2432434323" in "חשבון / נכס"
    When goto "א טור" from "רחוב"
    When write a valid value "2" in "בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדכגדכגדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"





  Scenario: TC_OBJECTIONPRO_16 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "512662669" in "מספר ח.פ."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write a valid value "2432434323" in "חשבון / נכס"
    When goto "א טור" from "רחוב"
    When write a valid value "2" in "בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_17 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "3327" in "מספר מוסד"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write a valid value "2432434323" in "חשבון / נכס"
    When goto "א טור" from "רחוב"
    When write a valid value "2" in "בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_18 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write a valid value "2432434323" in "חשבון / נכס"
    When goto "א טור" from "רחוב"
    When write a valid value "2" in "בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "גדגכדגככגד" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"





  Scenario: TC_OBJECTIONPRO_19 type 1 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "כדגכג" in "מספר ת.ז."
    And fill "058-807d687" as invalid value in "טלפון נייד"
    And fill "02-807sd87" as invalid value in "טלפון קווי"
    When write an invalid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write an invalid value "dfsdfsd" in "חשבון / נכס"
    When goto "sdfsdfsdf" from "רחוב"
    When write an invalid value "sddf" in "בית"
    When write an invalid value "324" in "כניסה"
    When write an invalid value "sasd" in "קומה"
    When write an invalid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write an invalid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_19 type 2 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write an invalid value "כדגכג" in "מספר ח.פ."
    And fill "058-807d687" as invalid value in "טלפון נייד"
    And fill "02-807sd87" as invalid value in "טלפון קווי"
    When write an invalid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write an invalid value "dfsdfsd" in "חשבון / נכס"
    When goto "dfsfsdר" from "רחוב"
    When write an invalid value "sddf" in "בית"
    When write an invalid value "324" in "כניסה"
    When write an invalid value "sasd" in "קומה"
    When write an invalid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write an invalid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_19 type 3 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write an invalid value "כדגכג" in "מספר מוסד"
    And fill "058-807d687" as invalid value in "טלפון נייד"
    And fill "02-807sd87" as invalid value in "טלפון קווי"
    When write an invalid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write an invalid value "dfsdfsd" in "חשבון / נכס"
    When goto "sdadsas" from "רחוב"
    When write an invalid value "sddf" in "בית"
    When write an invalid value "324" in "כניסה"
    When write an invalid value "sasd" in "קומה"
    When write an invalid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write an invalid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"


  Scenario: TC_OBJECTIONPRO_19 type 4 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write an invalid value "כדגכג" in "מספר עמותה"
    And fill "058-807d687" as invalid value in "טלפון נייד"
    And fill "02-807sd87" as invalid value in "טלפון קווי"
    When write an invalid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write an invalid value "dfsdfsd" in "חשבון / נכס"
    When goto "א dsasda" from "רחוב"
    When write an invalid value "sddf" in "בית"
    When write an invalid value "324" in "כניסה"
    When write an invalid value "sasd" in "קומה"
    When write an invalid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write an invalid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"





