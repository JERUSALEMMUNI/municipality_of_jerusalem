
Feature: FreedomInfo form - scenarios step 1

  - Form name: חופש המידע
  - Feature file name: freedom_info_step_1.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/FreedomInfo
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory expect of (טלפון קווי,יישוב,רחוב,מספר בית, מיקוד)
#  @in_dev
  Scenario: TC_FREEDOMINFO_01 - Checking "Presenter details" fields with correct details
    Given Navigate to "FreedomInfo" form
    When write a valid value "סוהייב" in "שם פרטי"
    When write a valid value "אבו גנאם" in "שם משפחה"
    When pick "ת.ז." from "סוג זיהוי"
    When write a valid value "332796184" in "מספר ת.ז."
    When fill "058-8078687" as valid value in "טלפון נייד"
    When fill "02-8078687" as valid value in "טלפון קווי"
    When write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    When write a valid value "4444" in "מספר בית"
    When write a valid value "11111" in "מיקוד"
    When search valid value and pick "ירוש" in search field "יישוב"
    #todo: choose element not in list
    When search valid value and pick "א טור" in search field "רחוב"

#    When click on "המשך" button
#    When write a valid number "0000" in "email"
#    Then validate current step name is "פרטי ההפקה"
#    When close "email" dialog
    When clear fields