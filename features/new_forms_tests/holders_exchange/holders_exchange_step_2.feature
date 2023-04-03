Feature: HoldersExchange form step 2

  - Form name: חילופי מחזיקים
  - Feature file name: holders_exchange.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/HoldersExchange
  - Number of Pages is : 5, we are in step 2
  - All fields are mandatory

  Background: Background Scenario
    Given Navigate to "HoldersExchange" form and reach step "פרטי נכס"

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_02 הזנת ערכים תקינים בשדות "פרטי נכס" סוג הנכס: למיגורים ומגיש בקשה: בעל הנכס
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "23432" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "בעל הנכס" from "מי מגיש הבקשה?"
    And choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_03 הזנת ערכים תקינים בשדות "פרטי נכס" סוג הנכס: למיגורים, מגיש בקשה: שוכר
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "23432" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "שוכר" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "רישום שוכר חדש" from "מהי הפעולה המבוקשת?"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_04 הזנת ערכים תקינים בשדות "פרטי נכס" סוג הנכס: למיגורים, מגיש בקשה: יורש
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "23432" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "יורש" from "מי מגיש הבקשה?"
    And choose "הודעה על שוכר שעזב" from "מהי הפעולה המבוקשת?"
    And Upload a valid "gif_to_upload.gif" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    When Upload a valid "png_to_upload.png" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And Upload a valid "jpg_pic_to_upload.jpg" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate name of file "1" is "gif_to_upload.gif" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate size of file "1" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות" in accepted
    Then validate name of file "2" is "png_to_upload.png" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate size of file "2" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות" in accepted
    Then validate name of file "3" is "jpg_pic_to_upload.jpg" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate size of file "3" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות" in accepted
    When delete file by name "gif_to_upload.gif" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And delete file by name "png_to_upload.png" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And delete file by name "jpg_pic_to_upload.jpg" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And Upload a valid "pdf_file_to_upload.pdf" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And Upload a valid "pdf_file_to_upload.pdf" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    When Upload a valid "jpeg_to_upload.jpeg" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And Upload a valid "bmp_to_upload.bmp" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate name of file "1" is "pdf_file_to_upload.pdf" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate size of file "1" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות" in accepted
    Then validate name of file "2" is "jpeg_to_upload.jpeg" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate size of file "2" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות" in accepted
    Then validate name of file "3" is "bmp_to_upload.bmp" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then validate size of file "3" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות" in accepted
    When delete file by name "pdf_file_to_upload.pdf" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And delete file by name "jpeg_to_upload.jpeg" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And delete file by name "bmp_to_upload.bmp" in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    And Upload a valid "gif_to_upload.gif" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_05 הזנת ערכים תקינים בשדות "פרטי נכס" סוג הנכס: למיגורים, מגיש בקשה: מיפה כח
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
    When write a valid value "3345434453" in "חשבון תושב בארנונה"
    When search valid value and pick "א טור" in search field "רחוב"
    And write a valid number "23432" in "בית"
    And choose "למגורים" from "סוג הנכס"
    And choose "מיופה כח" from "מי מגיש הבקשה?"
    And write a valid value "דני" in "שם פרטי"
    And write a valid value "גלעד" in "שם משפחה"
    And pick "ת.ז." from "סוג זיהוי"
    And write a valid value "332796184" in "מספר ת.ז."
    And fill "058-8078687" as valid value in "טלפון נייד"
    And fill "02-8078687" as valid value in "טלפון קווי"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "דוא"ל"
    And choose "רישום בעלים אחרים (הנכס נמכר)" from "מהי הפעולה המבוקשת?"
    And Upload a valid "png_to_upload.png" file in "יפוי כח"
#    When click on "שמור" button
#    And click on "שמור טיוטה" button tyota
#    When 1st wait for "email" that contains pin code and link
#    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "2"
#    When click on "email" option
#    When 3rd wait for second "email" to get "קוד האימות" index "2"
#    When 4th close all tabs "email" at index "2"
#    Then 5th Validate if went back to expected "email" form
#    And click on "המשך" button
    When clear fields

  @Checked_By_Firas_and_Darweesh
  Scenario: TC_HOLDERSEXCH_11 הזנת ערכים שגוים בשדות "פרטי נכס"
    #todo: #todo: sofiya error message for the short number is different from the web  יש להשלים מספר חשבון/נכס
    When write an invalid value "3345sd45r" in "חשבון תושב בארנונה"
    Then check if "חשבון תושב בארנונה" error is "יש להזין ספרות בלבד"
    When write an invalid value "332" in "חשבון תושב בארנונה"
    Then check if "חשבון תושב בארנונה" error is "שדה לא תקין"
    When search invalid value and pick "asdads" in search field "רחוב"
    Then check if "רחוב" no results found appeared
    When write an invalid number "sda" in "בית"
    Then check if "בית" error is "שדה חובה"
#    Then validate if "בית" number is "2"
    When choose "למגורים" from "סוג הנכס"
    And choose "שוכר" from "מי מגיש הבקשה?"
    And write an invalid value "dsdf" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "sdf" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    And write an invalid value "sdfsdf" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-שדגדש" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-sdfdsf" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-233" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-232" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill "02-שדגדש" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-sdfdsf" as invalid value in "טלפון קווי"
    When write an invalid value "sdfsdf" in "דוא"ל"
    #todo: email message
    Then check if "דוא"ל" error is "שדה לא תקין"
    #-------------------------------------------------------------------------------------------------------------------
    When choose "יורש" from "מי מגיש הבקשה?"
    And Upload an invalid "10MB_file_to_upload.pdf" file in "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות"
    Then check if "צו ירושה / צו קיום צוואה / מסמך אחר המעיד על בעלות" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
   #--------------------------------------------------------------------------------------------------------------------
    When choose "מיופה כח" from "מי מגיש הבקשה?"
    And write an invalid value "dsdf" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When write an invalid value "sdf" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    When pick "ת.ז." from "סוג זיהוי"
    And write an invalid value "sdfsdf" in "מספר ת.ז."
    Then check if "מספר ת.ז." error is "מספר זהות לא תקין"
    When fill "050-שדגדש" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-sdfdsf" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להזין ספרות בלבד"
    When fill "050-233" as invalid value in "טלפון נייד"
    Then check if "טלפון נייד" error is "יש להשלים את הספרות החסרות"
    When fill "02-232" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להשלים את הספרות החסרות"
    When fill "02-שדגדש" as invalid value in "טלפון קווי"
    Then check if "טלפון קווי" error is "יש להזין ספרות בלבד"
    When fill "02-sdfdsf" as invalid value in "טלפון קווי"
    When write an invalid value "sdfsdf" in "דוא"ל"
    Then check if "דוא"ל" error is "שדה לא תקין"
    #todo: email message
    When Upload an invalid "10MB_file_to_upload.pdf" file in "יפוי כח"
    Then check if "יפוי כח" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"
    When clear fields





