<?php

echo $Cname = $_POST["Fname"];
echo $Lname = $_POST["Lname"];
$target_dir = "PO/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        echo $uploadOk = 1;
    } else {
        echo "File is not an image.";
       echo  $uploadOk = 0;
    }
}
?>