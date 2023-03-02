Feature: Test Scenarios for ContractorEmpRights Page


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "אימייל"
    When fill "058-8078687" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "תד"
    When click on "שמור" Button
#   Then validate new email received
#   click on the link from the mail
    When click on "המשך" Button

  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "VALUE" in "שם פרטי"
    When write an invalid value "VALUE" in "שם משפחה"


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When click on "מידע" Button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on X Button
    When click on "שמור" Button
    When click on "הדפס" Button


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרט"
    When write a valid value "VALUE" in "שם פרט"
    When pick "{date}" from calendar of "תאריך לידה"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "מספר טלפון"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "אימייל"
    When click on "שמור" Button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" Button


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרט"
    When write a valid value "VALUE" in "שם פרט"
    When pick "{date}" from calendar of "תאריך לידה"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "מספר טלפון"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "אימייל"
    When pick "ניקיון" from "ענף"
    When write "SEARCH_VALUE" in search field "שם חברה"
    When write "TEXT" into "שם אתר עירוניE"
    When pick "{date}" from calendar of "תאריך תחילת העבודה בחברה"
    When click on "שמור" Button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" Button


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרט"
    When write a valid value "VALUE" in "שם פרט"
    When pick "{date}" from calendar of "תאריך לידה"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "מספר טלפון"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "אימייל"
    When pick "הסעדה" from "ענף"
    When write "SEARCH_VALUE" in search field "שם חברה"
    When write "TEXT" into "שם אתר עירוני"
    When pick "{date}" from calendar of "תאריך תחילת העבודה בחברה"
    When click on "שמור" Button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" Button


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרט"
    When write a valid value "VALUE" in "שם פרט"
    When pick "{date}" from calendar of "תאריך לידה"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "מספר טלפון"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "אימייל"
    When pick "הסעדה" from "ענף"
    When write "SEARCH_VALUE" in search field "שם חברה"
    When write "TEXT" into "שם אתר עירוני"
    When pick "{date}" from calendar of "תאריך תחילת העבודה בחברה"
    When pick "ניהול פנקס שעות עבודה" from "נושא התלונה"
    When write "TEXT" into "פרטי התלונה"
    When pick year ""2022" in widget "חודשים לבדיקה" at index "1"
    When pick month "9" in widget "חודשים לבדיקה" at index "1"
    When choose "כן" from "האם הייתה"
    When write "TEXT" into "התשובה שקיבלתי"
    When click on "שמור" Button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" Button

  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרט"
    When write a valid value "VALUE" in "שם פרט"
    When pick "{date}" from calendar of "תאריך לידה"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "מספר טלפון"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "אימייל"
    When pick "הסעדה" from "ענף"
    When write "SEARCH_VALUE" in search field "שם חברה"
    When write "TEXT" into "שם אתר עירוני"
    When pick "{date}" from calendar of "תאריך תחילת העבודה בחברה"
    When pick "Mult" from "נושא התלונה"
    When write "TEXT" into "פרטי התלונה"
    When pick year ""2022" in widget "חודשים לבדיקה" at index "1"
    When pick month "9" in widget "חודשים לבדיקה" at index "1"
    When pick "2022" from "חודשים לבדיקה"
    When choose "לא" from "האם הייתה"
    When pick year ""2020" in widget "חודשים לבדיקה" at index "1"
    When pick month "9" in widget "חודשים לבדיקה" at index "1"
    When pick "2021" from "חודשים לבדיקה"
    When click on "שמור" Button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" Button


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרט"
    When write a valid value "VALUE" in "שם פרט"
    When pick "{date}" from calendar of "תאריך לידה"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "מספר טלפון"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "אימייל"
    When pick "הסעדה" from "ענף"
    When write "SEARCH_VALUE" in search field "שם חברה"
    When write "TEXT" into "שם אתר עירוני"
    When pick "{date}" from calendar of "תאריך תחילת העבודה בחברה"
    When pick "Mult" from "נושא התלונה"
    When write "TEXT" into "פרטי התלונה"
    When pick year ""2022" in widget "חודשים לבדיקה" at index "1"
    When pick month "9" in widget "חודשים לבדיקה" at index "1"
    When choose "לא" from "האם הייתה"
    When pick year ""2021" in widget "חודשים לבדיקה" at index "1"
    When pick a group of months "{months}" in widget "חודשים לבדיקה" at index "1"
    When click on "המשך" Button
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "תלושי שכר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אסמכתאות לתשלום שכר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אחר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אימות"
    When click on "שלח" Button


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "VALUE" in "מספר זהות"
    When write a valid value "VALUE" in "שם פרט"
    When write a valid value "VALUE" in "שם פרט"
    When pick "{date}" from calendar of "תאריך לידה"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "מספר טלפון"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "אימייל"
    When pick "הסעדה" from "ענף"
    When write "SEARCH_VALUE" in search field "שם חברה"
    When write "TEXT" into "שם אתר עירוני"
    When pick "{date}" from calendar of "תאריך תחילת העבודה בחברה"
    When pick "Mult" from "נושא התלונה"
    When write "TEXT" into "פרטי התלונה"
    When pick year ""2022" in widget "חודשים לבדיקה" at index "1"
    When pick month "9" in widget "חודשים לבדיקה" at index "1"
    When choose "לא" from "האם הייתה"
    When pick year ""2021" in widget "חודשים לבדיקה" at index "1"
    When pick a group of months "{months}" in widget "חודשים לבדיקה" at index "1"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "תלושי שכר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "תלושי שכר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אסמכתאות לתשלום שכר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אסמכתאות לתשלום שכר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אחר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אחר"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אימות"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אימות"
    When Check the box of "הנני מצהיר\ה"


  Scenario: general test for all fields
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "VALUE" in "שם פרטי"
    When write an invalid value "VALUE" in "שם משפחה"














