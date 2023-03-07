@in_dev
Feature: TransferDogOwnership form - CheckList scenarios step 1

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at Page: 1
  - All fields are mandatory except (.ספר דירה, ת.ד )

  Scenario: TC_DOGOWNER_02 - הזנת ערכים שגויים לשדות מקבל הכלב
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "one" in "תעודת זהות"
    And write an invalid value "hello" in "שם פרטי"
    And write an invalid value "there" in "שם משפחה"
    And write an invalid value "ertydfg" in "אימייל"
    And write an invalid value "sdasdwטו" in "מספר טלפון נייד"
    And write an invalid value "سيليسبيس" in "רחוב"
    And write an invalid value "شسيشسي" in "מספר בית"
    And write an invalid value "sdf" in "מספר דירה"
    And write an invalid value "sdfsdfse" in "תד"


  Scenario: TC_DOGOWNER_03 - הזנת ערכים שגויים לשדות מקבל הכלב
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "one" in "תעודת זהות"
    And write an invalid value "hello" in "שם פרטי"
    And write an invalid value "there" in "שם משפחה"
    And write an invalid value "ertydfg" in "אימייל"
    And write an invalid value "sdasdwטו" in "מספר טלפון נייד"
    And write an invalid value "سيليسبيس" in "רחוב"
    And write an invalid value "شسيشسي" in "מספר בית"
    And write an invalid value "sdf" in "מספר דירה"
    And write an invalid value "sdfsdfse" in "תד"
    And write a valid value "332796184" in "תעודת זהות"
    And write a valid value "שמעון" in "שם פרטי"
    And write a valid value "שדככק" in "שם משפחה"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And write a valid value "052-8767876" in "מספר טלפון נייד"
    And write a valid value "ירושלים" in "יישוב"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "1" in "מספר בית"
    And write a valid value "4" in "מספר דירה"
    And write a valid value "3233" in "תד"
    And click on "שמור" icon
    Then validate new email received "@TEMP_EMAIL_ADDRESS"
    And validate current step is "פרטי מגיש הבקשה המקבל והמוסר"
#    When click on "המשך" Button



  Scenario:TC_DOGOWNER_04 - הזנת ערכים שגויים לשדות מקבל הכלב
    Given Navigate to "TransferDogOwnership" form
    When write an invalid value "one" in "תעודת זהות"
    And write an invalid value "hello" in "שם פרטי"
    And write an invalid value "there" in "שם משפחה"
    And write an invalid value "ertydfg" in "אימייל"
    And write an invalid value "sdasdwטו" in "מספר טלפון נייד"
    And write an invalid value "سيليسبيس" in "רחוב"
    And write an invalid value "شسيشسي" in "מספר בית"
    And write an invalid value "sdf" in "מספר דירה"
    And write an invalid value "sdfsdfse" in "תד"
    When write an invalid value "asdas" in "תעודת זהות"
    And write an invalid value "כעיחל$%6" in "שם פרטי"
    And write an invalid value "بلاتنم" in "שם משפחה"
    And write an invalid value "قيفغهتخنحم" in "אימייל"
    And write an invalid value "قيبفغلاعهتtyu" in "מספר טלפון נייד"
    And write an invalid value "rtyui5678^" in "רחוב"
    And write an invalid value "tyu" in "מספר בית"
    And write an invalid value "dfd" in "מספר דירה"
    And write an invalid value "asdasd" in "תד"


  Scenario:TC_DOGOWNER_05 - הזנת ערכים תקינים לשדות  הכלב
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "332796184" in "תעודת זהות"
    And write a valid value "דרןח" in "שם פרטי"
    And write a valid value "דגעחוח" in "שם משפחה"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "3454" in "תד"
    And write a valid value "קכקק" in "שם פרטי"
    And write a valid value "דגככגדק" in "שם משפחה"
    And write a valid value "332796184" in "תעודת זהות"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "ירושלים" in "יישוב"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "4" in "מספר דירה"
    And write a valid value "3233" in "תד"
    #And click on "המשך" button
