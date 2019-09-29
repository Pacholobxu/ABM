<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php
require_once("Image.php");
$upload_image = $_FILES["image"][ "name" ];
$ext = pathinfo($upload_image, PATHINFO_EXTENSION);
$newN_i=$_POST['iname'].".".$ext;
$form_field = "image";
$upload_path = "./images/";

//assume uploading a jpeg image file.
//This can be determined by file type while uploading and here we do not care about the image since it's not a big deal here.
$image_name = $newN_i;
$width = 100;
$height = 100;

//Create an object of 'Image' class and call to 'upload_image' function which we are going to use here for our process.
$imgObj = new Image();
$upload = $imgObj->upload_image($form_field, $upload_path, $image_name, $width, $height);

if($upload)
{
	echo "Successfully uploaded the image.<br>";
	?>
	<img src="./images/<?php echo $image_name; ?>">
	<?php
}
else
{
	echo "Image uploading was failed.";
}
?>
</body>
</html>
