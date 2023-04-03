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


  Scenario: EXCEPTVOLUNT_12 טעינת קבצים שגויים ב"מסמכים"
    When Upload an invalid "excel_to_upload.xlsx" file in "תעודת רישום כתאגיד"
    Then check if "תעודת רישום כתאגיד" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "תעודת רישום כתאגיד"
    Then check if "תעודת רישום כתאגיד" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)"
    Then check if "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)"
    Then check if "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*"
    Then check if "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*"
    Then check if "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "דו"ח כספי לשנה החולפת*"
    Then check if "דו"ח כספי לשנה החולפת*" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "דו"ח כספי לשנה החולפת*"
    Then check if "דו"ח כספי לשנה החולפת*" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When Upload an invalid "excel_to_upload.xlsx" file in "תקציב המוסד לשנה הנוכחית"
    Then check if "תקציב המוסד לשנה הנוכחית" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "תקציב המוסד לשנה הנוכחית"
    Then check if "תקציב המוסד לשנה הנוכחית" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף) "
    Then check if "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף) " error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף) "
    Then check if "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף) " error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "אישור בדבר ניהול תקין תקף"
    Then check if "אישור בדבר ניהול תקין תקף" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "אישור בדבר ניהול תקין תקף"
    Then check if "אישור בדבר ניהול תקין תקף" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "אישור מלכ"ר ממשרדי מע"מ"
    Then check if "אישור מלכ"ר ממשרדי מע"מ" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "אישור מלכ"ר ממשרדי מע"מ"
    Then check if "אישור מלכ"ר ממשרדי מע"מ" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "אישור מוסד ציבורי"
    Then check if "אישור מוסד ציבורי" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "אישור מוסד ציבורי"
    Then check if "אישור מוסד ציבורי" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין"
    Then check if "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין"
    Then check if "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "חוזה שכירות או נסח טאבו"
    Then check if "חוזה שכירות או נסח טאבו" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "חוזה שכירות או נסח טאבו"
    Then check if "חוזה שכירות או נסח טאבו" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים"
    Then check if "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים"
    Then check if "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד"
    Then check if "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד"
    Then check if "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "אחר"
    Then check if "אחר" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload an invalid "10MB_file_to_upload.pdf" file in "אחר"
    Then check if "אחר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
