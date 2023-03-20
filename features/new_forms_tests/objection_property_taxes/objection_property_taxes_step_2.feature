@in_dev
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


  @in_dev
  # todo: create widget with no label
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
    #todo: new type of dropdown without label:
    And pick "אני לא בעל השליטה בחברה" from "lab"
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


  @in_dev
  Scenario: TC_OBJECTIONPRO_14 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "דני" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "גלעד" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "ת.ז." from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "3327" in "מספר ת.ז."
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-8078687" as valid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכגדככג" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"


  Scenario: TC_OBJECTIONPRO_15 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "דני" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "גלעד" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "דרכון" from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "3327" in "מספר דרכון"
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-8078687" as valid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "דגכדגכדכגדכגדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"


  @in_dev
  Scenario: TC_OBJECTIONPRO_16 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And  from parent "פרטי הנכס וסיבת ההשגה" write a valid value "דני" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "גלעד" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "ח.פ." from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "3327" in ".מספר ח.פ"
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-8078687" as valid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"


  @in_dev
  Scenario: TC_OBJECTIONPRO_17 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "דני" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "גלעד" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "מוסד" from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "3327" in "מספר מוסד"
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-8078687" as valid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"


  @in_dev
  Scenario: TC_OBJECTIONPRO_18 - Entering correct values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "דני" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "גלעד" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "עמותה" from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "3327" in "מספר עמותה"
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-8078687" as valid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    And goto "א טור" from "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "גדגכדגככגד" in textarea of "נא פרט את הטענה"
    And Upload "png_to_upload.png" file in "ניתן לצרף מכתב נלווה"


  @in_dev
  Scenario: TC_OBJECTIONPRO_19 type 1 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And  from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "dfg" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "fgdf" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "ת.ז." from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "asdasd" in "מספר ת.ז."
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-80d86s7" as invalid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "ttyu" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "dfsdfsd" in "חשבון / נכס"
    And goto "sdfsdfsdf" from "רחוב"
    And write a valid value "sddf" in "בית"
    And write a valid value "324" in "כניסה"
    And write a valid value "sasd" in "קומה"
    And write a valid value "sad" in "דירה"
    And pick "sdas" from "זיקה לנכס"
    And pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    And Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"


  Scenario: TC_OBJECTIONPRO_19 type 2 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And  from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "adasd" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "asdasd" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "דרכון" from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "asdas" in "מספר דרכון"
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-80d8s87" as invalid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write a valid value "asasd" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "dfsdfsd" in "חשבון / נכס"
    And goto "dfsfsdר" from "רחוב"
    And write a valid value "sddf" in "בית"
    And write a valid value "324" in "כניסה"
    And write a valid value "sasd" in "קומה"
    And write a valid value "sad" in "דירה"
    And pick "sdas" from "זיקה לנכס"
    And pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    And Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"

  @in_dev
  Scenario: TC_OBJECTIONPRO_19 type 3 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "asdad" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "adasd" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick ".ח.פ" from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "asdad" in ".מספר ח.פ"
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-80wa6w7" as invalid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "asdada" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "dfsdfsd" in "חשבון / נכס"
    And goto "sdadsas" from "רחוב"
    And write a valid value "sddf" in "בית"
    And write a valid value "324" in "כניסה"
    And write a valid value "sasd" in "קומה"
    And write a valid value "sad" in "דירה"
    And pick "sdas" from "זיקה לנכס"
    And pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    And Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"

  @in_dev
  Scenario: TC_OBJECTIONPRO_19 type 4 - Entering incorrect values for the "property details, reason for obtaining" fields
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "adwda" in "שם פרטי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "dfgdgf" in "שם משפחה"
    And from parent "פרטי הנכס וסיבת ההשגה" pick "עמותה" from "סוג זיהוי"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "zxcddd" in "מספר עמותה"
    And  from parent "פרטי הנכס וסיבת ההשגה" fill "058-807x6s7" as invalid value in "טלפון נייד"
    And from parent "פרטי הנכס וסיבת ההשגה" write an invalid value "aczcxs" in "דוא"ל"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "dfsdfsd" in "חשבון / נכס"
    And goto "א dsasda" from "רחוב"
    And write a valid value "sddf" in "בית"
    And write a valid value "324" in "כניסה"
    And write a valid value "sasd" in "קומה"
    And write a valid value "sad" in "דירה"
    And pick "sdas" from "זיקה לנכס"
    And pick "3s/1d/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    And Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"





