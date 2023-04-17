#@in_dev
Feature: ExemptionEmptyProperty form - scenarios step 2

  - Form name:  פטור לנכס ריק וחדש וריק
  - Feature file name: Exemption_Empty_Property_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionEmptyProperty
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "ExemptionEmptyProperty" form and reach step "פרטי הנכס"


  Scenario: EMPTYPROPERTY_02 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה על שם המבקש, נכס ריק, העדר שוכר/קונה
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "כן" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When choose "ריק" from "מצב הנכס"
    When choose "מגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "העדר שוכר/קונה" from "סיבת היות הנכס ריק"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "הסבר מה נעשה עם החפצים"

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "הסבר מה נעשה עם החפצים בנכס"
    Then validate "הסבר מה נעשה עם החפצים בנכס" field is valid
    Then validate "gif_to_upload.gif" file is in "הסבר מה נעשה עם החפצים בנכס" files list

    When upload "gif_to_upload.gif" file in "תמונות של הנכס המעידות על היותו ריק מחפצים"
    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" field is valid
    Then validate "gif_to_upload.gif" file is in "תמונות של הנכס המעידות על היותו ריק מחפצים" files list

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
    Then Validate current step name is "פרטי הנכס"


  Scenario:EMPTYPROPERTY_03 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה על שם המבקש, נכס ריק, הנכס שופץ
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "כן" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When choose "ריק" from "מצב הנכס"
    When choose "מגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "הנכס שופץ" from "סיבת היות הנכס ריק"
    When write a valid value "דדדדד" in "הסבר היכן התגורר"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "הסבר מה נעשה עם החפצים"

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "קבלות על שיפוצים"
    Then validate "קבלות על שיפוצים" field is valid
    Then validate "gif_to_upload.gif" file is in "קבלות על שיפוצים" files list

    When upload "gif_to_upload.gif" file in "הסבר מה נעשה עם החפצים בנכס"
    Then validate "הסבר מה נעשה עם החפצים בנכס" field is valid
    Then validate "gif_to_upload.gif" file is in "הסבר מה נעשה עם החפצים בנכס" files list

    When upload "gif_to_upload.gif" file in "תמונות של הנכס המעידות על היותו ריק מחפצים"
    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" field is valid
    Then validate "gif_to_upload.gif" file is in "תמונות של הנכס המעידות על היותו ריק מחפצים" files list

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
    Then Validate current step name is "פרטי הנכס"

  Scenario: EMPTYPROPERTY_04 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה על שם המבקש, נכס ריק, מוחזק ע"י כונס
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "כן" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When choose "ריק" from "מצב הנכס"
    When choose "מגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "מוחזק ע"י כונס" from "סיבת היות הנכס ריק"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "הסבר מה נעשה עם החפצים"

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "אישור על מינוי ככונס"
    Then validate "אישור על מינוי ככונס" field is valid
    Then validate "gif_to_upload.gif" file is in "אישור על מינוי ככונס" files list

    When upload "gif_to_upload.gif" file in "הסבר מה נעשה עם החפצים בנכס"
    Then validate "הסבר מה נעשה עם החפצים בנכס" field is valid
    Then validate "gif_to_upload.gif" file is in "הסבר מה נעשה עם החפצים בנכס" files list

    When upload "gif_to_upload.gif" file in "תמונות של הנכס המעידות על היותו ריק מחפצים"
    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" field is valid
    Then validate "gif_to_upload.gif" file is in "תמונות של הנכס המעידות על היותו ריק מחפצים" files list

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
    Then Validate current step name is "פרטי הנכס"


  Scenario: EMPTYPROPERTY_05 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה על שם המבקש, נכס ריק, פטירת בעל הנכס
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "כן" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When choose "ריק" from "מצב הנכס"
    When choose "מגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "פטירת בעל הנכס" from "סיבת היות הנכס ריק"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "הסבר מה נעשה עם החפצים"

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "הסבר מה נעשה עם החפצים בנכס"
    Then validate "הסבר מה נעשה עם החפצים בנכס" field is valid
    Then validate "gif_to_upload.gif" file is in "הסבר מה נעשה עם החפצים בנכס" files list

    When upload "gif_to_upload.gif" file in "תמונות של הנכס המעידות על היותו ריק מחפצים"
    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" field is valid
    Then validate "gif_to_upload.gif" file is in "תמונות של הנכס המעידות על היותו ריק מחפצים" files list

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
    Then Validate current step name is "פרטי הנכס"


  Scenario:EMPTYPROPERTY_06 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה על שם המבקש, נכס ריק, אחר
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "כן" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When choose "ריק" from "מצב הנכס"
    When choose "מגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "אחר" from "סיבת היות הנכס ריק"
    When write a valid value "ססס" in "הסבר להיות הנכס ריק"

    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "הסבר מה נעשה עם החפצים"

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "הסבר מה נעשה עם החפצים בנכס"
    Then validate "הסבר מה נעשה עם החפצים בנכס" field is valid
    Then validate "gif_to_upload.gif" file is in "הסבר מה נעשה עם החפצים בנכס" files list

    When upload "gif_to_upload.gif" file in "תמונות של הנכס המעידות על היותו ריק מחפצים"
    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" field is valid
    Then validate "gif_to_upload.gif" file is in "תמונות של הנכס המעידות על היותו ריק מחפצים" files list

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
    Then Validate current step name is "פרטי הנכס"



