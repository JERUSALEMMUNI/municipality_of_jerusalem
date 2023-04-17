Feature: DirectContactToAssessment form - scenarios step 2

  - Form name: פנייה ישירה לאגף שומה וגבייה
  - Feature file name: Direct_Contact_To_Assessment_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/DirectContactToAssessment
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "DirectContactToAssessment" form and reach step "פרטי בקשה"

  Scenario: CONTACTASSESSM_02 הזנת ערכים תקינים בשדות "פרטי בקשה" פניה חוזרת לגורם יחיד בעירייה
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When write a valid value "ירושלים" in "עיר"
    When write a valid value "א טור" in "רחוב"
    When write a valid number "2" in "מספר בית"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "תוכן הפניה"
    When choose "כן" from "האם פנית בנושא זה בעבר?"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "אנא פרט..."
    When choose "לא" from "האם פנית במקביל לגורם נוסף בעירייה?"

    #When click on "שמור" button
    #When click on "שמור טיוטה" button tyota
    #When 1st wait for "email" that contains pin code and link
    #When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #When click on "email" option
    #When 3rd wait for second "email" to get "קוד האימות" index "2"
    #When 4th close all tabs "email" at index "2"
    #Then 5th Validate if went back to expected "email" form
    When click on "המשך"
    Then validate current step name is "צרופות"
    When click on "חזור"
    Then Validate current step name is "פרטי בקשה"


  Scenario: CONTACTASSESSM_03 הזנת ערכים תקינים בשדות "פרטי בקשה" פניה ראשונה למספר גורמים בעירייה
    When write a valid value "2432434323" in "מס' חשבון / נכס"
    When write a valid value "ירושלים" in "עיר"
    When write a valid value "א טור" in "רחוב"
    When write a valid number "2" in "מספר בית"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "תוכן הפניה"
    When choose "לא" from "האם פנית בנושא זה בעבר?"
    When choose "כן" from "האם פנית במקביל לגורם נוסף בעירייה?"
    When write a valid value "גכדגדגדגדגדגדגדגדגדגדגדגגג" in textarea of "אנא פרט..."

    #When click on "שמור" button
    #When click on "שמור טיוטה" button tyota
    #When 1st wait for "email" that contains pin code and link
    #When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #When click on "email" option
    #When 3rd wait for second "email" to get "קוד האימות" index "2"
    #When 4th close all tabs "email" at index "2"
    #Then 5th Validate if went back to expected "email" form
    When click on "המשך"
    Then validate current step name is "צרופות"
    When click on "חזור"
    Then Validate current step name is "פרטי בקשה"

  Scenario: CONTACTASSESSM_06 הזנת ערכים שגוים בשדות "פרטי בקשה"
    When write an invalid value "asdasd" in "מס' חשבון / נכס"
    Then validate "מס' חשבון / נכס" error is "יש להזין ספרות בלבד"
    When write an invalid value "דדד" in "מס' חשבון / נכס"
    Then validate "מס' חשבון / נכס" error is "יש להזין ספרות בלבד"
    When write an invalid value "111" in "מס' חשבון / נכס"
    Then validate "מס' חשבון / נכס" error is "יש להשלים מספר חשבון/נכס"

    When write an invalid value "aaaa" in "עיר"
    When write an invalid value "aaaa" in "רחוב"
    When write a number "1234567" in "מספר בית"
    Then validate if "מספר בית" value is "12345"
    When write a number "543jhj323kk26" in "מספר בית"
    Then validate if "מספר בית" value is "54332"
    When write a number "543דגכ323ככ26" in "מספר בית"
    Then validate if "מספר בית" value is "54326"

    When write an invalid value "abcdefghijklmnop" in textarea of "תוכן הפניה"
    Then validate "תוכן הפניה" has error "שפת הקלט לא תקינה"
    When choose "כן" from "האם פנית בנושא זה בעבר?"
    When choose "כן" from "האם פנית במקביל לגורם נוסף בעירייה?"
    When write an invalid value "abcdefghijklmnop" in textarea of "אנא פרט 2"
    Then validate "תוכן הפניה" has error "שפת הקלט לא תקינה"


    #When click on "שמור" button
    #When click on "שמור טיוטה" button tyota
    #When 1st wait for "email" that contains pin code and link
    #When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
    #When click on "email" option
    #When 3rd wait for second "email" to get "קוד האימות" index "2"
    #When 4th close all tabs "email" at index "2"
    #Then 5th Validate if went back to expected "email" form
    When click on "המשך"
    Then validate current step name is "פרטי בקשה"


