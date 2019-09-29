<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php 

        if(isset($_POST['submit'])){
          if (isset ($_FILES['new_image'])){
              $imagename = $_FILES['new_image']['name'];
			//  $ext = end(explode('.',$_FILES['new_image']['name']));
 //$ext;
 $tmp = explode('.', $imagename);
$ext = end($tmp);
              $source = $_FILES['new_image']['tmp_name'];
              $target = "images/".$imagename;
              move_uploaded_file($source, $target);

              $imagepath = $imagename;
              $save = "images/" . $imagepath; //This is the new file you saving
              $file = "images/" . $imagepath; //This is the original file

              list($width, $height) = getimagesize($file) ;

              $modwidth = 500;

              $diff = $width / $modwidth;

              $modheight = $height / $diff;
              $tn = imagecreatetruecolor($modwidth, $modheight) ;
           if ($ext=="jpeg"){
		      $image = imagecreatefromjpeg($file) ;
			//  $imagename = $_FILES['new_image']['name'];
			 // $image = imagecreatefrompng($file) ;
              imagecopyresampled($tn, $image, 0, 0, 0, 0, $modwidth, $modheight, $width, $height) ;

              imagejpeg($tn, $save, 100) ;
}else{
 $image = $image = imagecreatefrompng($file) ;
			//  $imagename = $_FILES['new_image']['name'];
			 // $image = imagecreatefrompng($file) ;
              imagecopyresampled($tn, $image, 0, 0, 0, 0, $modwidth, $modheight, $width, $height) ;

              imagejpeg($tn, $save, 100) ;


}
 /*
              $save = "images/sml_" . $imagepath; //This is the new file you saving
              $file = "images/" . $imagepath; //This is the original file

              list($width, $height) = getimagesize($file) ;

              $modwidth = 80;

              $diff = $width / $modwidth;

              $modheight = $height / $diff;
              $tn = imagecreatetruecolor($modwidth, $modheight) ;
              $image = imagecreatefromjpeg($file) ;
              imagecopyresampled($tn, $image, 0, 0, 0, 0, $modwidth, $modheight, $width, $height) ;

              imagejpeg($tn, $save, 100) ; */
            echo "Large image: <img src='images/".$imagepath."'><br>";
            //echo "Thumbnail: <img src='images/sml_".$imagepath."'>";

          }
        }
?>
</body>
</html>