#    And write a valid value "ביסקו" in "שם הכלב"
#    And write a valid value "דשגדק" in "גזע"
#    And choose "זכר" from "מין"
#    And write a valid value "לבן" in "צבע"
#    And write a valid value "982009104328548" in "מספר שבב"
##    check if displayed "לחץ למידע חיפוש כלב" icon
#    And pick "2020" from "שנת לידה"
#    And choose "כן" from "הכלב מחוסן כנגד מחלת הכלבת?"
#    And pick "1/2/2021" from calendar of "תאריך חיסון כלבת אחרון"
#    And search for "אבו סריחאן )שבט(" in "הכלב רשום ברשות המקומית"
#    And pick "3/2/2020" from calendar of "תאריך מסירת הכלב"
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    And validate current step is "פרטי מגיש הבקשה המקבל והמוסר"
##    When click on "המשך" Button



  Scenario: TC_DOGOWNER_06 - הזנת ערכים תקינים לשדות  הכלב
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "332796184" in "תעודת זהות"
    And write a valid value "דרןח" in "שם פרטי"
    And write a valid value "דגעחוח" in "שם משפחה"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "3454" in "תד"
    And write a valid value "קכקק" in "שם פרטי"
    And write a valid value "דגככגדק" in "שם משפחה"
    And write a valid value "332796184" in "תעודת זהות"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "ירושלים" in "יישוב"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "4" in "מספר דירה"
    And write a valid value "3233" in "תד"
#    And click on "המשך" button
#    And write an invalid value "قفغعه" in "שם הכלב"
#    And write an invalid value "يسبسtyu" in "גזע"
#    And choose "זכר" from "מין"
#    And write an invalid value "يبلات" in "צבע"
#    And write an invalid value "ثقفغعة" in "מספר שבב"
#    And search for "شسيشيص" in "הכלב רשום ברשות המקומית"
#

  Scenario: TC_DOGOWNER_07 - טעינת קבצים בפורמט מאושר
    Given Navigate to "TransferDogOwnership" form
    When write a valid value "332796184" in "תעודת זהות"
    And write a valid value "דרןח" in "שם פרטי"
    And write a valid value "דגעחוח" in "שם משפחה"
    And write a valid value "asd@wwf.com" in "אימייל"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "1" in "מספר דירה"
    And write a valid value "3454" in "תד"
    And write a valid value "קכקק" in "שם פרטי"
    And write a valid value "דגככגדק" in "שם משפחה"
    And write a valid value "332796184" in "תעודת זהות"
    And write a valid value "052-3366487" in "מספר טלפון נייד"
    And write a valid value "ירושלים" in "יישוב"
    And write a valid value "א טור" in "רחוב"
    And write a valid value "2" in "מספר בית"
    And write a valid value "4" in "מספר דירה"
    And write a valid value "3233" in "תד"
#    And click on "המשך" button
#    And write a valid value "ביסקו" in "שם הכלב"
#    And write a valid value "דשגדק" in "גזע"
#    And choose "זכר" from "מין"
#    And write a valid value "לבן" in "צבע"
#    And write a valid value "982009104328548" in "מספר שבב"
#    And pick "2020" from "שנת לידה"
#    And choose "כן" from "הכלב מחוסן כנגד מחלת הכלבת?"
#    And pick "1/2/2021" from calendar of "תאריך חיסון כלבת אחרון"
#    And search for "אבו סריחאן )שבט(" in "הכלב רשום ברשות המקומית"
#    And pick "3/2/2020" from calendar of "תאריך מסירת הכלב"
#    And click on "המשך" Button
#    And Upload "png_to_upload.png" file in "צילום תעודת זהות מוסר הכלב"
#    And Upload "word_to_upload.docx" file in "צילום תעודת זהות מקבל הכלב"
#    And Upload "excel_to_upload.xlsx" file in "רישיון אחרון להחזקת כלב"
#    And Upload "png_to_upload.png" file in "אחר"
#    And check the box of "הנני מצהיר/ה בזה כי החל מתאריך"
#    And check the box of "הנני מצהיר/ה בזה כי אני מקבל על עצמי"
#    And check the box of "הנני מצהיר/ה בזה כי כל הפרטים בטופס הבקשה המקוון נכונים, שלמים ומדוייקים."
#    And click on "שמור" icon
#    Then validate new email received "@TEMP_EMAIL_ADDRESS"
#    And validate current step is "פרטי מגיש הבקשה המקבל והמוסר"
##    When click on "שלח" button












