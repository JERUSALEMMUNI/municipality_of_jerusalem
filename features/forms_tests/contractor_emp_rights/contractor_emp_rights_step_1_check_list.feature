
Feature: ContractorEmpRights form - CheckList scenarios step 1

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Page: 1
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)


  Scenario: Explanation of the form (ContractorEmpRights)
    Given Navigate to "ContractorEmpRights" form
    When from header click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב, לזכות בעדכון לגבי מצב הטיפול בטופס"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X button
    Then validate information dialog is closed

  @footer
  Scenario: footer check (ContractorEmpRights)
    Given Navigate to "ContractorEmpRights" form
    Then validate Facebook Logo is displayed in footer
    And validate Instagram Logo is displayed in footer
    And validate Twitter Logo is displayed in footer
    And validate facebook url in footer
    And Back to previous page
    And validate instagram url in footer
    And Back to previous page
    And validate twitter url in footer
    And Back to previous page
    And validate footer follow us is displayed
    And validate footer follow us text is "עקבו אחרינו"
    And validate footer follow us text is default as "עקבו אחרינו"
    And validate footer call us is displayed
    And validate footer call us text is "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א'-ה' בין 08:30-16:00"
    And validate footer call us text is default as "לתמיכה טכנית צרו איתנו קשר בפנייה דיגיטלית או בטלפון 02-6295488 בימים א - ה בין 08:30-16:00"


  Scenario Outline:  Block fictitious IDs (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<id>" in "מספר זהות"
    Examples:
      | id        |
      | 332796184 |
      | 227638475 |


  Scenario Outline: Block fictitious IDs (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<id>" in "מספר זהות"
    Examples:
      | id                       |
      | 3327                     |
      | 000000018                |
      | 000000009                |
      | 111111111111111111111111 |
      | 3327!@#                  |
      | סנינה"אבו"פראס           |
      | פ                        |
      | פ)(_-.,ץשדג              |
      | سيبثبث                   |
      | sgrgsgr                  |
      | סקרכקדכ                  |


  Scenario Outline: ID error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<id>" in "מספר זהות"
    Then check if "מספר זהות" error is "מספר זהות לא תקין"
    Examples:
      | id                       |
      | 000000000                |
      | 3327                     |
      | 000000018                |
      | 000000009                |
      | 111111111111111111111111 |
      | 3327qwer                 |
      | 3327!@#                  |
      | סנינה"אבו"פראס           |
      | לגלגלגךלגךגךגךגךגךגתגגתג |
      | פ                        |
      | פ)(_-.,ץשדג              |
      | سيبثبث                   |
      | sgrgsgr                  |
      | סקרכקדכ                  |

  Scenario: ID error messages test: Empty input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value " " in "מספר זהות"
    Then check if "מספר זהות" error is "יש להזין מספר זהות"


  Scenario Outline: write only in Hebrew first name test (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name      |
      | פראס            |
      | פראס"/()'.,_-   |
      | גךגךגךגךגךגתגגת |
      | פ               |


  Scenario Outline: write only in Hebrew first name test (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name           |
      | sda                  |
      | يبلان                |
      | גכע#$%^&*            |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |


  Scenario Outline: First name error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<first_name>" in "שם פרטי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | first_name           |
      | sda                  |
      | يبلان                |
      | גכע#$%^&*            |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |


  Scenario: First name error messages test: Empty input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value " " in "שם פרטי"
    Then check if "שם פרטי" error is "יש למלא שם פרטי"


  Scenario Outline: write only in Hebrew last name test (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<last_name>" in "שם משפחה"
    Examples:
      | last_name          |
      | אבו סנינה          |
      | אבו סנינה"/()'.,_- |
      | גךגךגךגךגךגתגגת    |
      | פ                  |


  Scenario Outline: write only in Hebrew last name test (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<last_name>" in "שם משפחה"
    Examples:
      | last_name            |
      | يبلان                |
      | sda                  |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |
      | גכע#$%^&*            |


  Scenario Outline: Last name error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<last_name>" in "שם משפחה"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | last_name            |
      | يبلان                |
      | sda                  |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |
      | גכע#$%^&*            |


  Scenario: Last name error messages test: Empty input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value " " in "שם משפחה"
    Then check if "שם משפחה" error is "יש למלא שם משפחה"


  Scenario Outline: write only in English and numbers in email test (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<email>" in "אימייל"
    Examples:
      | email       |
      | asd@wwf.com |
      | as@b.com    |
      | as@b.com    |
      | a@b.com     |


  Scenario Outline: write only in English and numbers in email test (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<email>" in "אימייל"
    Examples:
      | email        |
      | بلا@لتيي.com |
      | כעי@.com     |
      | يبلان        |
      | fןכיبل@.com  |


  Scenario Outline: Email error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<email>" in "אימייל"
    Then check if "אימייל" error is "דוא''ל לא תקין"
    Examples:
      | email        |
      | بلا@لتيي.com |
      | כעי@.com     |
      | يبلان        |
      | fןכיبل@.com  |


  Scenario: Email error messages test: Empty input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value " " in "אימייל"
    Then check if "אימייל" error is "יש להזין כתובת אימייל"


  Scenario Outline: write only in Hebrew street test (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<street>" in "רחוב"
    Examples:
      | street          |
      | א טור           |
      | א טור"/()'.,_-  |
      | גךגךגךגךגךגתגגת |
      | ככגךגדחדלגמג    |


  Scenario Outline: write only in Hebrew street test (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<street>" in "רחוב"
    Examples:
      | street               |
      | sda                  |
      | يبلان                |
      | גכע#$%^&*            |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |


  Scenario Outline: Street error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<street>" in "רחוב"
    Then check if "רחוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | street               |
      | sda                  |
      | يبلان                |
      | גכע#$%^&*            |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |


  Scenario Outline: write only in Hebrew City site name test (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<city_site_name>" in "שם אתר עירוני"
    Examples:
      | city_site_name          |
      | עיריית ירושלים          |
      | עיריית ירושלים"/()'.,_- |
      | גךגךגךגךגךגתגגת         |
      | פ                       |


  Scenario Outline: write only in Hebrew City site name test (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<city_site_name>" in "שם אתר עירוני"
    Examples:
      | city_site_name       |
      | يبلان                |
      | גכע#$%^&*            |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |
      | פsda                 |


  Scenario Outline: City site name error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<city_site_name>" in "שם אתר עירוני"
    Then check if "שם אתר עירוני" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | city_site_name       |
      | يبلان                |
      | גכע#$%^&*            |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |
      | פsda                 |


  Scenario Outline: write only in Hebrew Complaint details test (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<complaint_details>" in "פרטי התלונה"
    Examples:
      | complaint_details   |
      | קיבלתי מכה          |
      | קיבלתי מכה"/()'.,_- |
      | גךגךגךגךגךגתגגת     |
      | פ                   |


  Scenario Outline: write only in Hebrew Complaint details test (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<complaint_details>" in "פרטי התלונה"
    Examples:
      | complaint_details    |
      | פsda                 |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |
      | גכע#$%^&*            |
      | يبلان                |


  Scenario Outline: Complaint details error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<complaint_details>" in "פרטי התלונה"
    Then check if "פרטי התלונה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"

    Examples:
      | complaint_details    |
      | פsda                 |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |
      | גכע#$%^&*            |
      | يبلان                |


  Scenario: Complaint details error messages test: Empty input
    Given Navigate to "ContractorEmpRights" form
    Then check if "פרטי התלונה" error is "יש למלא את פרטי התלונה"


  Scenario Outline: write only in Hebrew Answer received test (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<answer>" in "התשובה שקיבלתי"
    Examples:
      | answer          |
      | כלום            |
      | כלום"/()'.,_-   |
      | גךגךגךגךגךגתגגת |
      | פ               |


  Scenario Outline: write only in Hebrew Answer received test (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<answer>" in "התשובה שקיבלתי"
    Examples:
      | answer               |
      | גכע#$%^&*            |
      | פsda                 |
      | يبلان                |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |


  Scenario Outline: Answer received error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<answer>" in "התשובה שקיבלתי"
    Then check if "התשובה שקיבלתי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | answer               |
      | גכע#$%^&*            |
      | פsda                 |
      | يبلان                |
      | يبلdfgגכעי4ٌٌُُلإ$%פ |


  Scenario Outline: write only numbers in house number (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<house_number>" in "מספר בית"
    Examples:
      | house_number |
      | 23           |
      | 42           |


  Scenario Outline: write only numbers in house number (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<house_number>" in "מספר בית"
    Examples:
      | house_number |
      | لاتمeم       |
      | יחeלל        |
      | fghej        |
      | 644e3e       |


  Scenario Outline: house number error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<house_number>" in "מספר בית"
    Then check if "מספר בית" error is "ש להזין ספרות בלבד"
    Examples:
      | house_number |
      | لاتeمم       |
      | יeחלל        |
      | fghej        |
      | 6443ee       |


  Scenario Outline: write only numbers in apartment number (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<department_number>" in "מספר דירה"
    Examples:
      | department_number |
      | 1                 |
      | 3                 |


  Scenario Outline: write only numbers in apartment number (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<department_number>" in "מספר דירה"
    Examples:
      | department_number |
      | لاتeمم            |
      | יחeלל             |
      | fghej             |
      | 64e43e            |


  Scenario Outline: Apartment number error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<department_number>" in "מספר דירה"
    Then check if "מספר דירה" error is "ש להזין ספרות בלבד"

    Examples:
      | department_number |
      | لاتمeم            |
      | יחeלל             |
      | fgehj             |
      | 644e3e            |


  Scenario Outline: write only numbers in home phone number (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<home_phone_number>" in "מספר טלפון"
    Examples:
      | home_phone_number |
      | 026284042         |
      | 026283066         |


  Scenario Outline: write only numbers in home phone number (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<home_phone_number>" in "מספר טלפון"
    Examples:
      | home_phone_number |
      | لاتمم             |
      | כעיחלם            |
      | dfghjk            |
      | 026e83066         |


  Scenario Outline: Home Phone number error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<home_phone_number>" in "מספר טלפון"
    Then check if "מספר טלפון" error is "יש להזין ספרות בלבד"
    Examples:
      | home_phone_number |
      | لاتمم             |
      | כעיחלם            |
      | dfghjk            |
      | 026e83066         |



  Scenario Outline: write only numbers in phone number (valid)
    Given Navigate to "ContractorEmpRights" form
    When fill "<phone_number>" as valid value in "מספר טלפון נייד"
    Examples:
      | phone_number |
      | 052-8745786  |
      | 058-3897485  |


  Scenario Outline: write only numbers in phone number (invalid)
    Given Navigate to "ContractorEmpRights" form
    When fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    Examples:
      | phone_number |
      | 058-سبسبسب   |
      | 058-גכגעכג   |
      | 058-fdxfgg   |
      | 058-389e485  |


  Scenario Outline: Phone number error messages test: Invalid input
    Given Navigate to "ContractorEmpRights" form
    When fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    Then check if "מספר טלפון נייד" error is "יש להזין ספרות בלבד"
    Examples:
      | phone_number |
      | 058-سبسبسب   |
      | 058-גכגעכג   |
      | 058-fdxfgg   |
      | 058-389e485  |


  Scenario: Phone number error messages test: Empty input
    Given Navigate to "ContractorEmpRights" form
    When fill "052- " as invalid value in "מספר טלפון נייד"
    Then check if "מספר טלפון נייד" error is "יש להזין מספר טלפון נייד"


  Scenario: Rest of fields error messages test: Empty input
    Given Navigate to "ContractorEmpRights" form
    When click on "המשך" icon
    Then check if "ענף" error is "יש לבחור ענף"
    Then check if "שם חברה" error is "יש לבחור שם חברה"
    Then check if "תאריך תחילת העבודה בחברה" error is "יש לסמן תאריך תחילת עבודה"
    Then check if "נושא התלונה" error is "ש לבחור את נושא/י התלונה"
    Then check if "חודשים לבדיקה" error is "נא למלא שנה נא למלא חודש/ים"
    Then check if "האם היתה פניה למעסיק קודם הגשת תלונה זו?" error is "יש לסמן האם היתה פניה למעסיק קודם הגשת תלונה זו"

  #BUG
  Scenario: Date of birth Test
    Given Navigate to "ContractorEmpRights" form
    When pick "1/2/1900" from calendar of "תאריך תחילת העבודה בחברה"
    Then validate picked date of "תאריך תחילת העבודה בחברה" is "01/02/1900"