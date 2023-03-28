
Feature: FreedomInfo form - scenarios step 2

  - Form name: חופש המידע
  - Feature file name: freedom_info_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/FreedomInfo
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

  Background:
    Given  Navigate to "FreedomInfo" form and reach step "סוג המידע"
#  @in_dev
  Scenario: TC_FREEDOMINFO_02 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי ארגון" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" is exist
    Then validate if "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "2" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "3" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted


    When Upload a valid "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "png_to_upload.png" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "gif_to_upload.gif" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "pdf_to_upload.pdf" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "jpeg_to_upload.jpeg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "bmp_to_upload.bmp" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "2" is "png_to_upload.png" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "2" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted

    When Upload a valid "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "3" is "gif_to_upload.gif" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "3" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted


    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "2" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "3" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When clear fields

  Scenario: TC_FREEDOMINFO_03 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי עמותה" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" is exist
    Then validate if "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "2" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "3" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted


    When Upload a valid "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "png_to_upload.png" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "gif_to_upload.gif" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "pdf_to_upload.pdf" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "jpeg_to_upload.jpeg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "1" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted
    When delete file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When Upload a valid "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "2" is "png_to_upload.png" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "2" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted

    When Upload a valid "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "3" is "gif_to_upload.gif" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "3" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate size of file "1" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" in accepted


    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "2" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "3" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When clear fields

  Scenario: TC_FREEDOMINFO_04 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי סטודנט/גוף מחקרי" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "2" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "3" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted


    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "2" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "3" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When clear fields

  Scenario: TC_FREEDOMINFO_05 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי סטודנט/גוף מחקרי" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted
    When delete file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When Upload a valid "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "2" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "3" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate size of file "1" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" in accepted


    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted
    When delete file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When Upload a valid "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "2" is "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "2" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "3" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate size of file "1" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" in accepted

    When clear fields

  Scenario: TC_FREEDOMINFO_06 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי גורם פרטי" from "סוג המידע המבוקש"
    Then validate if "המידע מבוקש" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "אודותי" from "המידע מבוקש"
    Then validate if "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" is exist
    When choose "אחר" from "המידע מבוקש"
    When click on "המשך" button

    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "1" is "png_to_upload.png" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted
    When delete file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "1" is "gif_to_upload.gif" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted
    When delete file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted
    When delete file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When Upload a valid "pdf_to_upload.pdf" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted
    When delete file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When Upload a valid "jpeg_to_upload.jpeg" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted
    When delete file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When Upload a valid "bmp_to_upload.bmp" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted
    When delete file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When Upload a valid "png_to_upload.png" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "2" is "png_to_upload.png" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "2" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted

    When Upload a valid "gif_to_upload.gif" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "3" is "gif_to_upload.gif" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "3" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate size of file "1" in "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" in accepted


    When Upload a valid "png_to_upload.png" file in "מסמכים נוספים"
    Then validate name of file "1" is "png_to_upload.png" in "מסמכים נוספים"
    Then validate size of file "1" in "מסמכים נוספים" in accepted
    When delete file "1" in "מסמכים נוספים"

    When Upload a valid "gif_to_upload.gif" file in "מסמכים נוספים"
    Then validate name of file "1" is "gif_to_upload.gif" in "מסמכים נוספים"
    Then validate size of file "1" in "מסמכים נוספים" in accepted
    When delete file "1" in "מסמכים נוספים"

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמכים נוספים"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמכים נוספים"
    Then validate size of file "1" in "מסמכים נוספים" in accepted
    When delete file "1" in "מסמכים נוספים"

    When Upload a valid "pdf_to_upload.pdf" file in "מסמכים נוספים"
    Then validate name of file "1" is "pdf_to_upload.pdf" in "מסמכים נוספים"
    Then validate size of file "1" in "מסמכים נוספים" in accepted
    When delete file "1" in "מסמכים נוספים"

    When Upload a valid "jpeg_to_upload.jpeg" file in "מסמכים נוספים"
    Then validate name of file "1" is "jpeg_to_upload.jpeg" in "מסמכים נוספים"
    Then validate size of file "1" in "מסמכים נוספים" in accepted
    When delete file "1" in "מסמכים נוספים"

    When Upload a valid "bmp_to_upload.bmp" file in "מסמכים נוספים"
    Then validate name of file "1" is "bmp_to_upload.bmp" in "מסמכים נוספים"
    Then validate size of file "1" in "מסמכים נוספים" in accepted
    When delete file "1" in "מסמכים נוספים"

    When Upload a valid "png_to_upload.png" file in "מסמכים נוספים"
    Then validate name of file "2" is "png_to_upload.png" in "מסמכים נוספים"
    Then validate size of file "2" in "מסמכים נוספים" in accepted

    When Upload a valid "gif_to_upload.gif" file in "מסמכים נוספים"
    Then validate name of file "3" is "gif_to_upload.gif" in "מסמכים נוספים"
    Then validate size of file "3" in "מסמכים נוספים" in accepted

    When Upload a valid "jpg_pic_to_upload.jpg" file in "מסמכים נוספים"
    Then validate name of file "1" is "jpg_pic_to_upload.jpg" in "מסמכים נוספים"
    Then validate size of file "1" in "מסמכים נוספים" in accepted

    When clear fields