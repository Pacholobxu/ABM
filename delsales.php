<?php
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  $Scd="15"
  $del=mysqli_query($con,'delete from agsales_cart where agsales_cart.Scode = "'.$Scd.'"');
  echo $del;
?>