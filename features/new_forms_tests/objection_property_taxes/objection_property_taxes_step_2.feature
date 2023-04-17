Feature: ObjectionPropertyTaxes form - scenarios step 2

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory expect of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "ObjectionPropertyTaxes" form and reach step "פרטי הנכס וסיבת ההשגה"


  Scenario Outline: TC_OBJECTIONPRO_02 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס זהה למגיש הבקשה והכנס לא רואי לשימוש
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "הנכס אינו ראוי לשימוש" from "סיבת ההשגה"
    And choose "כן" from "האם הנכס נהרס עד היסוד?"
    And pick "3/1/2023" from calendar of "תאריך הריסת הנכס"
    And choose "לא" from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"

    When upload "<file_name>" file in "<widget_name>"
    Then validate "<widget_name>" field is valid
    Then validate "<file_name>" file is in "<widget_name>" files list
    When delete file by name "<file_name>" in "<widget_name>"

#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields
    Examples:
      | file_name               |  widget_name          |
      | gif_to_upload.gif       |  ניתן לצרף מכתב נלווה  |
      | png_to_upload.png       |  ניתן לצרף מכתב נלווה  |
      | jpg_pic_to_upload.jpg   |  ניתן לצרף מכתב נלווה  |
      | pdf_file_to_upload.pdf  |  ניתן לצרף מכתב נלווה  |
      | jpeg_to_upload.jpeg     |  ניתן לצרף מכתב נלווה  |
      | bmp_to_upload.bmp       |  ניתן לצרף מכתב נלווה  |

      | gif_to_upload.gif       |  ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)  |
      | png_to_upload.png       |  ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)  |
      | jpg_pic_to_upload.jpg   |  ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)  |
      | pdf_file_to_upload.pdf  |  ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)  |
      | jpeg_to_upload.jpeg     |  ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)  |
      | bmp_to_upload.bmp       |  ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)  |


  Scenario: TC_OBJECTIONPRO_03 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס זהה למגיש הבקשה ושטח החיוב שנקבע לנכס שגוי
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "שטח החיוב שנקבע לנכס שגוי" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When upload "jpeg_to_upload.jpeg" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "ניתן לצרף מכתב נלווה" files list
    When upload "jpeg_to_upload.jpeg" file in "מומלץ לצרף תשריט / סקיצה מטעמך"
    Then validate "מומלץ לצרף תשריט / סקיצה מטעמך" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מומלץ לצרף תשריט / סקיצה מטעמך" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields


  Scenario: TC_OBJECTIONPRO_04 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס זהה למגיש הבקשה והשימוש בפועל שונה מהחיוב הקיים
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "השימוש בפועל שונה מהחיוב הקיים" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When upload "jpeg_to_upload.jpeg" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "ניתן לצרף מכתב נלווה" files list
    When upload "pdf_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "ניתן לצרף מכתב נלווה" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields


  Scenario: TC_OBJECTIONPRO_05 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס זהה למגיש הבקשה והנכס פוצל למס יחידות
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "הנכס פוצל למספר יחידות או אוחד עם נכסים אחרים" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When upload "pdf_file_to_upload.pdf" file in "מומלץ לצרף תשריט / סקיצה מטעמך"
    Then validate "מומלץ לצרף תשריט / סקיצה מטעמך" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "מומלץ לצרף תשריט / סקיצה מטעמך" files list
    When upload "pdf_file_to_upload.pdf" file in "מומלץ לצרף חוזי שכירות של היחידות שפוצלו"
    Then validate "מומלץ לצרף חוזי שכירות של היחידות שפוצלו" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "מומלץ לצרף חוזי שכירות של היחידות שפוצלו" files list
    When upload "pdf_file_to_upload.pdf" file in "אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס"
    Then validate "אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אישור מבעלי הנכס על איחוד או פיצול, אם אינך בעלי הנכס" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields


  Scenario: TC_OBJECTIONPRO_06 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס זהה למגיש הבקשה והחיוב אינו שלי
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "החיוב אינו שלי" from "סיבת ההשגה"
    And pick "איני "מחזיק" ומעולם לא החזקתי בנכס" from no label dropdown of "דרוב אחרי החיוב אינו שלי"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When upload "jpeg_to_upload.jpeg" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "ניתן לצרף מכתב נלווה" files list
    When upload "pdf_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "ניתן לצרף מכתב נלווה" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields


  Scenario: TC_OBJECTIONPRO_07 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס זהה למגיש הבקשה ואזור בחיוב ארנונה שגוי
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "איזור החיוב או סוג הבניין בחיוב הארנונה שגוי" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"
    When upload "pdf_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "ניתן לצרף מכתב נלווה" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields


  Scenario: TC_OBJECTIONPRO_08 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס זהה למגיש הבקשה והכתובת הנכס לא נכונה
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write a valid value "2432434323" in "חשבון / נכס"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And write a valid value "א" in "כניסה"
    And write a valid value "3" in "קומה"
    And write a valid value "3" in "דירה"
    And pick "בעלות" from "זיקה לנכס"
    And pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    And choose "כתובת הנכס בארנונה איננה נכונה" from "סיבת ההשגה"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "נא פרט את הטענה"

    When upload "pdf_file_to_upload.pdf" file in "תמונות"
    Then validate "תמונות" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "תמונות" files list

    When upload "pdf_file_to_upload.pdf" file in "ספח תעודת זהות"
    Then validate "ספח תעודת זהות" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "ספח תעודת זהות" files list

    When upload "pdf_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "אחר" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields


  Scenario: TC_OBJECTIONPRO_09 הזנת ערכים תקינים לשדות "פרטי הנכס וסיבת ההשגה" בעל הנכס שונה ממגיש הבקשה והכנס לא רואי לשימוש
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
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
    When search valid value and pick "א טברי" in search field "רחוב"
    When write a valid number "2" in "בית"
    When write a valid value "א" in "כניסה"
    When write a valid value "3" in "קומה"
    When write a valid value "3" in "דירה"
    When pick "בעלות" from "זיקה לנכס"
    When pick "3/1/2023" from calendar of "מועד תחילת הטענה"
    When choose "הנכס אינו ראוי לשימוש" from "סיבת ההשגה"
    And choose "לא" from "האם הנכס נהרס עד היסוד?"
    And choose "כן" from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?"
    When write a valid value "דגכדגכדגכגדככג" in textarea of "נא פרט את הטענה"

    When upload "pdf_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "ניתן לצרף מכתב נלווה" files list

    When upload "pdf_file_to_upload.pdf" file in "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)"
    Then validate "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)" files list

    When upload "pdf_file_to_upload.pdf" file in "דו"ח מהנדס"
    Then validate "דו"ח מהנדס" field is valid
    Then validate "pdf_file_to_upload.pdf" file is in "דו"ח מהנדס" files list
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields


  Scenario: TC_OBJECTIONPRO_12 הזנת ערכים שגויים לשדות "פרטי הנכס וסיבת ההשגה"
    When choose "לא" from "בעל/ת הנכס שונה ממגיש הבקשה"
    And pick "מספר חשבון" from "סוג חשבון / נכס"
    And write an invalid value "דדגשדגשדג" in "חשבון / נכס"
    Then validate "חשבון / נכס" error is "יש להזין ספרות בלבד"
    When search invalid value and pick "sfdf" in search field "רחוב"
    And write a valid number "sd11a" in "בית"
    Then validate if "בית" value is "11"
    When write an invalid value "324" in "כניסה"
    Then validate "כניסה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "ads" in "קומה"
    Then validate "קומה" error is "יש להזין ספרות בלבד"
    When write an invalid value "asd" in "דירה"
    Then validate "דירה" error is "יש להזין ספרות בלבד"
    When pick "בעלות" from "זיקה לנכס"
    And pick "ds/ds/sdfs" from calendar of "מועד תחילת הטענה"
    And choose "הנכס אינו ראוי לשימוש" from "סיבת ההשגה"
    And choose "כן" from "האם הנכס נהרס עד היסוד?"
    And pick "ds/ds/sdfs" from calendar of "תאריך הריסת הנכס"
    And choose "כן" from "האם הנכס הוגדר על ידי מהנדס כמבנה מסוכן?"
    And write an invalid value "sdfasdasd" in textarea of "נא פרט את הטענה"
    Then validate "נא פרט את הטענה" error is "שפת קלט לא תקינה"

    When upload "10MB_file_to_upload.pdf" file in "ניתן לצרף מכתב נלווה"
    Then validate "ניתן לצרף מכתב נלווה" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "ניתן לצרף מכתב נלווה" files list
    Then validate "ניתן לצרף מכתב נלווה" error is "חובה לצרף קובץ"
    Then validate "ניתן לצרף מכתב נלווה" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "10MB_file_to_upload.pdf" file in "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)"
    Then validate "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)" files list
    Then validate "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)" error is "חובה לצרף קובץ"
    Then validate "ניתן לצרף אסמכתאות התומכות בטענה (תמונות, אישורים שונים וכיו"ב)" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "10MB_file_to_upload.pdf" file in "דו"ח מהנדס"
    Then validate "דו"ח מהנדס" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "דו"ח מהנדס" files list
    Then validate "דו"ח מהנדס" error is "חובה לצרף קובץ"
    Then validate "דו"ח מהנדס" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    When clear fields




