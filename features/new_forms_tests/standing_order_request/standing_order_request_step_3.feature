@suhaib
Feature: StandingOrderRequest - scenarios step 3

  - Form name: בקשה להצטרפות להסדר הוראת קבע ארנונה/ חינוך
  - Feature file name: standing_order_request
  - Form link: https://jeronlineforms.jerusalem.muni.il/StandingOrderRequest
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory of (טלפון קווי)

  Background: Background Scenario
    Given Navigate to "StandingOrderRequest" form and reach step "פרטי תשלום"
    When click on email option
    When 1st wait for email that contains pin code and link
    When set pin code

  Scenario: TC_STANDINGORDEREQ_07 - Checking "personal details" fields with correct details
    When write a valid value "2121212121" in "חשבון / נכס"
    When write a valid value "ש" in "כתובת נכס"
    When write a valid number "1" in "בית"
    When choose "לא" from "בעל/ת החשבון שונה ממגיש הבקשה"
    When pick "ארנונה (792)" from "קוד מוטב להקמת ההרשאה"
    When goto "9 - בנק הדואר" from "בנק"
    When goto "1-סניף ראשי" from "סניף"
    When write a valid number "19586" in "מספר חשבון"
    When pick "10" from "יום גביה חודשי"
    When Upload "png_to_upload.png" file in "צילום תעודת זהות + ספח"
    When Upload "png_to_upload.png" file in "אישור הרשאה לחיוב חשבון"
    When Upload "png_to_upload.png" file in "אחר"
    When click on "המשך" button
    When check the box of "הריני מצהיר/ה בזה כי כל"
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך"


