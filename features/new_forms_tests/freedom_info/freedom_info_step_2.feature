#@in_dev
Feature: FreedomInfo form - scenarios step 2

  - Form name: חופש המידע
  - Feature file name: freedom_info_step_2.feature
  - Form link: https://jeronlineforms.jerusalem.muni.il/FreedomInfo
  - Number of Pages is : 3, We are at step: 2
  - All fields are mandatory

  Background:
    Given  Navigate to "FreedomInfo" form and reach step "סוג המידע"


  Scenario: TC_FREEDOMINFO_02 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי ארגון" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" is exist
    Then validate if "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When upload "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "pdf_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "jpeg_to_upload.jpeg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "bmp_to_upload.bmp" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

     When upload "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list

###########################################################
    When upload "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "png_to_upload.png" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "png_to_upload.png" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "gif_to_upload.gif" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "gif_to_upload.gif" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

     When upload "pdf_to_upload.pdf" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "pdf_to_upload.pdf" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "pdf_to_upload.pdf" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "jpeg_to_upload.jpeg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "jpeg_to_upload.jpeg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "bmp_to_upload.bmp" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "bmp_to_upload.bmp" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "bmp_to_upload.bmp" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "png_to_upload.png" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list

    When upload "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "gif_to_upload.gif" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list

    When upload "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
#####################################################################################

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "png_to_upload.png" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When clear fields

###################################################################################

  Scenario: TC_FREEDOMINFO_03 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי עמותה" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" is exist
    Then validate if "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When upload "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "png_to_upload.png" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "gif_to_upload.gif" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "pdf_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "jpeg_to_upload.jpeg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "bmp_to_upload.bmp" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"

    When upload "png_to_upload.png" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
################################################################################################

    When upload "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "png_to_upload.png" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "png_to_upload.png" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "gif_to_upload.gif" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "gif_to_upload.gif" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "pdf_to_upload.pdf" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "pdf_to_upload.pdf" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "pdf_to_upload.pdf" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "jpeg_to_upload.jpeg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "jpeg_to_upload.jpeg" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "bmp_to_upload.bmp" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "bmp_to_upload.bmp" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    When delete file by name "bmp_to_upload.bmp" in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"

    When upload "png_to_upload.png" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "png_to_upload.png" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list

    When upload "gif_to_upload.gif" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "gif_to_upload.gif" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list

    When upload "jpg_pic_to_upload.jpg" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
####################################################################################

    When upload "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "png_to_upload.png" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "png_to_upload.png" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When clear fields
########################################################################################################


  Scenario: TC_FREEDOMINFO_04 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי סטודנט/גוף מחקרי" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When upload "png_to_upload.png" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "png_to_upload.png" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "gif_to_upload.gif" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "pdf_to_upload.pdf" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "jpeg_to_upload.jpeg" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "bmp_to_upload.bmp" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "png_to_upload.png" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
##################################################################################

    When upload "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "png_to_upload.png" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "png_to_upload.png" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When clear fields
####################################################################################################################
  Scenario: TC_FREEDOMINFO_05 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי סטודנט/גוף מחקרי" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" is exist
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When upload "png_to_upload.png" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "png_to_upload.png" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "gif_to_upload.gif" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "pdf_to_upload.pdf" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "jpeg_to_upload.jpeg" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "bmp_to_upload.bmp" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"

    When upload "png_to_upload.png" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "png_to_upload.png" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list

    When upload "gif_to_upload.gif" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי"
    Then validate "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך המעיד כי הנתונים המבוקשים בבקשת המידע הינם לצורך מחקר אקדמי" files list
#############################################################################################

    When upload "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "png_to_upload.png" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "png_to_upload.png" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "gif_to_upload.gif" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg"" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "pdf_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "jpeg_to_upload.jpeg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "bmp_to_upload.bmp" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"

    When upload "png_to_upload.png" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "png_to_upload.png" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "gif_to_upload.gif" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list

    When clear fields

