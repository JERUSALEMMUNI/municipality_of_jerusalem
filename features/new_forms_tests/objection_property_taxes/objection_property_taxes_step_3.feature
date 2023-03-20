@in_dev
Feature: ObjectionPropertyTaxes form - scenarios step 3

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory expect of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "ObjectionPropertyTaxes" form and reach step "פרטי הנכס וסיבת ההשגה"
    When click on "המשך" button
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code
    Given Navigate to "ObjectionPropertyTaxes" form and reach step "תצהיר ושליחה"


  Scenario: TC_OBJECTIONPRO_20 - Entering valid values for the "forms and attachments" fields
    When write a valid value "ירושלים" in "עיר"
    When write a valid value "א טור" in "רחוב"
    When write a valid value "2" in "בית"
    When write a valid value "3222" in "מיקוד"
    When write a valid value "23344" in "ת.ד."
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"




Scenario: TC_OBJECTIONPRO_21 - Entering invalid values for the "forms and attachments" fields
    When write an invalid value "sdfs" in "עיר"
    When write an invalid value "dsf" in "רחוב"
    When write an invalid value "ירוsdfdsשלים" in "בית"
    When write an invalid value "ירוsdfשלים" in "מיקוד"
    When write an invalid value "sdf" in "ת.ד."
    When Upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"

