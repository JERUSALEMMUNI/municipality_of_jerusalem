@in_dev
Feature: ObjectionPropertyTaxes form - scenarios step 1

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי)


  Scenario: TC_HOLDERSEXCH_01 - registration of a new tenant by the owner of the property
    Given Navigate to "ObjectionPropertyTaxes" form
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When click on "המשך" button
    When test temp
    #todo: create new steps for email of new pages
#    When click on "שמור" button
#    When 1st wait for email that contains pin code and link
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form
    When write a valid value "3345434453" in "מס' חשבון תושב בארנונה"
    When search invalid value and pick "א טור" in search field "רחוב"
    When write a valid value "3345434453" in "מס' בית"
    When from "סוג הנכס" click on "למגורים"
    When from "מי מגיש הבקשה?" click on "בעל הנכס"
    When from "מהי הפעולה המבוקשת?" click on "רישום שוכר חדש"
    When click on "המשך" button
    When from "האם בעל הנכס הוא המחזיק הנוכחי?" click on "כן"
    When write a valid value "12042023" in "תאריך עזיבה"
    #todo: need to create new upload file widget
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When click on "המשך" button
    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "058-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "12042024" in "תאריך כניסה"
    #todo: need to create new upload file widget
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח של בעל החשבון"
    When Upload "png_to_upload.png" file in "חוזה שבו מופיע תאריך כניסה לדירה"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When write a valid value "hello everybody" in textarea of "הערות"






