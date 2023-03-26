Feature: TransferDogOwnership form - CheckList scenarios step 1

  - Form name: בקשה להחזקת כלב - העברת בעלות
  - Feature file name: transfer_dog_ownership
  - Form link: https://jeronlineforms.jerusalem.muni.il/TransferDogOwnership
  - Number of Pages is : 3, We are at step: 1
  - All fields are mandatory except (.ספר דירה, ת.ד )


  Scenario: save button test
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דרןח" in "שם פרטי"
    And  from parent "פרטי מגיש הבקשה" write a valid value "דגעחוח" in "שם משפחה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "@TEMP_EMAIL_ADDRESS" in "אימייל"
    And  from parent "פרטי מגיש הבקשה" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי מגיש הבקשה" search valid value and pick "א טור" in search field "רחוב"
    And  from parent "פרטי מגיש הבקשה" write a valid value "2" in "מספר בית"
    And  from parent "פרטי מגיש הבקשה" write a valid value "1" in "מספר דירה"
    And  from parent "פרטי מגיש הבקשה" write a valid value "3454" in "ת.ד"
    And  from parent "פרטי המוסר" write a valid value "קכקק" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "דגככגדק" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "332796184" in "תעודת זהות"
    And  from parent "פרטי המוסר" fill "052-3366487" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" write a valid value "ירושלים" in "יישוב"
    And  from parent "פרטי המוסר" write a valid value "א טור" in "רחוב"
    And  from parent "פרטי המוסר" write a valid value "2" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "3" in "מספר דירה"
    And  from parent "פרטי המוסר" write a valid value "3233" in "ת.ד"
    And click on "המשך" icon
    And write a valid value "ביסקו" in "שם הכלב"
    And write a valid value "דשגדק" in "גזע"
    And choose "זכר" from "מין"
    And write a valid value "לבן" in "צבע"
    And write a valid value "982009104328548" in "מספר שבב"
    When from header click on "שמור" icon
    When 1st wait for "email" that contains pin code and link
    When 2nda click on link and fill "email" "@TEMP_EMAIL_ADDRESS" pin code index "1"
    When 3rd wait for second "email" to get "קוד האימות" index "1"
    When 4th close all tabs "email" at index "1"
    Then 5th Validate if went back to expected "email" form
    Then validate current step is "פרטי הכלב"


  Scenario: Test Explanation of the form
    Given Navigate to "TransferDogOwnership" form
    When from header click on "מידע" icon
    Then validate information dialog is opened
    And validate information dialog contains "טופס זה הוא טופס מקוון, והוא יאפשר לך להגיש את הבקשה באופן ממוחשב, לזכות בעדכון לגבי מצב הטיפול בטופס"
    And validate information dialog text in old header exists and contains at least "20" chars
    When click on X button
    Then validate information dialog is closed


  Scenario Outline: Block fictitious IDs (valid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "<id>" in "תעודת זהות"
    And  from parent "פרטי המוסר" write a valid value "<id>" in "תעודת זהות"
    Examples:
      | id        |
      | 332796184 |
      | 227638475 |


  #BUG
  Scenario Outline: Block fictitious IDs (invalid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "<id>" in "תעודת זהות"
    And from parent "פרטי המוסר" write an invalid value "<id>" in "תעודת זהות"
    Examples:
      | id        |
      | 0         |
      | 3327      |
      | 000000018 |
      | ghjkk     |
      | כעיחל     |
      | بلاتنم    |
      | #$%^&     |


  Scenario Outline: ID error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value "<id>" in "תעודת זהות"
    And from parent "פרטי המוסר" write an invalid value "<id>" in "תעודת זהות"
    Then from parent "פרטי מגיש הבקשה" check if "תעודת זהות" error is "מספר זהות לא תקין"
    Then from parent "פרטי המוסר" check if "תעודת זהות" error is "מספר זהות לא תקין"
    Examples:
      | id                   |
      | 87389228312232112312 |
      | 000000009            |
      | 3327!@#              |
      | סנינה"אבו"פראס       |
      | אבו/פראס/סנינה       |
      | פראס()_-אבו סנינה    |
      | صهيب                 |
      | suhaib               |


  Scenario: ID error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write an invalid value " " in "תעודת זהות"
    When from parent "פרטי מגיש הבקשה" clear "תעודת זהות"
    When from parent "פרטי המוסר" write an invalid value " " in "תעודת זהות"
    When from parent "פרטי המוסר" clear "תעודת זהות"
    Then from parent "פרטי מגיש הבקשה" check if "תעודת זהות" error is "יש להזין מספר זהות"
    Then from parent "פרטי המוסר" check if "תעודת זהות" error is "יש להזין מספר זהות"


  Scenario Outline: write only in Hebrew first name test (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write a valid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי המוסר" write a valid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name                                  |
      | סו"/ה.ייב_אבו_גנאם                           |
      | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג     |
      | פ                                           |


  #BUG
  Scenario Outline: write only in Hebrew first name test (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי המוסר" write an invalid value "<first_name>" in "שם פרטי"
    Examples:
      | first_name       |
      | صهيب             |
      | suhaib           |
      | 1234             |
      | !@#$%%           |
      | סוהייב##&&^*@!#% |

  #BUG
  Scenario Outline: First name error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<first_name>" in "שם פרטי"
    And  from parent "פרטי המוסר" write an invalid value "<first_name>" in "שם פרטי"
    Then from parent "פרטי מגיש הבקשה" check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי המוסר" check if "שם פרטי" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | first_name |
      | DFGHJKL    |
      | سيبلاتنقفغ |
      | גכעיח%^&   |
      | 3327!@#    |


  #BUG
  Scenario: First name error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value " " in "שם פרטי"
    When from parent "פרטי מגיש הבקשה" clear "שם פרטי"
    And  from parent "פרטי המוסר" write an invalid value " " in "שם פרטי"
    When from parent "פרטי המוסר" clear "שם פרטי"
    Then from parent "פרטי מגיש הבקשה" check if "שם פרטי" error is "יש למלא שם פרטי"
    Then from parent "פרטי המוסר" check if "שם פרטי" error is "יש למלא שם פרטי"


  Scenario Outline: write only in Hebrew last name test (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write a valid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי המוסר" write a valid value "<last_name>" in "שם משפחה"
    Examples:
      | last_name                                   |
      | )"סוהייב_אב.ו_גנאם(                          |
      | ככגךגדחדלגמגלחגלגדךלגלגלגךלגךגךגךגךגךגתגגתג     |
      | פ                                           |


  #BUG
  Scenario Outline: write only in Hebrew last name test (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value "<last_name>" in "שם משפחה"
    Examples:
      | last_name        |
      | suhaib           |
      | صهيب             |
      | 1234             |
      | סוהייב##&&^*@!#% |
      | !@#$%%           |

  #BUG
  Scenario Outline: Last name error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<last_name>" in "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value "<last_name>" in "שם משפחה"
    Then from parent "פרטי מגיש הבקשה" check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Then from parent "פרטי המוסר" check if "שם משפחה" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | last_name  |
      | 3327!@#    |
      | DFGHJKL    |
      | سيبلاتنقفغ   |
      | גכעיח%^&   |


  #BUG
  Scenario: Last name error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value " " in "שם משפחה"
    When from parent "פרטי מגיש הבקשה" clear "שם משפחה"
    And  from parent "פרטי המוסר" write an invalid value " " in "שם משפחה"
    When from parent "פרטי המוסר" clear "שם משפחה"
    Then from parent "פרטי מגיש הבקשה" check if "שם משפחה" error is "יש למלא שם משפחה"
    Then from parent "פרטי המוסר" check if "שם משפחה" error is "יש למלא שם משפחה"


  Scenario Outline: write only in Hebrew address test (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי המוסר" write a valid value "<address>" in "יישוב"
    Examples:
      | address      |
      | ככגךגדחדלגמג  |
      | )"סוהיי      |
      | ע            |


  #BUG
  Scenario Outline: write only in Hebrew address test (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי המוסר" write an invalid value "<address>" in "יישוב"
    Examples:
      | address          |
      | صهيب             |
      | suhaib           |
      | 1234             |
      | !@#$%%           |
      | סוהייב##&&^*@!#% |

  #BUG
  Scenario Outline:  Address error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי המוסר" write an invalid value "<address>" in "יישוב"
    Then from parent "פרטי המוסר" check if "יישוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | address    |
      | DFGHJKL    |
      | سيبلاتنقفغ   |
      | גכעיח%^&   |
      | 3327!@#    |


  #BUG
  Scenario: Address error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי המוסר" write an invalid value " " in "יישוב"
    When from parent "פרטי המוסר" clear "יישוב"
    Then from parent "פרטי המוסר" check if "יישוב" error is "יש למלא יישוב"


  Scenario Outline: write only in Hebrew street test (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write "<street>" in search field "רחוב"
    When  from parent "פרטי המוסר" write a valid value "<street>" in "רחוב"
    Examples:
      | street       |
      | ככגךגדחדלגמג  |
      | )"סוהיי      |
      | ע            |


  #BUG
  Scenario Outline: write only in Hebrew street test (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write "<street>" in search field "רחוב"
    When  from parent "פרטי המוסר" write an invalid value "<street>" in "רחוב"
    Examples:
      | street           |
      | suhaib           |
      | صهيب             |
      | 1234             |
      | סוהייב##&&^*@!#% |
      | !@#$%%           |

  #BUG
  Scenario Outline: Street error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי המוסר" write an invalid value "<street>" in "רחוב"
    Then from parent "פרטי המוסר" check if "רחוב" error is "יש להזין אותיות בעברית בלבד ותווים מיוחדים " / () ' . , _ -"
    Examples:
      | street     |
      | 3327!@#    |
      | DFGHJKL    |
      | سيبلاتنقفغ   |
      | גכעיח%^&   |


  #BUG
  Scenario: Street error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי המוסר" write an invalid value " " in "רחוב"
    When from parent "פרטי המוסר" clear "רחוב"
    Then from parent "פרטי המוסר" check if "רחוב" error is "יש למלא רחוב"


  Scenario Outline: write only in English and numbers in email test (valid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" write a valid value "<email>" in "אימייל"
    Examples:
      | email             |
      | sui_b@ajj.com     |
      | 1234@12.com       |
      | sa_m@ss.co        |
      | sa1223m@12334.com |
      | suha@abu.net      |

  Scenario Outline: write only in English and numbers in email test (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<email>" in "אימייל"
    Examples:
      | email        |
      | A@b.cO+m     |
      | com....@.... |
      | a%@b.c*om    |
      | a+r@b.co/m   |
      | a@b.co./mb   |


  Scenario Outline: Email error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<email>" in "אימייל"
    Then from parent "פרטי מגיש הבקשה" check if "אימייל" error is "דוא''ל לא תקין"
    Examples:
      | email                |
      | 87389228312232112312 |
      | 3327qwer             |
      | 3327!@#              |
      | פראס()_-אבו סנינה     |
      | صهيب                 |
      | suhaib               |

  Scenario: Email error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value " " in "אימייל"
    When from parent "פרטי מגיש הבקשה" clear "אימייל"
    Then from parent "פרטי מגיש הבקשה" check if "אימייל" error is "יש להזין כתובת אימייל"


  Scenario Outline: write only numbers in phone number (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" fill "<phone_number>" as valid value in "מספר טלפון נייד"
    And  from parent "פרטי המוסר" fill "<phone_number>" as valid value in "מספר טלפון נייד"
    Examples:
      | phone_number |
      | 050-8076283  |
      | 050-1111111  |
      | 050-2222222  |

  Scenario Outline: write only numbers in phone number (invalid)
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    When from parent "פרטי המוסר" fill "<phone_number>" as invalid value in "מספר טלפון נייד"

    Examples:
      | phone_number |
      | 052-321d2f4  |
      | 052-321%2f4  |
      | 052-321@2f4  |

  Scenario Outline: Phone number error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    When from parent "פרטי המוסר" fill "<phone_number>" as invalid value in "מספר טלפון נייד"
    Then from parent "פרטי מגיש הבקשה" check if "מספר טלפון נייד" error is "יש להזין ספרות בלבד/nיש להשלים את הספרות החסרות"
    Then from parent "פרטי המוסר" check if "מספר טלפון נייד" error is "יש להזין ספרות בלבד/nיש להשלים את הספרות החסרות"
    Examples:
      | phone_number |
      | 052-321d2f4  |
      | 052-321%2f4  |
      | 052-321@2f4  |


  Scenario: Phone number error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When from parent "פרטי מגיש הבקשה" fill "052-1 " as invalid value in "מספר טלפון נייד"
    When from parent "פרטי המוסר" fill "052-1 " as invalid value in "מספר טלפון נייד"



  Scenario Outline: write only numbers in house number (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write a valid value "<home_number>" in "מספר בית"
    And  from parent "פרטי המוסר" write a valid value "<home_number>" in "מספר בית"
    Examples:
      | home_number |
      | 23          |
      | 123         |
      | 41221321    |

  Scenario Outline: write only numbers in house number (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<home_number>" in "מספר בית"
    And  from parent "פרטי המוסר" write an invalid value "<home_number>" in "מספר בית"
    Examples:
      | home_number |
      | דגגד        |
      | שד34        |
      | #$5         |

  Scenario Outline: house number error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<home_number>" in "מספר בית"
    And  from parent "פרטי המוסר" write an invalid value "<home_number>" in "מספר בית"
    Then from parent "פרטי מגיש הבקשה" check if "מספר בית" error is "יש למלא מספר בית"
    Then from parent "פרטי המוסר" check if "מספר בית" error is "יש למלא מספר בית"
    Examples:
      | home_number |
      | דגגד        |
      | שד34        |
      | #$5         |


  Scenario: house number error messages test: Empty input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value " " in "מספר בית"
    When from parent "פרטי מגיש הבקשה" clear "מספר בית"
    And  from parent "פרטי המוסר" write an invalid value " " in "מספר בית"
    When from parent "פרטי המוסר" clear "מספר בית"
    Then from parent "פרטי מגיש הבקשה" check if "מספר בית" error is "יש למלא מספר בית"
    Then from parent "פרטי המוסר" check if "מספר בית" error is "יש למלא מספר בית"


  Scenario Outline: write only numbers in apartment number (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write a valid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי המוסר" write a valid value "<apartment_number>" in "מספר דירה"
    Examples:
      | apartment_number |
      | 1                |
      | 23241343443      |
      | 2332             |

  Scenario Outline: write only numbers in apartment number (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי המוסר" write an invalid value "<apartment_number>" in "מספר דירה"
    Examples:
      | apartment_number |
      | כע               |
      | ראטוחFן          |
      | %^لاتن           |

  Scenario Outline: Apartment number error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<apartment_number>" in "מספר דירה"
    And  from parent "פרטי המוסר" write an invalid value "<apartment_number>" in "מספר דירה"
    Then from parent "פרטי מגיש הבקשה" check if "מספר דירה" error is "יש למלא מספר דירה"
    Then from parent "פרטי המוסר" check if "מספר דירה" error is "יש למלא מספר דירה"
    Examples:
      | apartment_number |
      | כע               |
      | ראטוחFן          |
      | %^لاتن           |


  Scenario Outline: write only numbers in P.O. (valid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write a valid value "<postal_number>" in "ת.ד"
    And  from parent "פרטי המוסר" write a valid value "<postal_number>" in "ת.ד"
    Examples:
      | postal_number |
      | 231232        |
      | 123123142424  |
      | 2             |

  Scenario Outline: write only numbers in P.O. (invalid)
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<postal_number>" in "ת.ד"
    And  from parent "פרטי המוסר" write an invalid value "<postal_number>" in "ת.ד"
    Examples:
      | postal_number |
      | dfghj         |
      | بلات          |
      | ראטון         |

  Scenario Outline: P.O. error messages test: Invalid input
    Given Navigate to "TransferDogOwnership" form
    When  from parent "פרטי מגיש הבקשה" write an invalid value "<postal_number>" in "ת.ד"
    And  from parent "פרטי המוסר" write an invalid value "<postal_number>" in "ת.ד"
    Then from parent "פרטי מגיש הבקשה" check if "ת.ד" error is "יש להזין ספרות בלבד"
    Then from parent "פרטי המוסר" check if "ת.ד" error is "יש להזין ספרות בלבד"
    Examples:
      | postal_number |
      | dfghj         |
      | بلات           |
      | ראטון         |








