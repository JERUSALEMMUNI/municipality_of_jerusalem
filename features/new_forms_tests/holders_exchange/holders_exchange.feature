Feature: HoldersExchange form

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5
  - All fields are mandatory expect of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "HoldersExchange" form and reach step "פרטי נכס"

  Scenario: TC_HOLDERSEXCH_01 - registration of a new tenant by the owner of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "2" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "בעל הנכס" from "מי מגיש הבקשה?"
    And choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid number "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid number "12042024" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכ" in textarea of "הערות"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"


  Scenario: TC_HOLDERSEXCH_02 - registration of a new tenant by the owner of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "בעל הנכס" from "מי מגיש הבקשה?"
    And choose "רישום בעלים אחרים (הנכס נמכר)" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And choose "לא" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042024" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגכגכגכג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_03 type 1 - registration of a new tenant by the owner of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "בעל הנכס" from "מי מגיש הבקשה?"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "לא" from "דירת שותפים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגככג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_03 type 2 - registration of a new tenant by the owner of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "בעל הנכס" from "מי מגיש הבקשה?"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "כן" from "דירת שותפים"
    And choose "כן" from "האם כל השותפים עוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגדגכגדכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_03 type 3 - registration of a new tenant by the owner of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "בעל הנכס" from "מי מגיש הבקשה?"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "כן" from "דירת שותפים"
    And choose "לא" from "האם כל השותפים עוזבים"
    And write a valid value "שמעון ואבי" in textarea of "שמות השותפים שעוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_04 - registration of a new tenant by the lessee of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "שוכר" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And write a valid value "12042023" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_05 type 1 - registration of a new tenant by the lessee of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "שוכר" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And choose "לא" from "דירת שותפים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגככגד" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_05 type 2 - registration of a new tenant by the lessee of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "שוכר" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And choose "כן" from "דירת שותפים"
    And choose "כן" from "האם כל השותפים עוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגדגכגד" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_05 type 3 - registration of a new tenant by the lessee of the property
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "שוכר" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And click on "המשך" button
    And choose "כן" from "דירת שותפים"
    And choose "לא" from "האם כל השותפים עוזבים"
    And write a valid value "שלום ואבי" in textarea of "שמות השותפים שעוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_06 - registration of a new tenant by the property's heir
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "יורש" from "מי מגיש הבקשה?"
    And choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And click on "המשך" button
    And choose "כן" from "האם היורש הוא המחזיק הנוכחי?"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042023" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_07 - registration of a new tenant by the property's heir
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "יורש" from "מי מגיש הבקשה?"
    And choose "רישום בעלים אחרים (הנכס נמכר)" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And click on "המשך" button
    And choose "לא" from "האם היורש הוא המחזיק הנוכחי?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042023" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכגדכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_08 type 1 - registration of a new tenant by the property's heir
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "יורש" from "מי מגיש הבקשה?"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "לא" from "דירת שותפים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_08 type 2 - registration of a new tenant by the property's heir
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "יורש" from "מי מגיש הבקשה?"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "כן" from "דירת שותפים"
    And choose "כן" from "האם כל השותפים עוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_08 type 3 - registration of a new tenant by the property's heir
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "יורש" from "מי מגיש הבקשה?"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "כן" from "דירת שותפים"
    And choose "לא" from "האם כל השותפים עוזבים"
    And write a valid value "אבי ואני" in textarea of "שמות השותפים שעוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגדכג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_09 - registration of a new tenant by the property representative
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "מיופה כח" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "יפוי כח"
    And click on "המשך" button
    And choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042023" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדכגדגכדגכ" in textarea of "הערות"

  Scenario: TC_HOLDERSEXCH_10 - registration of a new tenant by the property representative
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "מיופה כח" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "רישום בעלים אחרים (הנכס נמכר)" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "יפוי כח"
    And click on "המשך" button
    And choose "כן" from "האם בעל הנכס הוא המחזיק הנוכחי?"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And write a valid value "12042023" in "תאריך כניסה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And Upload a valid "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכדכג" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_11 type 1 - registration of a new tenant by the property representative
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "מיופה כח" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "יפוי כח"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "לא" from "דירת שותפים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגכדגכדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_11 type 2 - registration of a new tenant by the property representative
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "מיופה כח" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "יפוי כח"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "כן" from "דירת שותפים"
    And choose "כן" from "האם כל השותפים עוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "דגדכגדגכדגכ" in textarea of "הערות"


  Scenario: TC_HOLDERSEXCH_11 type 3 - registration of a new tenant by the property representative
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid value "3345434453" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "מיופה כח" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "יפוי כח"
    And click on "המשך" button
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "כן" from "דירת שותפים"
    And choose "לא" from "האם כל השותפים עוזבים"
    And write a valid value "שמעון ואבי" in textarea of "שמות השותפים שעוזבים"
    And write a valid value "12042023" in "תאריך עזיבה"
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    And click on "המשך" button
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And write a valid value "כדגכדגכדגכ" in textarea of "הערות"