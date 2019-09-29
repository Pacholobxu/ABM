<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php
echo $_POST['cust_id']."<br>";
echo $_POST['discount'];
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
 // $insrt=mysqli_query($con,"INSERT INTO `discount` VALUES ('ailebioline', '50%')");
?>
</body>
</html>
