<?php
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
 
  $Scd = $_GET["scode"];
 //echo $presyo=$_GET["prc"];
 // $Scd="17";
 //mysqli_query($con,"delete from agsales_cart where agsales_cart.Scode = "'.$Scd.'"");
  $del=mysqli_query($con,"delete from agsales_cart where agsales_cart.Scode = '$Scd'");
  if ($del){
  echo "<script type='text/javascript'>window.location.assign('inventoryAgent.php');</script>";
  }
?>