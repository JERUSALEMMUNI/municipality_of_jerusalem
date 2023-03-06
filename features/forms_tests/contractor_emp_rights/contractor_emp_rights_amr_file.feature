#Feature: ContractorEmpRights form
#
#  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
#  - Feature file name: contractor_emp_rights.feature
#  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
#  - Number of Pages is : 2, We are at Page: 1
#  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)
#
#
#  Scenario: TC_EMPCOMP_01 - Click on "מידע" button after form opened
#    Given Navigate to "ContractorEmpRights" form
#    When click on "מידע" icon
#    Then validate information dialog is opened
#    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב"
#    And validate information dialog text in old header exists and contains at least "20" chars
#    When click on X Button
#    Then validate information dialog is closed
#
#  Scenario: TC_EMPCOMP_02 - Click on "שמור" button before entering the required details
#    Given Navigate to "ContractorEmpRights" form
#    When click on "שמור" icon
#    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
#    When I close error message
#
#  Scenario: TC_EMPCOMP_03 - Click on "הדפס" button before entering the required details
#    Given Navigate to "ContractorEmpRights" form
#    When click on "הדפס" icon
#    When I click on cancel button
#    When click on "הדפס" icon
#    When I click on print button
#    # alias
#    When I save the document as "new_file1"
#    When click on "הדפס" icon
#    When I click on print button
#    When I save the document as "new_file2"
#    Then both files "new_file1" and "new_file2" should be the same
#    Then I compare "new_file1" with reference pdf file "ContractorEmpRights_empty_form"
#    Then I compare "new_file2" with reference pdf file "ContractorEmpRights_empty_form"
#    When write a valid value "3327" in "מספר זהות"
#      And I wait for "5" seconds
#    #todo: scroll to element
#    When click on "הדפס" icon
#    When I click on print button
#    When I save the document as "new_file3"
#    #todo: compare context
#    Then both files "new_file1" and "new_file3" should be the same
#
##  Scenario: TC_EMPCOMP_04 - Enter a correct employee details
##    Given Navigate to "ContractorEmpRights" form
##    When click on "שמור" icon
##    Then an error message appeared with the following description: "עליך למלא מספר זהות, שם פרטי, שם משפחה, מספר טלפון נייד ואימייל"
##    When I close error message
#
#
#
