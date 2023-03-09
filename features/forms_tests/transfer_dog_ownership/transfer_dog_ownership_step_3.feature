@in_dev
Feature: TransferDogOwnership form - scenarios step 3

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory


  Background: Background Scenario
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דרןח" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דגעחוח" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" pick "א טור" from "רחוב"
    And  from parent "פרטי מגיש הבקשה" write a valid value "2" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "קכקק" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "דגככגדק" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי המוסר" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" write a valid value "ירושלים" in "יישוב"
    And  from parent "פרטי המוסר" write a valid value "א טור" in "רחוב"
    And  from parent "פרטי המוסר" write a valid value "2" in "מספר בית"
    And click on "המשך" button
    When write a valid value "ביסקו" in "שם הכלב"
    And write a valid value "דשגדק" in "גזע"
    And choose "זכר" from "מין"
    And write a valid value "לבן" in "צבע"
    And write a valid value "982009104328548" in "מספר שבב"
    And pick "2020" from "שנת לידה"
    And choose "כן" from "הכלב מחוסן כנגד מחלת הכלבת?"
    And pick "1/2/2021" from calendar of "תאריך חיסון כלבת אחרון"
    And search for "אבו סריחאן )שבט(" in "הכלב רשום ברשות המקומית"
    And pick "3/2/2020" from calendar of "תאריך מסירת הכלב"
    When click on "המשך" Button


  Scenario: TC_DOGOWNER_07 - טעינת קבצים בפורמט מאושר
    Then validate current step is "צרופות והצהרה"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות מוסר הכלב"
    And Upload "word_to_upload.docx" file in "צילום תעודת זהות מקבל הכלב"
    And Upload "excel_to_upload.xlsx" file in "רישיון אחרון להחזקת כלב"
    And Upload "png_to_upload.png" file in "אחר"
    And check the box of "הנני מצהיר/ה בזה כי החל מתאריך"
    And check the box of "הנני מצהיר/ה בזה כי אני מקבל על עצמי"
    And check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים."
    And click on "שמור" icon
    When 1st get pin code from email validation
    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
    When 3rd wait for second email to get "קוד האימות"
    When 4th close all tabs
    Then 5th Validate if went back to expected form
    And validate current step is "פרטי מגיש הבקשה המקבל והמוסר"













