Feature: FreedomInfo form - scenarios step 3

  - Form name: חופש המידע
  - Feature file name: freedom_info_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/FreedomInfo
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory except for (מסמכים נוספים)

  Background:
    Given  Navigate to "FreedomInfo" form and reach step "פרטי הבקשה"
#  @in_dev
  Scenario: TC_FREEDOMINFO_07 - Checking "request details" fields with correct details
    When write a valid value "חלןלחכיעטאוחכיגמהנעירןםקךגצמבנסהשכדגקראטוןםפ" in "נושא הבקשה"
    When write a valid value "ראטוןלצ בגכעיחלוטכעמחחלןלחכיעטאוחכיגמהנעירןםקךגצמבנסהשכדגקראטוןםפ" in "תיאור הבקשה"
    When check the box of "הנני מתחייב לשאת באגרת איתור וטיפול באגרת הפקה"
    Then validate checkbox of "הנני מתחייב לשאת באגרת איתור וטיפול באגרת הפקה" is checked
#    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
#    Then validate captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע" is checked
    When clear fields

  Scenario: TC_FREEDOMINFO_09 - Checking "The type of information" fields with incorrect details
    When Upload an invalid "excel_to_upload.xlsx" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then check if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload a valid "10MB_file_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then check if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then check if "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload a valid "10MB_file_to_upload.pdf" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then check if "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then check if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload a valid "10MB_file_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then check if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When Upload an invalid "excel_to_upload.xlsx" file in "צילום תעודה מזהה"
    Then check if "צילום תעודה מזהה" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When Upload a valid "10MB_file_to_upload.pdf" file in "צילום תעודה מזהה"
    Then check if "צילום תעודה מזהה" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

