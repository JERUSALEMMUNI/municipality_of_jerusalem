
Feature: PhotoPermission form - scenarios step 2

  - Form name: בקשה לקבלת היתר צילומים בירושלים
  - Feature file name: photo_permission_step2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 2
  - All fields are mandatory

  Background:
    Given  Navigate to "PhotoPermission" form and reach step "פרטי ההפקה"

  Scenario: TC_PHOTOPERMIT_02 - Checking "production details" fields with correct details
    Given Navigate to "PhotoPermission" form
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "ככגדכגד" in "שם חברת ההפקה"
    And fill "058-8078687" as valid value in "טלפון חברת ההפקה"
    And write a valid value "ככגדכגד" in "כתובת חברת ההפקה"
    And write a valid value "ככגדכגד" in "שם מתאם ההפקה"
    And fill "050-8078687" as valid value in "טלפון מתאם ההפקה"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא''ל"
    When write a valid value "ככגדכגד" in "שם הגורם עבורו מתבצע הצילום"
    When pick "סרט סטודנטים" from "סוג המדיה"
    When write a valid value "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ" in "תיאור הצילום"
    When click on "שמור" button
    And click on "שמור טיוטה" button tyota
    When 1st wait for "email" that contains pin code and link
    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    When click on "email" option
    When 3rd wait for second "email" to get "קוד האימות" index "2"
    When 4th close all tabs "email" at index "2"
    Then 5th Validate if went back to expected "email" form
    When click on "המשך" button

#    When clear fields

  @test7
  Scenario: TC_PHOTOPERMIT_07 - Checking "production details" fields with invalid details
    Given Navigate to "PhotoPermission" form
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write an invalid value "dddd" in "שם חברת ההפקה"
    Then check if "שם חברת ההפקה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "876543" in "שם חברת ההפקה"
    Then check if "שם חברת ההפקה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When fill "058-807868" as invalid value in "טלפון חברת ההפקה"
    Then check if "טלפון חברת ההפקה" error is "יש להשלים את הספרות החסרות"
    When write an invalid value "dddd" in "כתובת חברת ההפקה"
    Then check if "כתובת חברת ההפקה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "dddd" in "שם מתאם ההפקה"
    Then check if "שם מתאם ההפקה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "876543" in "שם מתאם ההפקה"
    Then check if "שם מתאם ההפקה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
     When fill "058-807868" as invalid value in "טלפון מתאם ההפקה"
    Then check if "טלפון מתאם ההפקה" error is "יש להשלים את הספרות החסרות"
     When write an invalid value "TEMP_EMAIL_ADDRESS" in "דוא''ל"
    Then check if "דוא''ל" error is "יש להשלים את כתובת דוא"ל"
    When write an invalid value "דגכגדכגדכ" in "דוא''ל"
    Then check if "דוא''ל" error is "הוזן ערך לא תקין, יש להזין דואר אלקטרוני"

    When write an invalid value "dddd" in "שם הגורם עבורו מתבצע הצילום"
    Then check if "שם הגורם עבורו מתבצע הצילום" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "876543" in "שם הגורם עבורו מתבצע הצילום"
    Then check if "שם הגורם עבורו מתבצע הצילום" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "אחר" from "סוג המדיה"
    When write an invalid value "dddd" in "פירוט"
    Then check if "פירוט" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "876543" in "פירוט"
    Then check if "פירוט" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write a valid value "גחדךגלכןק" in "תיאור הצילום"










