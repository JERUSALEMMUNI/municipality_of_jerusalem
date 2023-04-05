
Feature: ExemptionVolunteerInstitution form - scenarios step 3

  - Form name: בקשה לקבלת פטור מארנונה לנכסי מוסד מתנדב לשירות הציבור
  - Feature file name: Exemption_Volunteer_Institution_step_3.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ExemptionVolunteerInstitution
  - Number of Pages is : 6, We are at step: 3
  - All fields are mandatory except

  Background:
    Given  Navigate to "ExemptionVolunteerInstitution" form and reach step "בעלי תפקידים"

  Scenario: EXCEPTVOLUNT_03 הזנת ערכים תקינים ב"בעלי תפקידים"
    When from table "בעלי תפקידים" at row "1" pick "מנכ"ל" from "בעל תפקיד"
    When from table "בעלי תפקידים" at row "1" choose "כן" in "האם בעל התפקיד שונה ממגיש הבקשה?"
    When from table "בעלי תפקידים" at row "1" write a valid value "דני" in "שם פרטי"
    And from table "בעלי תפקידים" at row "1" write a valid value "גלעד" in "שם משפחה"
    When from table "בעלי תפקידים" at row "1" pick "ת.ז." from "סוג זיהוי"
    And from table "בעלי תפקידים" at row "1" write a valid value "332796184" in "מספר ת.ז."
    And from table "בעלי תפקידים" at row "1" fill number "8078687" as valid value in "טלפון נייד"
    And from table "בעלי תפקידים" at row "1" fill number "8078687" as valid value in "טלפון קווי"
    And from table "בעלי תפקידים" at row "1" write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
	When click on "המשך"
	Then validate current step name is "פרוט נכסים"
	When click on "חזור"
	Then Validate current step name is "בעלי תפקידים"

  Scenario: EXCEPTVOLUNT_10 הזנת ערכים שגויים ב"בעלי תפקידים"
    When from table "בעלי תפקידים" at row "1" choose "כן" in "האם בעל התפקיד שונה ממגיש הבקשה?"
    When from table "בעלי תפקידים" at row "1" write an invalid value "asdasd" in "שם פרטי"
    Then from table "בעלי תפקידים" at row "1" validate if "שם פרטי" text is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When from table "בעלי תפקידים" at row "1" write an invalid value "asdf" in "שם משפחה"
    Then from table "בעלי תפקידים" at row "1" validate if "שם משפחה" text is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When from table "בעלי תפקידים" at row "1" pick a valid "ת.ז." from "סוג זיהוי"
    When from table "בעלי תפקידים" at row "1" write an invalid value "000000018" in "מספר ת.ז."
    Then from table "בעלי תפקידים" at row "1" validate if "מספר ת.ז." text is "מספר זהות לא תקין"
    When from table "בעלי תפקידים" at row "1" fill an invalid number "050-sdfdsf" in "טלפון נייד"
    Then from table "בעלי תפקידים" at row "1" check if phone number error in "טלפון נייד" is "יש להזין ספרות בלבד"
    When from table "בעלי תפקידים" at row "1" fill an invalid number "050-233" in "טלפון נייד"
    Then from table "בעלי תפקידים" at row "1" check if phone number error in "טלפון נייד" is "יש להשלים את הספרות החסרות"
    When from table "בעלי תפקידים" at row "1" fill an invalid number "02-232" in "טלפון קווי"
    Then from table "בעלי תפקידים" at row "1" check if phone number error in "טלפון קווי" is "יש להשלים את הספרות החסרות"
    When from table "בעלי תפקידים" at row "1" fill an invalid number "02-שדגדש" in "טלפון קווי"
    Then from table "בעלי תפקידים" at row "1" check if phone number error in "טלפון קווי" is "יש להזין ספרות בלבד"
    When from table "בעלי תפקידים" at row "1" fill an invalid number "02-sdfdsf" in "טלפון קווי"
    Then from table "בעלי תפקידים" at row "1" check if phone number error in "טלפון קווי" is "יש להזין ספרות בלבד"
    When from table "בעלי תפקידים" at row "1" write an invalid value "dfghj" in "דוא"ל"
    Then from table "בעלי תפקידים" at row "1" validate if "דוא"ל" text is "שדה לא תקין"