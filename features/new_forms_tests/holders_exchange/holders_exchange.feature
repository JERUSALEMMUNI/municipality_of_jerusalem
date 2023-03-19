
Feature: HoldersExchange form - scenarios step 1

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: TC_HOLDERSEXCH_01 - registration of a new tenant by the owner of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search and pick "א טור" in search field "רחוב"
    When write a valid value "2" in "בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "בעל הנכס" from "מי מגיש הבקשה?"
    When choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042024" in "תאריך כניסה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_02 - registration of a new tenant by the owner of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "בעל הנכס" from "מי מגיש הבקשה?"
    When choose "רישום בעלים אחרים (הנכס נמכר)" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042024" in "תאריך כניסה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגכגכגכג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_03 type 1 - registration of a new tenant by the owner of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "בעל הנכס" from "מי מגיש הבקשה?"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "לא" from "דירת שותפים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגככג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_03 type 2 - registration of a new tenant by the owner of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "בעל הנכס" from "מי מגיש הבקשה?"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "כן" from "דירת שותפים"
    When choose "כן" from "האם כל השותפים עוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגדגכגדכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_03 type 3 - registration of a new tenant by the owner of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "בעל הנכס" from "מי מגיש הבקשה?"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "כן" from "דירת שותפים"
    When choose "לא" from "האם כל השותפים עוזבים"
    When write a valid value "שמעון ואבי" in textarea of "שמות השותפים שעוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_04 - registration of a new tenant by the lessee of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "שוכר" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When write a valid value "12042023" in "תאריך כניסה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגכגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_05 type 1 - registration of a new tenant by the lessee of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "שוכר" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "לא" from "דירת שותפים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגככגד" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_05 type 2 - registration of a new tenant by the lessee of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "שוכר" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "כן" from "דירת שותפים"
    When choose "כן" from "האם כל השותפים עוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגדגכגד" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_05 type 3 - registration of a new tenant by the lessee of the property
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "שוכר" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When click on "המשך" button
    When choose "כן" from "דירת שותפים"
    When choose "לא" from "האם כל השותפים עוזבים"
    When write a valid value "hello everybody" in textarea of "שמות השותפים שעוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_06 - registration of a new tenant by the property's heir
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "יורש" from "מי מגיש הבקשה?"
    When choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    When click on "המשך" button
    When choose "כן" from "האם היורש הוא המחזיק הנוכחי?"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042023" in "תאריך כניסה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_07 - registration of a new tenant by the property's heir
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "יורש" from "מי מגיש הבקשה?"
    When choose "רישום בעלים אחרים (הנכס נמכר)" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    When click on "המשך" button
    When choose "לא" from "האם היורש הוא המחזיק הנוכחי?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042023" in "תאריך כניסה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגכגדכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_08 type 1 - registration of a new tenant by the property's heir
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "יורש" from "מי מגיש הבקשה?"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "לא" from "דירת שותפים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_08 type 2 - registration of a new tenant by the property's heir
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "יורש" from "מי מגיש הבקשה?"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "כן" from "דירת שותפים"
    When choose "כן" from "האם כל השותפים עוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_08 type 3 - registration of a new tenant by the property's heir
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "יורש" from "מי מגיש הבקשה?"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "כן" from "דירת שותפים"
    When choose "לא" from "האם כל השותפים עוזבים"
    When write a valid value "hello everybody" in textarea of "שמות השותפים שעוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגדכג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_09 - registration of a new tenant by the property representative
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "מיופה כח" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "יפוי כח"
    When click on "המשך" button
    When choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042023" in "תאריך כניסה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדכגדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_10 - registration of a new tenant by the property representative
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "מיופה כח" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "רישום בעלים אחרים (הנכס נמכר)" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "יפוי כח"
    When click on "המשך" button
    When choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042023" in "תאריך כניסה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגכדכג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_11 type 1 - registration of a new tenant by the property representative
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "מיופה כח" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "יפוי כח"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "לא" from "דירת שותפים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגכדגכדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_11 type 2 - registration of a new tenant by the property representative
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "מיופה כח" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "יפוי כח"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "כן" from "דירת שותפים"
    When choose "כן" from "האם כל השותפים עוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "דגדכגדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_11 type 3 - registration of a new tenant by the property representative
    Given Navigate to "HoldersExchange" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
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
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When choose "למגורים" from "סוג הנכס"
    When choose "מיופה כח" from "מי מגיש הבקשה?"
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    When Upload "png_to_upload.png" file in "יפוי כח"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When choose "כן" from "דירת שותפים"
    When choose "לא" from "האם כל השותפים עוזבים"
    When write a valid value "hello everybody" in textarea of "שמות השותפים שעוזבים"
    When write a valid value "12042023" in "תאריך עזיבה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "כדגכדגכדגכ" in textarea of "הערות"