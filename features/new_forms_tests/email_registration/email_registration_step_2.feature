@in_dev
Feature: EmailRegistration form - scenarios step 2

  - Form name: קבלת חשבון ארנונה באימייל
  - Feature file name: email_registration.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/EmailRegistration
  - Number of Pages is : 2, We are at step: 2
  - All fields are mandatory expect of (טלפון קווי)

#
#  Scenario: TC_EMAILREG_04 - Entering valid values for the "forms and attachments" fields
#    Given Navigate to "EmailRegistration" form
#    When write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    When pick "דרכון" from "סוג זיהוי"
#    When write a valid value "332796184" in "מספר דרכון"
#    And fill "058-8078687" as valid value in "טלפון נייד"
#    And fill "02-8078687" as valid value in "טלפון קווי"
#    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on email option
#    When 1st wait for email that contains pin code and link
#    When set pin code
#    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
#    When choose "לא" from "האם דירת שותפים"
#    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
#    When Upload "png_to_upload.png" file in "אחר"
#    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
#    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
##    When click on "שמור" button
##    When 1st wait for email that contains pin code and link
##    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
##    When 3rd wait for second email to get "קוד האימות"
##    When 4th close all tabs
##    Then 5th Validate if went back to expected form
#



  Scenario: TC_EMAILREG_05 - Entering valid values for the "forms and attachments" fields
    Given Navigate to "EmailRegistration" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "דרכון" from "סוג זיהוי"
    When write a valid value "332796184" in "מספר דרכון"
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When choose "בן/בת זוג של בעל החשבון" from "מגיש הבקשה"
    When choose "לא" from "האם דירת שותפים"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אחר"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form

#
#  Scenario: TC_EMAILREG_06 - Entering valid values for the "forms and attachments" fields
#    Given Navigate to "EmailRegistration" form
#    When write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    When pick "דרכון" from "סוג זיהוי"
#    When write a valid value "332796184" in "מספר דרכון"
#    And fill "058-8078687" as valid value in "טלפון נייד"
#    And fill "02-8078687" as valid value in "טלפון קווי"
#    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on email option
#    When 1st wait for email that contains pin code and link
#    When set pin code
#    When choose "כן" from "בעל חשבון שונה ממגיש הבקשה"
#    When choose "מיופה כח" from "מגיש הבקשה"
#    When choose "לא" from "האם דירת שותפים"
#    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
#    When Upload "png_to_upload.png" file in "תעודת התאגדות"
#    When Upload "png_to_upload.png" file in "ייפוי כוח לקבלת מידע בשם התאגיד"
#    When Upload "png_to_upload.png" file in "אחר"
#    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
#    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
##    When click on "שמור" button
##    When 1st wait for email that contains pin code and link
##    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
##    When 3rd wait for second email to get "קוד האימות"
##    When 4th close all tabs
##    Then 5th Validate if went back to expected form
#
#
#
#  Scenario: TC_EMAILREG_07 - Entering valid values for the "forms and attachments" fields
#    Given Navigate to "EmailRegistration" form
#    When write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    When pick "דרכון" from "סוג זיהוי"
#    When write a valid value "332796184" in "מספר דרכון"
#    And fill "058-8078687" as valid value in "טלפון נייד"
#    And fill "02-8078687" as valid value in "טלפון קווי"
#    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on email option
#    When 1st wait for email that contains pin code and link
#    When set pin code
#    When choose "כן" from "בעל חשבון שונה ממגיש הבקשה"
#    When choose "בעל תפקיד בתאגיד" from "מגיש הבקשה"
#    When choose "לא" from "האם דירת שותפים"
#    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
#    When Upload "png_to_upload.png" file in "תעודת זהות מיופה כוח"
#    When Upload "png_to_upload.png" file in "ייפוי כוח"
#    When Upload "png_to_upload.png" file in "אחר"
#    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
#    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form
#
#
#  Scenario: TC_EMAILREG_08 - Entering valid values for the "forms and attachments" fields
#    Given Navigate to "EmailRegistration" form
#    When write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    When pick "דרכון" from "סוג זיהוי"
#    When write a valid value "332796184" in "מספר דרכון"
#    And fill "058-8078687" as valid value in "טלפון נייד"
#    And fill "02-8078687" as valid value in "טלפון קווי"
#    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on email option
#    When 1st wait for email that contains pin code and link
#    When set pin code
#    When choose "כן" from "בעל/ת החשבון שונה ממגיש הבקשה"
#    When choose "כן" from "האם דירת שותפים"
#    When write a valid value "3422344233" in "חשבון ארנונה"
#    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
#    When Upload "png_to_upload.png" file in "אחר"
#    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
#    When I wait for "5" seconds
#    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
##    When click on "שמור" button
##    When 1st wait for email that contains pin code and link
##    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
##    When 3rd wait for second email to get "קוד האימות"
##    When 4th close all tabs
##    Then 5th Validate if went back to expected form
#
#
#
#  Scenario: TC_EMAILREG_09 - Entering incorrect values for the "forms and attachments" fields
#    Given Navigate to "EmailRegistration" form
#    When write a valid value "דני" in "שם פרטי"
#    And write a valid value "גלעד" in "שם משפחה"
#    When pick "דרכון" from "סוג זיהוי"
#    When write a valid value "332796184" in "מספר דרכון"
#    And fill "058-8078687" as valid value in "טלפון נייד"
#    And fill "02-8078687" as valid value in "טלפון קווי"
#    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "המשך" button
#    When click on email option
#    When 1st wait for email that contains pin code and link
#    When set pin code
#    When choose "כן" from "בעל חשבון שונה ממגיש הבקשה"
#    When choose "מיופה כח" from "מגיש הבקשה"
#    When choose "כן" from "האם דירת שותפים"
#    When write a valid value "דגדגשדשד" in "מס חשבון ארנונה"
#    When Upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"
#    When Upload "10MB_file_to_upload.pdf" file in "תעודת התאגדות"
#    When Upload "10MB_file_to_upload.pdf" file in "ייפוי כוח לקבלת מידע בשם התאגיד"
#    When Upload "10MB_file_to_upload.pdf" file in "אחר"
#


