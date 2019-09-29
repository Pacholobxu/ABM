<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php


if(isset($_POST["submit"])) {
    if(is_array($_FILES)) {

$picN=$_POST['p_name'];
 "<br>";
//$_FILES['image']['name']
      $uploadedFile = $_FILES['image']['tmp_name']; 
        $sourceProperties = getimagesize($uploadedFile);
     $newFileName = $picN;
        $dirPath = "product/";
        $ext = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $imageType = $sourceProperties[2];


        switch ($imageType) {


            case IMAGETYPE_PNG:
                $imageSrc = imagecreatefrompng($uploadedFile); 
                $tmp = imageResize($imageSrc,$sourceProperties[0],$sourceProperties[1]);
                imagepng($tmp,$dirPath. $newFileName. "_100dm.". $ext);
                break;           

            case IMAGETYPE_JPEG:
                $imageSrc = imagecreatefromjpeg($uploadedFile); 
                $tmp = imageResize($imageSrc,$sourceProperties[0],$sourceProperties[1]);
                imagejpeg($tmp,$dirPath. $newFileName. "_100dm.". $ext);
                break;
            
            case IMAGETYPE_GIF:
                $imageSrc = imagecreatefromgif($uploadedFile); 
                $tmp = imageResize($imageSrc,$sourceProperties[0],$sourceProperties[1]);
                imagegif($tmp,$dirPath. $newFileName. "_100dm.". $ext);
                break;

            default:
                echo "Invalid Image type.";
                exit;
                break;
        }

//$dirPathSmall="p_items/";
        move_uploaded_file($uploadedFile, $dirPath. $newFileName. ".". $ext);
       echo "Image Resize Successfully.";
    }
}


function imageResize($imageSrc,$imageWidth,$imageHeight) {

    $newImageWidth =100;
    $newImageHeight =100;

    $newImageLayer=imagecreatetruecolor($newImageWidth,$newImageHeight);
    imagecopyresampled($newImageLayer,$imageSrc,0,0,0,0,$newImageWidth,$newImageHeight,$imageWidth,$imageHeight);

    return $newImageLayer;
}
?>
</body>
</html>
