<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
 
 $Scd = $_GET["scode"];
 // $Scd="17";
 //mysqli_query($con,"delete from agsales_cart where agsales_cart.Scode = "'.$Scd.'"");
  $del=mysqli_query($con,"delete from agsales_cart where agsales_cart.Scode = '$Scd'");
  if ($del){
  echo "<script type='text/javascript'>window.location.assign('salesAdmin.php');</script>";
  }
?>
</body>
</html>
