<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php 
$upload_image = $_FILES["image1"][ "name" ];
$ext = pathinfo($upload_image, PATHINFO_EXTENSION);
$newN_i=$_POST['nName_i'].".".$ext;

//$upload_image = $_FILES["image1"][ "name" ];

$folder = "/xampp/htdocs/ABM/upren/uploads/";

move_uploaded_file($_FILES["image1"]["tmp_name"], "$folder"."$newN_i");
echo $newN_i;
$file = $folder.$newN_i; 

?>
</body>
</html>
