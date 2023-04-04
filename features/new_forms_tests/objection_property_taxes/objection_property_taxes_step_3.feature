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
    And write a valid number "2" in "בית"
    And write a valid value "3222" in "מיקוד"
    And write a valid value "23344" in "ת.ד."
    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח" files list
    When check the box of "הריני מצהיר/ה בזה כי כל הפרטים הרשומים בבקשתי זו הם נכונים, מדויקים ומלאים"
    And check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    When clear fields


  Scenario: TC_OBJECTIONPRO_13 הזנת ערכים שגויים לשדות "תצהיר ושליחה"
    When write an invalid value "fdssdf" in "עיר"
    Then validate "עיר" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "asffsd" in "רחוב"
    Then validate "רחוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write a valid number "sd11a" in "בית"
    Then validate if "בית" value is "11"
    When write an invalid value "afdfs" in "מיקוד"
    Then validate "מיקוד" error is "יש להזין ספרות בלבד"
    When write an invalid value "sdfdfs" in "ת.ד."
    Then validate "ת.ד." error is "יש להזין ספרות בלבד"
    When upload "10MB_file_to_upload.pdf" file in "צילום תעודת זהות + ספח"
    Then validate "צילום תעודת זהות + ספח" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "צילום תעודת זהות + ספח" files list
    Then validate "צילום תעודת זהות + ספח" error is "חובה לצרף קובץ"
    Then validate "צילום תעודת זהות + ספח" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    When clear fields