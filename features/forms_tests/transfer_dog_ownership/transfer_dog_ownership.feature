Feature: Test Scenarios for TransferDogOwnership Page

  Scenario: general test for all fields
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "VALUE" in "תעודת זהות"
    When write an invalid value "VALUE" in "שם פרטי"
    When write an invalid value "VALUE" in "שם משפחה"
    When write an invalid value "VALUE" in "אימייל"
    When write an invalid value "VALUE" in "מספר טלפון נייד"
    When write an invalid value "VALUE" in "רחוב"
    When write an invalid value "VALUE" in "מספר בית"
    When write an invalid value "VALUE" in "מספר דירה"
    When write an invalid value "VALUE" in "תד"

  Scenario: general test for all fields
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "VALUE" in "תעודת זהות"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "אימייל"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "עיר"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "תד"
    When click on "שמור" button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" button

  Scenario: general test for all fields
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "VALUE" in "תעודת זהות"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "אימייל"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "עיר"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "תד"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "תעודת זהות"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "עיר"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When click on "המשך" button
    When write a valid value "VALUE" in "שם הכלב"
    When write a valid value "VALUE" in "גזע"
    When choose "VALUE_NAME" from "מין"
    When write a valid value "VALUE" in "גזע"
    When write a valid value "VALUE" in "מספר שבב"
    When click on "לחץ למידע חיפוש כלב" button
       """
       לחץ על קישור
        לחץ על קישור "למאגר הארצי לרישום כלבים"> בדף שנפתח הזן שם בעלים הכלב לדוגמא: פופוב אלכסנדר> לחץ "SEARCH"
        העתק מספר שבב של אחד הכלבים מהרשימה>חזור למסך "פרטי הכלב>הדבק את מספר השבב
       """
    When pick "OPTION_VALUE" from "שנת לידה"
    When choose "VALUE_NAME" from "הכלב מחוסן כנגד מחלת הכלבת?"
    When pick "{date}" from calendar of "תאריך חיסון כלבת אחרון"
    When search for "SEARCH_VALUE" in "הכלב רשום ברשות המקומית"
    When pick "{date}" from calendar of "תאריך מסירת הכלב"
    When click on "שמור" button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" button


  Scenario: general test for all fields
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "VALUE" in "תעודת זהות"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "אימייל"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "עיר"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "תד"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "תעודת זהות"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "עיר"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When click on "המשך" button
    When write an invalid value "VALUE" in "שם הכלב"
    When write an invalid value "VALUE" in "גזע"
    When choose "VALUE_NAME" from "מין"
    When write an invalid value "VALUE" in "צבע"
    When write an invalid value "VALUE" in "מספר שבב"
    When write "SEARCH_VALUE" in search field "הכלב רשום ברשות המקומית"


  Scenario: general test for all fields
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "VALUE" in "תעודת זהות"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "אימייל"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "עיר"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When write a valid value "VALUE" in "מספר דירה"
    When write a valid value "VALUE" in "תד"
    When write a valid value "VALUE" in "שם פרטי"
    When write a valid value "VALUE" in "שם משפחה"
    When write a valid value "VALUE" in "תעודת זהות"
    When write a valid value "VALUE" in "מספר טלפון נייד"
    When write a valid value "VALUE" in "עיר"
    When write a valid value "VALUE" in "רחוב"
    When write a valid value "VALUE" in "מספר בית"
    When click on "המשך" button
    When write an invalid value "VALUE" in "שם הכלב"
    When write an invalid value "VALUE" in "גזע"
    When choose "VALUE_NAME" from "מין"
    When write an invalid value "VALUE" in "צבע"
    When write an invalid value "VALUE" in "מספר שבב"
    When click on "לחץ למידע חיפוש כלב" button
    """
    לחץ על קישור
    לחץ על קישור "למאגר הארצי לרישום כלבים"> בדף שנפתח הזן שם בעלים הכלב לדוגמא: פופוב אלכסנדר> לחץ "SEARCH"
    העתק מספר שבב של אחד הכלבים מהרשימה>חזור למסך "פרטי הכלב>הדבק את מספר השבב

    """
    When pick "OPTION_VALUE" from "שנת לידה"
    When choose "VALUE_NAME" from "הכלב מחוסן כנגד מחלת הכלבת?"
    When pick "{date}" from calendar of "תאריך חיסון כלבת אחרון"
    When search for "SEARCH_VALUE" in "הכלב רשום ברשות המקומית"
    When pick "{date}" from calendar of "תאריך מסירת הכלב"
    When click on "שמור" button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "המשך" button
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "צילום תעודת זהות מוסר הכלב"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "צילום תעודת זהות מקבל הכלב"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "רישיון אחרון להחזקת כלב"
    When Upload ""C:\Users\LENOVO\Desktop\Screenshot 2023-02-26 110309.png"" file in "אחר"
    When check the box of "הנני מצהיר/ה בזה כי החל מתאריך"
    When check the box of "הנני מצהיר/ה בזה כי אני מקבל על עצמי"
    When check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים."
    When click on "שמור" button
#   When check email inbox
#   When click on link in email
#   When enter bin password
#   Then Validate you are in correct step
    When click on "שלח" button












