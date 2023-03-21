Feature: ObjectionPropertyTaxes form - scenarios step 3

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory expect of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "ObjectionPropertyTaxes" form and reach step "תצהיר ושליחה"


  Scenario: TC_OBJECTIONPRO_20 - Entering valid values for the "forms and attachments" fields
    When write a valid value "ירושלים" in "עיר"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "3222" in "מיקוד"
    And write a valid value "23344" in "ת.ד."
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"


  Scenario: TC_OBJECTIONPRO_21 - Entering invalid values for the "forms and attachments" fields
    When write an invalid value "sdfs" in "עיר"
    And write an invalid value "dsf" in "רחוב"
    And write an invalid value "ירוsdfdsשלים" in "בית"
    And write an invalid value "ירוsdfשלים" in "מיקוד"
    And write an invalid value "sdf" in "ת.ד."
    And Upload an invalid "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"

