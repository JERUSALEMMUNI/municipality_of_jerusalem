@in_dev
Feature: ObjectionPropertyTaxes form - scenarios step 1

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: TC_OBJECTIONPRO_07 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "הנכס אינו ראוי לשימוש" from "סיבת ההשגה"
    When choose "לא" from "האם הנכס נהרס עד היסוד?"
    When choose "לא" from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When Upload "png_to_upload.png" file in "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_08 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "הנכס אינו ראוי לשימוש" from "סיבת ההשגה"
    When choose "כן" from "האם הנכס נהרס עד היסוד?"
    When pick "3/1/2023" from calendar of "תאריך הריסת הנכס"
    When choose "כן" from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?"
    When write a valid value "דכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "דו"ח מהנדס"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



  Scenario: TC_OBJECTIONPRO_09 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "שטח החיוב שנקבע לנכס שגוי" from "סיבת ההשגה"
    When write a valid value "כדגכגדכדגדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When Upload "png_to_upload.png" file in "מומלץ לצרף תשריט / סקיצה מטעמך"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_10 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "השימוש בפועל שונה מהחיוב הקיים" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_11 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "הנכס פוצל למספר יחידות או אוחד עם נכסים אחרים" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "מומלץ לצרף תשריט / סקיצה מטעמך"
    When Upload "png_to_upload.png" file in "מומלץ לצרף חוזי שכירות של היחידות שפוצלו"
    When Upload "png_to_upload.png" file in "אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



  Scenario: TC_OBJECTIONPRO_12 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "החיוב אינו שלי" from "סיבת ההשגה"
    #todo: new type of dropdown without label:
    When pick "אני לא בעל השליטה בחברה"
    When write a valid value "דגכדגכקדכקדג" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_13 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "כתובת הנכס בארנונה איננה נכונה" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדכגכג" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "תמונות"
    When Upload "png_to_upload.png" file in "ספח תעודת זהות"
    When Upload "png_to_upload.png" file in "אחר"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_14 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "3327" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכגדככג" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



  Scenario: TC_OBJECTIONPRO_15 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "3327" in "מספר דרכון"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדכגדכגדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



  Scenario: TC_OBJECTIONPRO_16 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "3327" in "מספר ח.פ."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_17 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "3327" in "מספר מוסד"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_18 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "גדגכדגככגד" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



  Scenario: TC_OBJECTIONPRO_19 type 1 - Entering incorrect values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "כדגכג" in "מספר ת.ז."
    And fill "058-807d687" as valid value in "טלפון נייד"
    And fill "02-807sd87" as valid value in "טלפון קווי"
    When write a valid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "dfsdfsd" in "מס' חשבון / נכס"
    When search and pick "sdfdssd" in search field "רחוב"
    When write a valid value "sddf" in "מס' בית"
    When write a valid value "324" in "כניסה"
    When write a valid value "sasd" in "קומה"
    When write a valid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_19 type 2 - Entering incorrect values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "כדגכג" in "מספר ח.פ."
    And fill "058-807d687" as valid value in "טלפון נייד"
    And fill "02-807sd87" as valid value in "טלפון קווי"
    When write a valid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "dfsdfsd" in "מס' חשבון / נכס"
    When search and pick "sdfdssd" in search field "רחוב"
    When write a valid value "sddf" in "מס' בית"
    When write a valid value "324" in "כניסה"
    When write a valid value "sasd" in "קומה"
    When write a valid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_19 type 3 - Entering incorrect values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "כדגכג" in "מספר מוסד"
    And fill "058-807d687" as valid value in "טלפון נייד"
    And fill "02-807sd87" as valid value in "טלפון קווי"
    When write a valid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "dfsdfsd" in "מס' חשבון / נכס"
    When search and pick "sdfdssd" in search field "רחוב"
    When write a valid value "sddf" in "מס' בית"
    When write a valid value "324" in "כניסה"
    When write a valid value "sasd" in "קומה"
    When write a valid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"


    Scenario: TC_OBJECTIONPRO_19 type 4 - Entering incorrect values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When write an invalid value "dfsdf" in "שם פרטי"
    And write an invalid value "sdfsdffd" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "כדגכג" in "מספר עמותה"
    And fill "058-807d687" as valid value in "טלפון נייד"
    And fill "02-807sd87" as valid value in "טלפון קווי"
    When write a valid value "dfghjk" in "דוא"ל"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "dfsdfsd" in "מס' חשבון / נכס"
    When search and pick "sdfdssd" in search field "רחוב"
    When write a valid value "sddf" in "מס' בית"
    When write a valid value "324" in "כניסה"
    When write a valid value "sasd" in "קומה"
    When write a valid value "sad" in "דירה"
    When pick "sdas" from "זיקה לנכס"
    When pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    When choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"




  Scenario: TC_OBJECTIONPRO_20 - Entering valid values for the "forms and attachments" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "כתובת הנכס בארנונה איננה נכונה" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדכגכג" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "תמונות"
    When Upload "png_to_upload.png" file in "ספח תעודת זהות"
    When Upload "png_to_upload.png" file in "אחר"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When write a valid value "ירושלים" in "עיר"
    When write a valid value "א טור" in "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "3222" in "מיקוד"
    When write a valid value "23344" in "ת.ד."
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
     #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



Scenario: TC_OBJECTIONPRO_21 - Entering invalid values for the "forms and attachments" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "כתובת הנכס בארנונה איננה נכונה" from "סיבת ההשגה"
    When write a valid value "דגכדגכדגכדכגכג" in textarea of "נא פרט את הטענה"
    When Upload "png_to_upload.png" file in "תמונות"
    When Upload "png_to_upload.png" file in "ספח תעודת זהות"
    When Upload "png_to_upload.png" file in "אחר"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When write an invalid value "sdfs" in "עיר"
    When write an invalid value "dsf" in "רחוב"
    When write an invalid value "ירוsdfdsשלים" in "מס' בית"
    When write an invalid value "ירוsdfשלים" in "מיקוד"
    When write an invalid value "sdf" in "ת.ד."
    When Upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"