#------------------------------------------------------------------


  Scenario:EMPTYPROPERTY_07 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה לא על שם המבקש, זיקה: בעל הנכס, נכס חדש וריק
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "לא" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When pick "בעל הנכס" from "זיקה לנכס"
    When choose "חדש וריק" from "מצב הנכס"
    When choose "לא למגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "העדר שוכר/קונה" from "סיבת היות הנכס ריק"

    When upload "gif_to_upload.gif" file in "תצהיר מעו"ד בגין נכס לא למגורים"
    Then validate "תצהיר מעו"ד בגין נכס לא למגורים" field is valid
    Then validate "gif_to_upload.gif" file is in "תצהיר מעו"ד בגין נכס לא למגורים" files list

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "ת.ז. / דרכון של בעל חשבון הארנונה"
    Then validate "ת.ז. / דרכון של בעל חשבון הארנונה" field is valid
    Then validate "gif_to_upload.gif" file is in "ת.ז. / דרכון של בעל חשבון הארנונה" files list

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
    Then Validate current step name is "פרטי הנכס"


  Scenario:EMPTYPROPERTY_08 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה לא על שם המבקש, זיקה: שוכר, נכס חדש וריק
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "לא" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When pick "שוכר" from "זיקה לנכס"

    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    And fill number "8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When choose "חדש וריק" from "מצב הנכס"
    When choose "לא למגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "העדר שוכר/קונה" from "סיבת היות הנכס ריק"

    When upload "gif_to_upload.gif" file in "תצהיר מעו"ד בגין נכס לא למגורים"
    Then validate "תצהיר מעו"ד בגין נכס לא למגורים" field is valid
    Then validate "gif_to_upload.gif" file is in "תצהיר מעו"ד בגין נכס לא למגורים" files list

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "ת.ז. / דרכון של בעל חשבון הארנונה"
    Then validate "ת.ז. / דרכון של בעל חשבון הארנונה" field is valid
    Then validate "gif_to_upload.gif" file is in "ת.ז. / דרכון של בעל חשבון הארנונה" files list

    When upload "gif_to_upload.gif" file in "חוזה שכירות"
    Then validate "חוזה שכירות" field is valid
    Then validate "gif_to_upload.gif" file is in "חוזה שכירות" files list

    When upload "gif_to_upload.gif" file in "מסמך מבעל הנכס על אישור היות הנכס ריק בזמן השכרתו"
    Then validate "מסמך מבעל הנכס על אישור היות הנכס ריק בזמן השכרתו" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך מבעל הנכס על אישור היות הנכס ריק בזמן השכרתו" files list

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
    Then Validate current step name is "פרטי הנכס"


  Scenario:EMPTYPROPERTY_09 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה לא על שם המבקש, זיקה: יורש, נכס חדש וריק
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "לא" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When pick "יורש" from "זיקה לנכס"
    When choose "חדש וריק" from "מצב הנכס"
    When choose "לא למגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "העדר שוכר/קונה" from "סיבת היות הנכס ריק"

    When upload "gif_to_upload.gif" file in "תצהיר מעו"ד בגין נכס לא למגורים"
    Then validate "תצהיר מעו"ד בגין נכס לא למגורים" field is valid
    Then validate "gif_to_upload.gif" file is in "תצהיר מעו"ד בגין נכס לא למגורים" files list

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "ת.ז. / דרכון של בעל חשבון הארנונה"
    Then validate "ת.ז. / דרכון של בעל חשבון הארנונה" field is valid
    Then validate "gif_to_upload.gif" file is in "ת.ז. / דרכון של בעל חשבון הארנונה" files list

    When upload "gif_to_upload.gif" file in "צו ירושה"
    Then validate "צו ירושה" field is valid
    Then validate "gif_to_upload.gif" file is in "צו ירושה" files list

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
    Then Validate current step name is "פרטי הנכס"


  Scenario:EMPTYPROPERTY_10 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה לא על שם המבקש, זיקה: מיופה כח, נכס חדש וריק
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "לא" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When pick "מיופה כח" from "זיקה לנכס"

    When write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    When pick a valid "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill number "8078687" as valid value in "טלפון נייד"
    And fill number "8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"

    When choose "חדש וריק" from "מצב הנכס"
    When choose "לא למגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "העדר שוכר/קונה" from "סיבת היות הנכס ריק"

    When upload "gif_to_upload.gif" file in "תצהיר מעו"ד בגין נכס לא למגורים"
    Then validate "תצהיר מעו"ד בגין נכס לא למגורים" field is valid
    Then validate "gif_to_upload.gif" file is in "תצהיר מעו"ד בגין נכס לא למגורים" files list

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "ת.ז. / דרכון של בעל חשבון הארנונה"
    Then validate "ת.ז. / דרכון של בעל חשבון הארנונה" field is valid
    Then validate "gif_to_upload.gif" file is in "ת.ז. / דרכון של בעל חשבון הארנונה" files list

    When upload "gif_to_upload.gif" file in "ייפוי כח"
    Then validate "ייפוי כח" field is valid
    Then validate "gif_to_upload.gif" file is in "ייפוי כח" files list

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
    Then Validate current step name is "פרטי הנכס"


  Scenario:EMPTYPROPERTY_11 הזנת ערכים תקינים בשדות "פרטי הנכס" ארנונה לא על שם המבקש, זיקה: יזם/קבלן, נכס חדש וריק
    When write a valid value "2432434323" in "מס' חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    When write a valid number "2" in "מס' בית"
    When write a valid value "123" in "שטח החיוב במ"ר"
    When choose "לא" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When pick "יזם / קבלן" from "זיקה לנכס"
    When choose "חדש וריק" from "מצב הנכס"
    When choose "לא למגורים" from "שימוש בנכס"
    When write a valid number "01/03/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    When write a valid number "10042023" in "תאריך סיום"
    When choose "העדר שוכר/קונה" from "סיבת היות הנכס ריק"

    When upload "gif_to_upload.gif" file in "תצהיר מעו"ד בגין נכס לא למגורים"
    Then validate "תצהיר מעו"ד בגין נכס לא למגורים" field is valid
    Then validate "gif_to_upload.gif" file is in "תצהיר מעו"ד בגין נכס לא למגורים" files list

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות + ספח של מגיש הבקשה"
    Then validate "צילום תעודת זהות + ספח של מגיש הבקשה" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות + ספח של מגיש הבקשה" files list

    When upload "gif_to_upload.gif" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is valid
    Then validate "gif_to_upload.gif" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list

    When upload "gif_to_upload.gif" file in "ת.ז. / דרכון של בעל חשבון הארנונה"
    Then validate "ת.ז. / דרכון של בעל חשבון הארנונה" field is valid
    Then validate "gif_to_upload.gif" file is in "ת.ז. / דרכון של בעל חשבון הארנונה" files list

    When upload "gif_to_upload.gif" file in "תצהיר עו"ד על רשימת נכסים חדשים שנבנו"
    Then validate "תצהיר עו"ד על רשימת נכסים חדשים שנבנו" field is valid
    Then validate "gif_to_upload.gif" file is in "תצהיר עו"ד על רשימת נכסים חדשים שנבנו" files list

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
    Then Validate current step name is "פרטי הנכס"




