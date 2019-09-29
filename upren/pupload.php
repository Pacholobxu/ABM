<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
   <?php
    $file = $_FILES['file']['name'];
    $a = pathinfo($file);
    $basename = $a['basename'];
    $filename = $a['filename'];
    $extension = $a['extension'];
    $path = $_SERVER['DOCUMENT_ROOT'].'/upren/images/'; # set upload directory
    $dest = $path.$basename;
    if(file_exists($dest))
    {
        $b = count(glob($path.$filename.'*.'.$extension))+1; # all matches + 1
        for($i = 1; $i < $b; $i++)
        {
            if(!file_exists($path.$filename.$i.'.'.$extension))
            {
                move_uploaded_file($_FILES['file']['tmp_name'],$path.$filename.$i.'.'.$extension);
            }
        }
    }
    else
    {
        move_uploaded_file($_FILES['file']['tmp_name'],$dest);
    }
    ?>
</body>
</html>
