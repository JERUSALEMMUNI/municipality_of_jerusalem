#@in_dev
Feature: ExemptionVolunteerInstitution form - scenarios step 5

  - Form name: בקשה לקבלת פטור מארנונה לנכסי מוסד מתנדב לשירות הציבור
  - Feature file name: Exemption_Volunteer_Institution_step_5.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionVolunteerInstitution
  - Number of Pages is : 6, We are at step: 5
  - All fields are mandatory expect of (אישור מוסד ציבורי , אחר)


  Background:
    Given  Navigate to "ExemptionVolunteerInstitution" form and reach step "מסמכים"
@wisam
  Scenario: EXCEPTVOLUNT_06 טעינת קבצים תקינים ב"מסמכים"
    When upload "gif_to_upload.gif" file in "תעודת רישום כתאגיד"
    Then validate "תעודת רישום כתאגיד" field is valid
    Then validate "gif_to_upload.gif" file is in "תעודת רישום כתאגיד" files list

    When upload "gif_to_upload.gif" file in "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)"
    Then validate "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" files list

    When upload "gif_to_upload.gif" file in "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*"
    Then validate "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" field is valid
    Then validate "gif_to_upload.gif" file is in "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" files list

    When upload "gif_to_upload.gif" file in "דו"ח כספי לשנה החולפת*"
    Then validate "דו"ח כספי לשנה החולפת*" field is valid
    Then validate "gif_to_upload.gif" file is in "דו"ח כספי לשנה החולפת*" files list

    When upload "gif_to_upload.gif" file in "תקציב המוסד לשנה הנוכחית"
    Then validate "תקציב המוסד לשנה הנוכחית" field is valid
    Then validate "gif_to_upload.gif" file is in "תקציב המוסד לשנה הנוכחית" files list

    When upload "gif_to_upload.gif" file in "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)"
    Then validate "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)" field is valid
    Then validate "gif_to_upload.gif" file is in "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)" files list

    When upload "gif_to_upload.gif" file in "אישור בדבר ניהול תקין תקף"
    Then validate "אישור בדבר ניהול תקין תקף" field is valid
    Then validate "gif_to_upload.gif" file is in "אישור בדבר ניהול תקין תקף" files list

    When upload "gif_to_upload.gif" file in "אישור מלכ"ר ממשרדי מע"מ"
    Then validate "אישור מלכ"ר ממשרדי מע"מ" field is valid
    Then validate "gif_to_upload.gif" file is in "אישור מלכ"ר ממשרדי מע"מ" files list

    When upload "gif_to_upload.gif" file in "אישור מוסד ציבורי"
    Then validate "אישור מוסד ציבורי" field is valid
    Then validate "gif_to_upload.gif" file is in "אישור מוסד ציבורי" files list

    When upload "gif_to_upload.gif" file in "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין"
    Then validate "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" field is valid
    Then validate "gif_to_upload.gif" file is in "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" files list

    When upload "gif_to_upload.gif" file in "חוזה שכירות או נסח טאבו"
    Then validate "חוזה שכירות או נסח טאבו" field is valid
    Then validate "gif_to_upload.gif" file is in "חוזה שכירות או נסח טאבו" files list

    When upload "gif_to_upload.gif" file in "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים"
    Then validate "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" field is valid
    Then validate "gif_to_upload.gif" file is in "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" files list

    When upload "gif_to_upload.gif" file in "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד"
    Then validate "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" field is valid
    Then validate "gif_to_upload.gif" file is in "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" files list

    When upload "gif_to_upload.gif" file in "אחר"
    Then validate "אחר" field is valid
    Then validate "gif_to_upload.gif" file is in "אחר" files list

    #When click on "שמור" button
    #When click on "שמור טיוטה" button tyota
    #When 1st wait for "email" that contains pin code and link
    #When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #When click on "email" option
    #When 3rd wait for second "email" to get "קוד האימות" index "2"
    #When 4th close all tabs "email" at index "2"
    #Then 5th Validate if went back to expected "email" form
    When click on "המשך"
    Then validate current step name is "תצהיר ושליחה"
    When click on "חזור"
    Then Validate current step name is "מסמכים"


  Scenario: EXCEPTVOLUNT_12 טעינת קבצים שגויים ב"מסמכים"
    When upload "10MB_file_to_upload.pdf" file in "תעודת רישום כתאגיד"
    Then validate "תעודת רישום כתאגיד" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "תעודת רישום כתאגיד" files list
    Then validate "תעודת רישום כתאגיד" error is "חובה לצרף קובץ"
    Then validate "תעודת רישום כתאגיד" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When upload "10MB_file_to_upload.pdf" file in "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)"
    Then validate "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" files list
    Then validate "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" error is "חובה לצרף קובץ"
    Then validate "מסמכי יסוד של המוסד (תקנון, פרוטוקול ישיבת ועד אחרונה)" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When upload "10MB_file_to_upload.pdf" file in "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*"
    Then validate "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" files list
    Then validate "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" error is "חובה לצרף קובץ"
    Then validate "דו"ח כספי מבוקר ע"י רואה חשבון לשנה שלפני האחרונה*" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "10MB_file_to_upload.pdf" file in "דו"ח כספי לשנה החולפת*"
    Then validate "דו"ח כספי לשנה החולפת*" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "דו"ח כספי לשנה החולפת*" files list
    Then validate "דו"ח כספי לשנה החולפת*" error is "חובה לצרף קובץ"
    Then validate "דו"ח כספי לשנה החולפת*" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When upload "10MB_file_to_upload.pdf" file in "תקציב המוסד לשנה הנוכחית"
    Then validate "תקציב המוסד לשנה הנוכחית" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "תקציב המוסד לשנה הנוכחית" files list
    Then validate "תקציב המוסד לשנה הנוכחית" error is "חובה לצרף קובץ"
    Then validate "תקציב המוסד לשנה הנוכחית" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When upload "10MB_file_to_upload.pdf" file in "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)"
    Then validate "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)" files list
    Then validate "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)" error is "חובה לצרף קובץ"
    Then validate "אישור בתוקף על ניהול פנקסי חשבונות ורשומות ממס הכנסה (אישור ניכוי מס ואישור על ניהול ספרים בתוקף)" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When upload "10MB_file_to_upload.pdf" file in "אישור בדבר ניהול תקין תקף"
    Then validate "אישור בדבר ניהול תקין תקף" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "אישור בדבר ניהול תקין תקף" files list
    Then validate "אישור בדבר ניהול תקין תקף" error is "חובה לצרף קובץ"
    Then validate "אישור בדבר ניהול תקין תקף" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "10MB_file_to_upload.pdf" file in "אישור מלכ"ר ממשרדי מע"מ"
    Then validate "אישור מלכ"ר ממשרדי מע"מ" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "אישור מלכ"ר ממשרדי מע"מ" files list
    Then validate "אישור מלכ"ר ממשרדי מע"מ" error is "חובה לצרף קובץ"
    Then validate "אישור מלכ"ר ממשרדי מע"מ" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "10MB_file_to_upload.pdf" file in "אישור מוסד ציבורי"
    Then validate "אישור מוסד ציבורי" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "אישור מוסד ציבורי" files list
    Then validate "אישור מוסד ציבורי" error is "חובה לצרף קובץ"
    Then validate "אישור מוסד ציבורי" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"



    When upload "10MB_file_to_upload.pdf" file in "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין"
    Then validate "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" files list
    Then validate "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" error is "חובה לצרף קובץ"
    Then validate "דו"ח המפרט את עלויות השכר של חמשת מקבלי השכר הגבוה ביותר, כולל ציון תפקידם במוסד, חתום ע"י עורך דין" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"



    When upload "10MB_file_to_upload.pdf" file in "חוזה שכירות או נסח טאבו"
    Then validate "חוזה שכירות או נסח טאבו" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "חוזה שכירות או נסח טאבו" files list
    Then validate "חוזה שכירות או נסח טאבו" error is "חובה לצרף קובץ"
    Then validate "חוזה שכירות או נסח טאבו" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"



    When upload "10MB_file_to_upload.pdf" file in "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים"
    Then validate "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" files list
    Then validate "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" error is "חובה לצרף קובץ"
    Then validate "תצהיר מבעל תפקיד בכיר בעמותה, חתום על ידי עו"ד, כי דירות המגורים עומדות בתנאים שנקבעו בחוזר המנכ"ל משרד הפנים 01/2012 לגבי מתן פטור ביחס לדירות מגורים" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"




    When upload "10MB_file_to_upload.pdf" file in "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד"
    Then validate "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" files list
    Then validate "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" error is "חובה לצרף קובץ"
    Then validate "הצהרה חתומה של ממלא הבקשה חתומה ומאושרת ע"י עו"ד" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"


    When upload "10MB_file_to_upload.pdf" file in "אחר"
    Then validate "אחר" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is in "אחר" files list
    Then validate "אחר" error is "חובה לצרף קובץ"
    Then validate "אחר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"