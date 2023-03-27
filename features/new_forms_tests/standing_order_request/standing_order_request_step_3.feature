Feature: StandingOrderRequest - scenarios step 3

  - Form name: בקשה להצטרפות להסדר הוראת קבע ארנונה/ חינוך
  - Feature file name: standing_order_request
  - Form link: https://jeronlineforms.jerusalem.muni.il/StandingOrderRequest
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "StandingOrderRequest" form and reach step "תצהיר ושליחה"


  Scenario: TC_STANDINGORDEREQ_7 - Checking "personal details" fields with correct details
    When check the box of "הריני מצהיר/ה בזה כי כל"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך"
