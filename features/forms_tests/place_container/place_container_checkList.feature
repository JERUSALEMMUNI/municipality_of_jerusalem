#@in_dev
@test
Feature: Test Scenarios for functionality and validation of PlaceContainer form - checklist scenarios

  - Form name: בקשה להנחת מכולה אגף אכיפה ושיטור
  - Feature file name: place_container.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/PlaceContainer
  - Number of Pages is : 2, We are at Page: 1
  - All fields are mandatory
  - Page Information:
  -


  Scenario Outline: TC_CONTAINER_04 checklist - Enter a correct ID number
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write a valid value "<id>" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    Examples:
      | id        |
      | 332796184 |
      | 227638475 |


  Scenario Outline: TC_CONTAINER_05 checklist - Enter a incorrect ID number
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write an invalid value "<id>" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    Examples:
      | id        |
      | 0         |
      | 3327      |
      | 000000018 |
      | ghjkk     |
      | כעיחל     |
      | بلاتنم    |
      | #$%^&     |

  Scenario Outline: TC_CONTAINER_06 checklist - Enter correct BN number
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "<bn>" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    Examples:
      | bn        |
      | 332796184 |
      | 227638475 |

  Scenario Outline: TC_CONTAINER_07 checklist - Enter incorrect BN number
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write an invalid value "<bn>" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    Examples:
      | bn        |
      | 0         |
      | 3327      |
      | 000000018 |
      | ghjkk     |
      | כעיחל     |
      | بلاتنم    |
      | #$%^&     |

  Scenario Outline: TC_CONTAINER_08 checklist - Enter incorrect First Name
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write an invalid value "<first_name>" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    Examples:
      | first_name |
      | wisam      |
      | وسام       |
      | !@#$&^%%   |
      | 1234       |

  Scenario Outline: TC_CONTAINER_09 checklist - Enter incorrect Last Name
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write an invalid value "<last_name>" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    Examples:
      | last_name |
      | wisam     |
      | وسام      |
      | !@#$&^%%  |
      | 1234      |

  Scenario Outline: TC_CONTAINER_10 checklist - Enter incorrect mobile number
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    Examples:
      | phone_number |
      | 050-שדגדגשד  |
      | 050-234#$%   |
      | 050-כעיחUןם  |

  Scenario Outline: TC_CONTAINER_11 checklist -Enter incorrect email
    Given Navigate to "PlaceContainer" form
    When choose "ח.פ." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write an invalid value "<email>" in "אימייל:"
    Examples:
      | email        |
      | A@b.cO+m     |
      | com....@.... |
      | a%@b.c*om    |
      | a+r@b.co/m   |
      | a@b.co./mb   |

  Scenario Outline:  לכל השגיאות בקבצים יש להציג הודעה מתאימה ( קלט לא תקין)
    Given Navigate to "PlaceContainer" form
    When  write an invalid value "<email>" in "אימייל:"
    Then check if "אימייל:" error is "דוא''ל לא תקין"
    Examples:
      | email                |
      | 87389228312232112312 |
      | 3327qwer             |
      | 3327!@#              |
      | ווסאם()_- עוקה       |
      | وسام                 |
      | wisam                |

  Scenario Outline: TC_CONTAINER_12 checklist - Enter a valid address
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    And search valid value and pick "<address>" in search field "רחוב"
    And  from parent "פרטי הצבת המכולה:" write a valid value "<home_number>" in "מספר בית"
    And write a valid value "<apartment_number>" in "מספר דירה"
    Examples:
      | address | home_number | apartment_number |
      | א טברי  | 12          | 12               |
      | א סבר   | 12          | 12               |

  Scenario Outline: TC_CONTAINER_13 checklist - Enter an invalid address
    Given Navigate to "PlaceContainer" form
    When choose "ת.ז." from "סוג זהות:"
    And write a valid value "332796184" in "מספר מזהה"
    And write a valid value "ווסאם" in "שם פרטי"
    And write a valid value "עוקה" in "שם משפחה"
    And fill "052-4075877" as valid value in "מספר טלפון נייד"
    And write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל:"
    And search invalid value and pick "<address>" in search field "רחוב"
    And  from parent "כתובת מקום העבודה:" write an invalid value "<home_number>" in "מספר בית"
    And write an invalid value "<apartment_number>" in "מספר דירה"
    Examples:
      | address | home_number | apartment_number |
      | dd      | ww          | ww               |
      | 1234    | وو          | وو               |

  Scenario Outline: TC_CONTAINER_14 checklist - Enter a valid container placement details
    Given Navigate to "PlaceContainer" form
    When choose "<id-type>" from "סוג זהות:"
    And write a valid value "<id>" in "מספר מזהה"
    And write a valid value "<first_name>" in "שם פרטי"
    And write a valid value "<last_name>" in "שם משפחה"
    And fill "<phone_number>" as valid value in "מספר טלפון נייד"
    And write a valid value "<email>" in "אימייל:"
    And search valid value and pick "<address>" in search field "רחוב"
    And  from parent "כתובת מקום העבודה:" write a valid value "<home_number>" in "מספר בית"
    And write a valid value "<apartment_number>" in "מספר דירה"
    And search valid value and pick "<container_address>" in search field "רחוב"
    And  from parent "פרטי הצבת המכולה:" write a valid value "<container_home_number>" in "מספר בית"
    #ToDO: this filed has another xpath with div befor the input like the phone field
    And write a valid value "<container_number>" in "מספר מכולה:"
    And pick date and time "<start_date>" and "<start_clock>" in "מתאריך:"
    And pick date and time "<end_date>" and "<end_clock>" in "עד תאריך:"
    And pick "<parking_type>" from "סוג החניה:"
    #ToDO: this filed has another xpath with div befor the input like the phone field
    And write a valid value "<url>" in "כתובת האתר לשפיכת הפסולת"
    Examples:
      | id-type | id        | first_name | last_name | phone_number | email           | address | home_number | apartment_number | container_address | container_home_number | container_number | start_date | start_clock | end_date | end_clock | parking_type | url    |
      | ת.ז.    | 332796184 | ווסאם      | עוקה      | 052-4075877  | wisam@wisam.com | א טברי  | 1           | 1                | א טברי            | 1                     | 1                | 8/8/2024   | 16:19       | 9/8/2024 | 12:19     | תו אזורי     | א טברי

