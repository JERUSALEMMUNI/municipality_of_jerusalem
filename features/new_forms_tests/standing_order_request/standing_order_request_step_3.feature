Feature: StandingOrderRequest - scenarios step 3

  - Form name: בקשה להצטרפות להסדר הוראת קבע ארנונה/ חינוך
  - Feature file name: standing_order_request
  - Form link: https://jeronlineforms.jerusalem.muni.il/StandingOrderRequest
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "StandingOrderRequest" form and reach step "תצהיר ושליחה"


  Scenario: TC_STANDINGORDEREQ_07 - Checking "personal details" fields with correct details
#    When click on "שמור" button
#    When click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When check the box of "הריני מצהיר/ה בזה כי כל"
#    When check the captcha box of "אני מודע/ת ומסכים/ה לכך"
    When clear fields
