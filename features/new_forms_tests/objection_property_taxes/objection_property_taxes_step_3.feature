Feature: ObjectionPropertyTaxes form - scenarios step 3

  - Form name: השגה על חיוב בארנונה
  - Feature file name: objection_property_taxes.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ObjectionPropertyTaxes
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory expect of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "ObjectionPropertyTaxes" form and reach step "תצהיר ושליחה"


  Scenario: TC_OBJECTIONPRO_10 הזנת ערכים תקינים לשדות "תצהיר ושליחה"
    When write a valid value "ירושלים" in "עיר"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "בית"
    And write a valid value "3222" in "מיקוד"
    And write a valid value "23344" in "ת.ד."
    And Upload a valid "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    And check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_OBJECTIONPRO_13 הזנת ערכים שגויים לשדות "תצהיר ושליחה"
    When write an invalid value "fdssdf" in "עיר"
    Then check if "עיר" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asffsd" in "רחוב"
    Then check if "רחוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write a valid number "sd11a" in "בית"
    Then validate if "בית" number is "11"
    When write an invalid value "afdfs" in "מיקוד"
    Then check if "מיקוד" error is "יש להזין ספרות בלבד"
    When write an invalid value "sdfdfs" in "ת.ד."
    Then check if "ת.ד." error is "יש להזין ספרות בלבד"
    When Upload an invalid "zip_to_upload.zip" file in "צילום תעודת זהות + ספח"
    Then check if "צילום תעודת זהות + ספח" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    When clear fields