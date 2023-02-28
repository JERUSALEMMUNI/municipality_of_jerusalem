Feature: Basic Test for contractoremprights Form Page

Scenario:test first name empty and invalid
    Given I navigate to "ContractorEmpRights" page
    When pick "27/10/2019" from calendar of "תאריך לידה:"
    When choose "כן" from "האם היתה"
    When click on "המשך" button
#    And I wait for "6" seconds
#    Then validate "האם היתה" has error "יש לסמן האם היתה פניה למעסיק קודם הגשת תלונה זו"
    Then validate chosen choice of "האם היתה" is "כן"
    Then validate picked date of "תאריך לידה:" is "27/10/2019"
