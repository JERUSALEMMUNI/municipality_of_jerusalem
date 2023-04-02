@in_dev
Feature: ExemptionVolunteerInstitution form - scenarios step 5

  - Form name: בקשה לקבלת פטור מארנונה לנכסי מוסד מתנדב לשירות הציבור
  - Feature file name: Exemption_Volunteer_Institution_step_5.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionVolunteerInstitution
  - Number of Pages is : 6, We are at step: 5
  - All fields are mandatory expect of (אישור מוסד ציבורי , אחר)


  Background:
    Given  Navigate to "ExemptionVolunteerInstitution" form and reach step "מסמכים"

  Scenario: EXCEPTVOLUNT_06 טעינת קבצים תקינים ב"מסמכים"
    When Upload a valid "png_to_upload.png" file in "תעודת רישום כתאגיד"
    When Upload a valid "png_to_upload.png" file in "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)"
    When Upload a valid "png_to_upload.png" file in "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*"
    When Upload a valid "png_to_upload.png" file in "דו"ח כספי לשנה החולפת*"
    When Upload a valid "png_to_upload.png" file in "תקציב המוסד לשנה הנוכחית"
    When Upload a valid "png_to_upload.png" file in "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף) "
    When Upload a valid "png_to_upload.png" file in "אישור בדבר ניהול תקין תקף"
    When Upload a valid "png_to_upload.png" file in "אישור מלכ"ר ממשרדי מע"מ"
    When Upload a valid "png_to_upload.png" file in "אישור מוסד ציבורי"
    When Upload a valid "png_to_upload.png" file in "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין"
    When Upload a valid "png_to_upload.png" file in "חוזה שכירות או נסח טאבו"
    When Upload a valid "png_to_upload.png" file in "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים"
    When Upload a valid "png_to_upload.png" file in "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד"
    When Upload a valid "png_to_upload.png" file in "אחר"
    #When click on "שמור" button
    #When click on "שמור טיוטה" button tyota
    #When 1st wait for "email" that contains pin code and link
    #When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #When click on "email" option
    #When 3rd wait for second "email" to get "קוד האימות" index "2"
    #When 4th close all tabs "email" at index "2"
    #Then 5th Validate if went back to expected "email" form
    #When click on "המשך"
