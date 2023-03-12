
Feature: ContractorEmpRights form - CheckList scenarios step 1

  - Form name: תלונה בגין פגיעה בזכויות עובד קבלן בתחומי ניקיון, שמירה והסעדה
  - Feature file name: contractor_emp_rights.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/ContractorEmpRights
  - Number of Pages is : 2, We are at Page: 1
  - All fields are mandatory except (תאריך לידה, רחוב, מספר בית, מספר דירה, מספר טלפון, שם אתר עירוני)


  Scenario: הסבר לטופס - לכל טופס חייב להיות הסבר -בבדיקה מול טפסים ישנים שיש התאמה מול ההסברים הישנים
    Given Navigate to "ContractorEmpRights" form
    When click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב, לזכות בעדכון לגבי מצב הטיפול בטופס"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X button
    Then validate information dialog is closed

  Scenario Outline: לחסום תעודות זהות פקטיביות (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<id>" in "מספר זהות"
    Examples:
    | id  |
    | 332796184 |
    | 227638475 |


  Scenario Outline: לחסום תעודות זהות פקטיביות (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<id>" in "מספר זהות"
    Examples:
    | id                       |
    | 3327                     |
    | 000000018                |
    | 000000009                |
    | 111111111111111111111111 |
    | 3327!@#                  |
    | סנינה"אבו"פראס            |
    | פ                        |
    | פ)(_-.,ץשדג              |
    | سيبثبث                   |
    | sgrgsgr                  |
    | סקרכקדכ                  |


Scenario Outline: לכל השגיאות בקבצים יש להציג הודעה מתאימה (ת.ז. קלט לא תקין)
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
    | סנינה"אבו"פראס            |
    | לגלגלגךלגךגךגךגךגךגתגגתג   |
    | פ                        |
    | פ)(_-.,ץשדג              |
    | سيبثبث                   |
    | sgrgsgr                  |
    | סקרכקדכ                  |

Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה (ת.ז. קלט ריק)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value " " in "מספר זהות"
    Then check if "מספר זהות" error is "יש להזין מספר זהות"


  Scenario Outline: בכל השדות טקסט לאפשר לכתוב רק בעברית (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<first_name>" in "שם פרטי"
    When write a valid value "<last_name>" in "שם משפחה"
    When write a valid value "<email>" in "אימייל"
    When write a valid value "<street>" in "רחוב"
    When write a valid value "<city_site_name>" in "שם אתר עירוני"
    When write a valid value "<complaint_details>" in "פרטי התלונה"
    When write a valid value "<answer>" in "התשובה שקיבלתי"
    Examples:
      | first_name    | last_name          | email       | street         |city_site_name         | complaint_details  | answer        |
      | פראס          | אבו סנינה           | asd@wwf.com | א טור          | עיריית ירושלים          | קיבלתי מכה         | כלום           |
      | פראס"/()'.,_- | אבו סנינה"/()'.,_-  | as@b.com    | א טור"/()'.,_- | עיריית ירושלים"/()'.,_- | קיבלתי מכה"/()'.,_-| כלום"/()'.,_-  |
      | גךגךגךגךגךגתגגת| גךגךגךגךגךגתגגת     |  as@b.com    | גךגךגךגךגךגתגגת | גךגךגךגךגךגתגגת         | גךגךגךגךגךגתגגת    | גךגךגךגךגךגתגגת |
      | פ             | פ                  | a@b.com     | ככגךגדחדלגמג    | פ                      |   פ               | פ              |


  Scenario Outline: בבכל השדות טקסט לאפשר לכתוב רק בעברית (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<first_name>" in "שם פרטי"
    When write an invalid value "<last_name>" in "שם משפחה"
    When write an invalid value "<email>" in "אימייל"
    When write an invalid value "<street>" in "רחוב"
    When write an invalid value "<city_site_name>" in "שם אתר עירוני"
    When write an invalid value "<complaint_details>" in "פרטי התלונה"
    When write an invalid value "<answer>" in "התשובה שקיבלתי"
    Examples:
      | first_name     | last_name     | email      | street         | city_site_name | complaint_details  | answer        |
      | sda            | يبلان          | بلا@لتيي.com | sda            | يبلان           | פsda               | גכע#$%^&*      |
      | يبلان           | sda           | כעי@.com    | يبلان           | גכע#$%^&*      | يبلdfgגכעי4ٌٌُُلإ$%פ     | פsda          |
      | גכע#$%^&*      | يبلdfgגכעי4ٌٌُُلإ$%פ| fs!#^&@.com| גכע#$%^&*       | يبلdfgגכעי4ٌٌُُلإ$%פ| גכע#$%^&*           | يبلان          |
      | يبلdfgגכעי4ٌٌُُلإ$%פ | גכע#$%^&*     | fןכיبل@.com | يبلdfgגכעי4ٌٌُُلإ$%פ | פsda          |  يبلان               | يبلdfgגכעי4ٌٌُُلإ$%פ|


  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה ( קלט לא תקין)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<first_name>" in "שם פרטי"
    When write an invalid value "<last_name>" in "שם משפחה"
    When write an invalid value "<email>" in "אימייל"
    When write an invalid value "<street>" in "רחוב"
    When write an invalid value "<city_site_name>" in "שם אתר עירוני"
    When write an invalid value "<complaint_details>" in "פרטי התלונה"
    When write an invalid value "<answer>" in "התשובה שקיבלתי"
    Then check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "אימייל" error is "דוא''ל לא תקין"
    Then check if "רחוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "שם אתר עירוני" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "פרטי התלונה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then check if "התשובה שקיבלתי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | first_name     | last_name     | email      | street         | city_site_name | complaint_details  | answer        |
      | sda            | يبلان          | بلا@لتيي.com | sda            | يبلان           | פsda               | גכע#$%^&*      |
      | يبلان           | sda           | כעי@.com    | يبلان           | גכע#$%^&*      | يبلdfgגכעי4ٌٌُُلإ$%פ     | פsda          |
      | גכע#$%^&*      | يبلdfgגכעי4ٌٌُُلإ$%פ| fs!#^&@.com| גכע#$%^&*       | يبلdfgגכעי4ٌٌُُلإ$%פ| גכע#$%^&*           | يبلان          |
      | يبلdfgגכעי4ٌٌُُلإ$%פ | גכע#$%^&*     | fןכיبل@.com | يبلdfgגכעי4ٌٌُُلإ$%פ | פsda          |  يبلان               | يبلdfgגכעי4ٌٌُُلإ$%פ|


  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה ( קלט ריק)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value " " in "שם פרטי"
    When write an invalid value " " in "שם משפחה"
    When write an invalid value " " in "אימייל"
    When write an invalid value " " in "פרטי התלונה"
    Then check if "שם פרטי" error is "יש למלא שם פרטי"
    Then check if "שם פרטי" error is "יש למלא שם משפחה"
    Then check if "אימייל" error is "יש להזין כתובת אימייל"
    Then check if "פרטי התלונה" error is "יש למלא את פרטי התלונה"


  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (valid)
    Given Navigate to "ContractorEmpRights" form
    When write a valid value "<house_number>" in "מספר בית"
    When write a valid value "<department_number>" in "מספר דירה"
    When write a valid value "<home_phone_number>" in "מספר טלפון"
    When fill "<phone_number>" as valid value in "מספר טלפון נייד"
    Examples:
      | house_number    | department_number| home_phone_number | phone_number |
      | 23              | 1                | 026284042         | 052-8745786  |
      | 42              | 3                | 026283066         | 058-3897485  |


  Scenario Outline: בכל השדות של מספרים לאפשר לכתוב רק מספרים (invalid)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<house_number>" in "מספר בית"
    When write an invalid value "<department_number>" in "מספר דירה"
    When write an invalid value "<home_phone_number>" in "מספר טלפון"
    When fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    Examples:
      | house_number    | department_number   | home_phone_number | phone_number |
      | لاتمeم            | لاتeمم               | لاتمم              | 058-سبسبسب   |
      | יחeלל            | יחeלל               | כעיחלם            | 058-גכגעכג   |
      | fghej            | fghej              | dfghjk            | 058-fdxfgg   |
      | 644e3e           | 64e43e             | 026e83066         | 058-389e485  |


  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה ( קלט לא תקין)
    Given Navigate to "ContractorEmpRights" form
    When write an invalid value "<house_number>" in "מספר בית"
    When write an invalid value "<department_number>" in "מספר דירה"
    When write an invalid value "<home_phone_number>" in "מספר טלפון"
    When fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    Then check if "מספר בית" error is "ש להזין ספרות בלבד"
    Then check if "מספר דירה" error is "ש להזין ספרות בלבד"
    Then check if "מספר טלפון" error is "יש להזין ספרות בלבד"
    Then check if "מספר טלפון נייד" error is "יש להזין ספרות בלבד"
    Examples:
      | house_number    | department_number   | home_phone_number | phone_number |
      | لاتeمم            | لاتمeم               | لاتمم              | 058-سبسبسب   |
      | יeחלל            | יחeלל               | כעיחלם            | 058-גכגעכג   |
      | fghej            | fgehj              | dfghjk            | 058-fdxfgg   |
      | 6443ee           | 644e3e             | 026e83066         | 058-389e485  |


  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה ( קלט ריק)
    Given Navigate to "ContractorEmpRights" form
    When fill "052- " as invalid value in "מספר טלפון נייד"
    Then check if "מספר טלפון נייד" error is "יש להזין מספר טלפון נייד"


  Scenario: לכל השגיאות בקבצים יש להציג הודעה מתאימה לשאר השדות ( קלט ריק)
    Given Navigate to "ContractorEmpRights" form
    When click on "המשך" icon
    Then check if "ענף" error is "יש לבחור ענף"
    Then check if "שם חברה" error is "יש לבחור שם חברה"
    Then check if "תאריך תחילת העבודה בחברה" error is "יש לסמן תאריך תחילת עבודה"
    Then check if "נושא התלונה" error is "ש לבחור את נושא/י התלונה"
    Then check if "חודשים לבדיקה" error is "נא למלא שנה נא למלא חודש/ים"
    Then check if "האם היתה פניה למעסיק קודם הגשת תלונה זו?" error is "יש לסמן האם היתה פניה למעסיק קודם הגשת תלונה זו"

  #BUG
  Scenario: בדיקת הזנת תאריך לידה
    Given Navigate to "ContractorEmpRights" form
    When pick "1/2/1900" from calendar of "תאריך תחילת העבודה בחברה"
    Then validate picked date of "תאריך תחילת העבודה בחברה" is "01/02/1900"