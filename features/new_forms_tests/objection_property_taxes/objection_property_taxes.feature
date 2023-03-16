Feature: ObjectionPropertyTaxes form - scenarios step 1

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)

@suhaib
  Scenario: TC_ObjectionPropertyTaxes_01 - Checking "personal details" fields with correct details
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    And pick "8/1/2019" from calendar of "מועד תחילת הטענה"
    When choose "כן" from "בעל/ת הנכס שונה ממגיש הבקשה"
    When choose "כתובת הנכס בארנונה איננה נכונה" from "סיבת ההשגה"
    And I wait for "9" seconds


  @in_dev
  Scenario: TC_ObjectionPropertyTaxes_02 - Checking "personal details" fields with correct details
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "מיופה כח" from "ממלא ההשגה"
    When click on "המשך" button

@in_dev
  Scenario: TC_ObjectionPropertyTaxes_03 - Checking "personal details" fields with incorrect details
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "dddd" in "שם פרטי"
    When write an invalid value "dddd" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "dqd2323" in "מספר ת.ז."
    When pick "דרכון" from "סוג זיהוי"
    When write an invalid value "ds2323" in "מספר דרכון"
    When fill number "ds232" as invalid value in "טלפון נייד"
    When fill number "ds232" as invalid value in "טלפון קווי"
    When write an invalid value "TEMP_EMAIL_ADDRESS" in "דוא"ל"

  Scenario: TC_OBJECTIONPRO_01 - Entering correct values for personal fields when the thesis identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form



  Scenario: TC_OBJECTIONPRO_02 - Entering correct values for personal fields when the passport identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_03 - Entering correct values for personal fields when the H.P. identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ח.פ."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form




  Scenario: TC_OBJECTIONPRO_04 - Entering correct values for personal fields when the institution identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "3327" in "מספר מוסד"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form






  Scenario: TC_OBJECTIONPRO_05 - Entering correct values for personal fields when the association identification type is selected
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form


  Scenario: TC_OBJECTIONPRO_06 type 1 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write an invalid value "sdadw" in "מספר ת.ז."
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"

  Scenario: TC_OBJECTIONPRO_06 type 2 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "sfdsfsdfs" in "מספר דרכון"
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"


  Scenario: TC_OBJECTIONPRO_06 type 3 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "sdaasdasd" in "מספר ח.פ."
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"


  Scenario: TC_OBJECTIONPRO_06 type 4 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "fdsdfsdf" in "מספר מוסד"
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"


  Scenario: TC_OBJECTIONPRO_06 type 5 - Entering incorrect values for the applicant's personal fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write an invalid value "sda" in "שם פרטי"
    And write an invalid value "asdsad" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "sfdssdf" in "מספר עמותה"
    And fill "058-807d68r" as invalid value in "טלפון נייד"
    And fill "02-80s86t7" as invalid value in "טלפון קווי"
    When write an invalid value "גכעיחלעיח" in "דוא"ל"


  Scenario: TC_OBJECTIONPRO_07 - Entering correct values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "סוג חשבון / נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "הנכס אינו ראוי לשימוש"
    When from "האם הנכס נהרס עד היסוד?" click on "לא"
    When from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?" click on "לא"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "הנכס אינו ראוי לשימוש"
    When from "האם הנכס נהרס עד היסוד?" click on "כן"
    When pick "3/1/2023" from calendar of "תאריך הריסת הנכס"
    When from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?" click on "כן"
    When write a valid value "דכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "שטח החיוב שנקבע לנכס שגוי"
    When write a valid value "כדגכגדכדגדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "השימוש בפועל שונה מהחיוב הקיים"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "הנכס פוצל למספר יחידות או אוחד עם נכסים אחרים"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "החיוב אינו שלי"
    #todo: new type of dropdown without label:
    When pick "אני לא בעל השליטה בחברה"
    When write a valid value "דגכדגכקדכקדג" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "כתובת הנכס בארנונה איננה נכונה"
    When write a valid value "דגכדגכדגכדכגכג" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "3327" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "דגכדגכדגכגדככג" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "3327" in "מספר דרכון"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "דגכדגכדכגדכגדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ח.פ." from "סוג זיהוי"
    When write a valid value "3327" in "מספר ח.פ."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "מוסד" from "סוג זיהוי"
    When write a valid value "3327" in "מספר מוסד"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "דגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "גדגכדגככגד" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_19 type 2 - Entering incorrect values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"



  Scenario: TC_OBJECTIONPRO_19 type 3 - Entering incorrect values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"


    Scenario: TC_OBJECTIONPRO_19 type 4 - Entering incorrect values for the "property details, reason for obtaining" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "כן"
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
    When from "סיבת ההשגה" click on "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי"
    When write a valid value "asdasd" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
    When Upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"




  Scenario: TC_OBJECTIONPRO_20 - Entering valid values for the "forms and attachments" fields
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "עמותה" from "סוג זיהוי"
    When write a valid value "3327" in "מספר עמותה"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "כתובת הנכס בארנונה איננה נכונה"
    When write a valid value "דגכדגכדגכדכגכג" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    #todo: need to create new upload file widget
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    #todo: new check box of CAPTCHA type
    When check CAPTCHA box
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
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When pick "המחזיק" from "ממלא ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When from "בעל/ת הנכס שונה ממגיש הבקשה" click on "לא"
    When pick "מספר חשבון" from "מספר נכס"
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "מס' בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When from "סיבת ההשגה" click on "כתובת הנכס בארנונה איננה נכונה"
    When write a valid value "דגכדגכדגכדכגכג" in textarea of "נא פרט את הטענה"
    #todo: need to create new upload file widget
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
    #todo: need to create new upload file widget
    When Upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"

