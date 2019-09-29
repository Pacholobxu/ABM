<?php
$myuserFname = $_POST['Fname']."<br>";
$myuserLname = $_POST['Lname']."<br>";
 $targetfolder = "PO/";

 $targetfolder = $targetfolder . basename( $_FILES['file']['name']) ;

if(move_uploaded_file($_FILES['file']['tmp_name'], $targetfolder)&& !$myuserLname !="")

 {

 basename( $_FILES['file']['name']);
echo "Transaction Complete";
 }

 else {

 echo "Problem Transaction in Completing";

 }

 ?>
