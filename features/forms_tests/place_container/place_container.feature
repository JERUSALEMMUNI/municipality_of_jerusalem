#@in_dev
@mytest
Feature: PlaceContainer form - scenarios step 1

  - Form name: בקשה להנחת מכולה אגף אכיפה ושיטור
  - Feature file name: place_container.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PlaceContainer
  - Number of Pages is : 2, We are at Page: 1
  - All fields are mandatory
  - Page Information:
  -

  Scenario: TC_CONTAINER_01  - Click on "מידע" button after form opened
    Given Navigate to "PlaceContainer" form
    When from header click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X Button
    Then validate information dialog is closed


  Scenario: TC_CONTAINER_02 - Click on "שמור" button before entering the required details
    Given Navigate to "PlaceContainer" form
    When from header click on "שמור" icon
    Then an error message appeared with the following description: "חובה למלא מספר זהות, שם פרטי, שם משפחה, כתובת מייל תקינה ופלאפון ליצירת קשר בפרטי מגיש הבקשה"
    When close error message


#  @in_dev
#  @pdf
#  Scenario: TC_CONTAINER_03 - Click on "הדפס" button before entering the required details
#    Given Navigate to "PlaceContainer" form
#    When from header click on "הדפס" icon
#    When click on cancel button
#    When from header click on "הדפס" icon
#    When click on print button
#    # alias
#    When I save the document as "new_file1"
#    Then I compare "new_file1" with reference pdf file "PlaceContainer_empty_form"


  Scenario: TC_CONTAINER_04 - Enter a correct ID number
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"


  Scenario: TC_CONTAINER_05 - Enter a incorrect ID number
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write an invalid value "1111" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"


  Scenario: TC_CONTAINER_06 - Enter correct BN number
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"


  Scenario: TC_CONTAINER_07 - Enter incorrect BN number
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write an invalid value "1111" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"


  Scenario: TC_CONTAINER_08 - Enter incorrect First Name
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write an invalid value "wisam" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"


  Scenario: TC_CONTAINER_09 - Enter incorrect Last Name
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write an invalid value "okkeh" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"


  Scenario: TC_CONTAINER_10 - Enter incorrect mobile number
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-407587!" as invalid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"


  Scenario: TC_CONTAINER_11 -Enter incorrect email
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write an invalid value "w.w" in "אימייל:"


  Scenario: TC_CONTAINER_12 - Enter a valid address
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    And search and pick "א טברי" in search field "רחוב"
    And  from parent "פרטי הצבת המכולה:" write a valid value "1" in "מספר בית"
    And write a valid value "3" in "מספר דירה"

#  @wisam
  Scenario: TC_CONTAINER_13 - Enter an invalid address
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    And search and pick "אברבנאל" in search field "רחוב"
    And search invalid value and pick "אברבנאל" in search field "רחוב"
    And  from parent "כתובת מקום העבודה:" write an invalid value "ww" in "מספר בית"
    And write an invalid value "ww" in "מספר דירה"
    When I wait for "10" seconds

  @wisam
  Scenario: TC_CONTAINER_14 - Enter a valid container placement details
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
#    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And fill prefix "052" as valid value in "מספר טלפון נייד"
    And fill number "4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    And search and pick "א טברי" in search field "רחוב"
    And  from parent "כתובת מקום העבודה:" write a valid value "111" in "מספר בית"
    And write a valid value "3" in "מספר דירה"
    And search and pick "א טברי" in search field "רחוב הצבת המכולה:"
    And  from parent "פרטי הצבת המכולה:" write a valid value "111" in "מספר בית"
    #ToDO: this filed has another xpath with div befor the input like the phone field
    And write a valid value "1" in "מספר מכולה:"
    And pick date and time "8/8/2024" and "16:19" in "מתאריך:"
    And pick date and time "9/8/2024" and "12:19" in "עד תאריך:"
    And pick "תו אזורי" from "סוג החניה:"
    #ToDO: this filed has another xpath with div befor the input like the phone field
    And write a valid value "א טברי" in "כתובת האתר לשפיכת הפסולת"
#    And click on "שמור" icon
#    When 1st get pin code from email validation
#    When 2nd click on link and fill email "@TEMP_EMAIL_ADDRESS" pin code
#    When 3rd wait for second email to get "קוד האימות"
#    When 4th close all tabs
#    Then 5th Validate if went back to expected form
#    Then validate current step is "פרטי העובד/ת, המעסיק והתלונה"



#------------------------------------------------------------------------------------------------
  @header
  Scenario: Header elements test
    Given Navigate to "PlaceContainer" form
    Then validate municipality logo is displayed in old header
    And validate old header title is default
    And validate form Name in old header is "בקשה להנחת מכולה אגף אכיפה ושיטור"
    And validate form explanation in old header contains "קבלן בעל רישיון עסק המעוניין להציב מכולה עליו לדווח לאגף אכיפה ושיטור עירוני עד לאישור הצבתה בפועל"
    And validate form explanation in old header exists and contains at least "20" chars

  @footer
  Scenario: footer check (ContractorEmpRights)
    Given Navigate to "PlaceContainer" form
    Then validate Facebook Logo is displayed in footer
    And validate Instagram Logo is displayed in footer
    And validate Twitter Logo is displayed in footer
    And validate facebook url in footer
    And Back to previous page
    And validate instagram url in footer
    And Back to previous page
    And validate twitter url in footer
    And Back to previous page
    And validate footer follow us is displayed
    And validate footer follow us text is "עקבו אחרינו"
    And validate footer follow us text is default as "עקבו אחרינו"
    And validate footer call us is displayed
    And validate footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    And validate footer call us text is default as "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א - ה בין 08:30-16:00"