#-----------------------------------------------------

  Scenario Outline: EMPTYPROPERTY_14 הזנת ערכים שגוים בשדות "פרטי הנכס"
    When write an invalid value "asdasd" in "מס' חשבון תושב בארנונה"
    Then validate "מס' חשבון תושב בארנונה" error is "יש להזין ספרות בלבד"
    When write an invalid value "דדד" in "מס' חשבון תושב בארנונה"
    Then validate "מס' חשבון תושב בארנונה" error is "יש להזין ספרות בלבד"
    When write an invalid value "111" in "מס' חשבון תושב בארנונה"
    Then validate "מס' חשבון תושב בארנונה" error is "יש להשלים מספר חשבון/נכס"

    When search invalid value and pick "zz" in search field "רחוב"

    When write a number "1234567" in "מס' בית"
    Then validate if "מס' בית" value is "12345"
    When write a number "543jhj323kk26" in "מס' בית"
    Then validate if "מס' בית" value is "54332"
    When write a number "543דגכ323ככ26" in "מס' בית"
    Then validate if "מס' בית" value is "54326"

    When write a number "1234567" in "שטח החיוב במ"ר"
    Then validate if "שטח החיוב במ"ר" value is "12345"
    When write an invalid value "zsss" in "שטח החיוב במ"ר"
    Then validate "שטח החיוב במ"ר" error is "יש להזין ספרות בלבד"
    When write an invalid value "דדדדד" in "שטח החיוב במ"ר"
    Then validate "שטח החיוב במ"ר" error is "יש להזין ספרות בלבד"

    When choose "כן" from "האם הארנונה רשומה על שם מבקש ההנחה?"
    When choose "ריק" from "מצב הנכס"
    When choose "מגורים" from "שימוש בנכס"

    #ToDo : sofia asks for specific date alert between 29 day and not less than 2 years
    When write a valid number "01/04/2023" in "תאריך התחלה (לפני 30 ימים לפחות)"
    Then validate "תאריך התחלה (לפני 30 ימים לפחות)" error is "יש להזין תאריך לפני"

    #ToDo : sofia asks for specific date alert between 0 day and not less than 1.5 years
    When write a valid number "10/04/2025" in "תאריך סיום"
    Then validate "תאריך סיום" error is "יש להזין תאריך לפני"

    When choose "העדר שוכר/קונה" from "סיבת היות הנכס ריק"
    When write an invalid value "fdsdsdsdsd" in textarea of "הסבר מה נעשה עם החפצים"
    Then validate "הסבר מה נעשה עם החפצים" error is "שפת קלט לא תקינה"


    When upload "10MB_file_to_upload.pdf" file in "<widget_name>"
    Then validate "<widget_name>" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "<widget_name>" files list
    Then validate "<widget_name>" error is "חובה לצרף קובץ"
    Then validate "<widget_name>" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    Examples:
      | widget_name                                |
      | צילום תעודת זהות + ספח של מגיש הבקשה       |
      | חשבונות חשמל לתקופה בה הנכס עמד ריק        |
      | חשבונות המים לתקופה בה הנכס עמד ריק        |
      | הסבר מה נעשה עם החפצים בנכס                |
      | תמונות של הנכס המעידות על היותו ריק מחפצים |
      | אחר                                        |



    When upload "zip_to_upload.zip" file in "<widget_name>"
    Then validate "<widget_name>" field is invalid
    Then validate "zip_to_upload.zip" file is not in "<widget_name>" files list
    Then validate "<widget_name>" error is "חובה לצרף קובץ"
    Then validate "<widget_name>" error window message is "סוג הקובץ אינו חוקי מותרים קבצים מסוג זה בלבד: .bmp, .gif, .png, .jpg, .jpeg, .pdf"
    Examples:
      | widget_name                                |
      | צילום תעודת זהות + ספח של מגיש הבקשה       |
      | חשבונות חשמל לתקופה בה הנכס עמד ריק        |
      | חשבונות המים לתקופה בה הנכס עמד ריק        |
      | הסבר מה נעשה עם החפצים בנכס                |
      | תמונות של הנכס המעידות על היותו ריק מחפצים |
      | אחר                                        |



