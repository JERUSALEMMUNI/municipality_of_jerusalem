Feature: Basic Test for contractoremprights Form Page


  Scenario: dropdown search with checkbox
    Given Navigate to "ContractorEmpRights" form
    When select all options of " נושא התלונה:"
#    When deselect all options of " נושא התלונה:"
#    When pick "צבירת ימי מחלה" from " נושא התלונה:"
#    When pick "הלנת שכר" from " נושא התלונה:"
#    When pick "עמידה בהוראות תיקון 24 לחוק הגנת השכר" from " נושא התלונה:"
#    When pick "עמידה בהוראות תיקון 24 לחוק הגנת השכר" from " נושא התלונה:"
#    When pick "צבירת ימי מחלה" from " נושא התלונה:"
    Then validate if all checked options appeared in selection order under " נושא התלונה:"
#    When deselect option "צבירת ימי מחלה" from " נושא התלונה:"
    Then validate option "צבירת ימי מחלה" from " נושא התלונה:" list is checked
#    When I entered "058-8078687" in " מספר טלפון נייד:"