###############################################################################################################

  Scenario: TC_FREEDOMINFO_06 - Checking "The type of information" fields with correct details
    When pick "מידע המבוקש על ידי גורם פרטי" from "סוג המידע המבוקש"
    Then validate if "המידע מבוקש" is exist
    When choose "לא" from "המידע מבוקש על ידי מקבל קצבה"
    When choose "אחר" from "המידע מבוקש"
    Then validate if "צילום תעודת זהות של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" is exist
    When choose "אודותי" from "המידע מבוקש"
    Then validate if "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" is exist
    When click on "המשך" button

    When upload "png_to_upload.png" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "png_to_upload.png" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list
    When delete file by name "png_to_upload.png" in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list
    When delete file by name "gif_to_upload.gif" in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When upload "pdf_to_upload.pdf" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "pdf_to_upload.pdf" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list
    When delete file by name "pdf_to_upload.pdf" in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When upload "jpeg_to_upload.jpeg" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list
    When delete file by name "jpeg_to_upload.jpeg" in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When upload "bmp_to_upload.bmp" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "bmp_to_upload.bmp" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list
    When delete file by name "bmp_to_upload.bmp" in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"

    When upload "png_to_upload.png" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "png_to_upload.png" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list

    When upload "gif_to_upload.gif" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "gif_to_upload.gif" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list

    When upload "jpg_pic_to_upload.jpg" file in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך"
    Then validate "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "צילום תעודת זהות שלך או של האדם אותו הנך מייצג/ת בתוספת ייפוי כוח מטעמו אליך" files list

###############################################################################################
    When upload "png_to_upload.png" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "png_to_upload.png" file is in "מסמכים נוספים" files list
    When delete file by name "png_to_upload.png" in "מסמכים נוספים"


    When upload "gif_to_upload.gif" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמכים נוספים" files list
    When delete file by name "gif_to_upload.gif" in "מסמכים נוספים"

    When upload "jpg_pic_to_upload.jpg" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמכים נוספים" files list
    When delete file by name "jpg_pic_to_upload.jpg" in "מסמכים נוספים"

    When upload "pdf_to_upload.pdf" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "pdf_to_upload.pdf" file is in "מסמכים נוספים" files list
    When delete file by name "pdf_to_upload.pdf" in "מסמכים נוספים"

    When upload "jpeg_to_upload.jpeg" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "jpeg_to_upload.jpeg" file is in "מסמכים נוספים" files list
    When delete file by name "jpeg_to_upload.jpeg" in "מסמכים נוספים"

    When upload "bmp_to_upload.bmp" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "bmp_to_upload.bmp" file is in "מסמכים נוספים" files list
    When delete file by name "bmp_to_upload.bmp" in "מסמכים נוספים"

    When upload "png_to_upload.png" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "png_to_upload.png" file is in "מסמכים נוספים" files list

    When upload "gif_to_upload.gif" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "gif_to_upload.gif" file is in "מסמכים נוספים" files list

    When upload "jpg_pic_to_upload.jpg" file in "מסמכים נוספים"
    Then validate "מסמכים נוספים" field is valid
    Then validate "jpg_pic_to_upload.jpg" file is in "מסמכים נוספים" files list

    When clear fields

#######################################################################################
  Scenario: TC_FREEDOMINFO_09 - Checking "The type of information" fields with incorrect details
    When pick "מידע המבוקש על ידי ארגון" from "סוג המידע המבוקש"
    Then validate if "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" is exist
    Then validate if "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" is exist
    When choose "כן" from "המידע מבוקש על ידי מקבל קצבה"
    Then validate if "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" is exist
    When click on "המשך" button

    When upload "excel_to_upload.xlsx" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" files list
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" error is "חובה לצרף קובץ"
    Then validate "מסמך המעיד כי החתום על הבקשה הינו מורשה חתימה של העמותה/ייפוי כוח מטעם העמותה" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "excel_to_upload.xlsx" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" files list
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" error is "חובה לצרף קובץ"
    Then validate "תקנון העמותה או כל מסמך אחר המעיד על כך שהעמותה פועלת למען מטרות ציבוריות" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "excel_to_upload.xlsx" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" files list
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" error is "חובה לצרף קובץ"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When upload "excel_to_upload.xlsx" file in "צילום תעודה מזהה"
    Then validate "צילום תעודה מזהה" field is invalid
    Then validate "excel_to_upload.xlsx" file is not in "צילום תעודה מזהה" files list
    Then validate "צילום תעודה מזהה" error is "חובה לצרף קובץ"

    When upload "10MB_file_to_upload.pdf" file in "צילום תעודה מזהה"
    Then validate "מסמך אישור מהמוסד המעניק את הגמלה ובתנאי שהגמלה מוכרת לפטור" field is invalid
    Then validate "10MB_file_to_upload.pdf" file is not in "צילום תעודה מזהה" files list
    Then validate "צילום תעודה מזהה" error is "חובה לצרף קובץ"
    Then validate "צילום תעודה מזהה" error window message is "גודל הקובץ אינו חוקי גודל הקובץ המצורף לא יכול לעלות על 6MB"

    When clear fields