#    When upload "10MB_file_to_upload.pdf" file in "חשבונות חשמל לתקופה בה הנכס עמד ריק"
#    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" field is invalid
#    Then validate "10MB_file_to_upload.pdf" file is in "חשבונות חשמל לתקופה בה הנכס עמד ריק" files list
#    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" error is "חובה לצרף קובץ"
#    Then validate "חשבונות חשמל לתקופה בה הנכס עמד ריק" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
#
#
#    When upload "10MB_file_to_upload.pdf" file in "חשבונות המים לתקופה בה הנכס עמד ריק"
#    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" field is invalid
#    Then validate "10MB_file_to_upload.pdf" file is in "חשבונות המים לתקופה בה הנכס עמד ריק" files list
#    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" error is "חובה לצרף קובץ"
#    Then validate "חשבונות המים לתקופה בה הנכס עמד ריק" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
#
#
#    When upload "10MB_file_to_upload.pdf" file in "הסבר מה נעשה עם החפצים בנכס"
#    Then validate "הסבר מה נעשה עם החפצים בנכס" field is invalid
#    Then validate "10MB_file_to_upload.pdf" file is in "הסבר מה נעשה עם החפצים בנכס" files list
#    Then validate "הסבר מה נעשה עם החפצים בנכס" error is "חובה לצרף קובץ"
#    Then validate "הסבר מה נעשה עם החפצים בנכס" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
#
#
#    When upload "10MB_file_to_upload.pdf" file in "תמונות של הנכס המעידות על היותו ריק מחפצים"
#    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" field is invalid
#    Then validate "10MB_file_to_upload.pdf" file is in "תמונות של הנכס המעידות על היותו ריק מחפצים" files list
#    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" error is "חובה לצרף קובץ"
#    Then validate "תמונות של הנכס המעידות על היותו ריק מחפצים" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
#
#
#
#    When upload "10MB_file_to_upload.pdf" file in "אחר"
#    Then validate "אחר" field is invalid
#    Then validate "10MB_file_to_upload.pdf" file is in "אחר" files list
#    Then validate "אחר" error is "חובה לצרף קובץ"
#    Then validate "אחר" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
