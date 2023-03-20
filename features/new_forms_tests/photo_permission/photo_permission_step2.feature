
Feature: PhotoPermission form - scenarios step 2

  - Form name: בקשה לקבלת היתר צילומים בירושלים
  - Feature file name: photo_permission.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PhotoPermission
  - Number of Pages is : 4, We are at step: 2
  - All fields are mandatory

  Background:
    Given  Navigate to "PhotoPermission" form and reach step "פרטי ההפקה"
#  @in_dev
  @abd
  Scenario: TC_PHOTOPERMIT_05 - Checking "production details" fields
    Given Navigate to "PhotoPermission" form
    When write a valid value "ככגדכגד" in "שם חברת ההפקה"
    And fill "058-8078687" as valid value in "טלפון חברת ההפקה"
    And write a valid value "ככגדכגד" in "כתובת חברת ההפקה"
    And write a valid value "ככגדכגד" in "שם מתאם ההפקה"
    And fill "050-8078687" as valid value in "טלפון מתאם ההפקה"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא''ל"
    When write a valid value "ככגדכגד" in "שם הגורם עבורו מתבצע הצילום"
    When pick "אחר" from "סוג המדיה"
    When write a valid value "דיכחןגלכח" in "פירוט"
    When pick "קליפ" from "סוג המדיה"
    When write a valid value "גחדךגלכןקךגלכןגךגחלכןכךגלכןכםגךכלכ" in "תיאור הצילום"
    When clear fields












