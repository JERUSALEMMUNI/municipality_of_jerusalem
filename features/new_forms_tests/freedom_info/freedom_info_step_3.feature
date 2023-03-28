Feature: FreedomInfo form - scenarios step 3

  - Form name: חופש המידע
  - Feature file name: freedom_info_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/FreedomInfo
  - Number of Pages is : 3, We are at step: 3
  - All fields are mandatory except for (מסמכים נוספים)

  Background:
    Given  Navigate to "FreedomInfo" form and reach step "פרטי הבקשה"
#  @in_dev
  Scenario: TC_FREEDOMINFO_07 - Checking "request details" fields with correct details
    When write a valid value "חלןלחכיעטאוחכיגמהנעירןםקךגצמבנסהשכדגקראטוןםפ" in "נושא הבקשה"
    When write a valid value "ראטוןלצ בגכעיחלוטכעמחחלןלחכיעטאוחכיגמהנעירןםקךגצמבנסהשכדגקראטוןםפ" in "תיאור הבקשה"
    When check the box of "הנני מתחייב לשאת באגרת איתור וטיפול באגרת הפקה"
    Then validate checkbox of "הנני מתחייב לשאת באגרת איתור וטיפול באגרת הפקה" is checked
    When check the captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע"
    Then validate captcha box of "אני מודע/ת ומסכים/ה לכך שהעירייה תהיה רשאית להשתמש במידע" is checked
    When clear fields


