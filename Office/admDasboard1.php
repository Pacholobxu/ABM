<style>
.topright {
  position: absolute;
  top: 20px;
  right: 16px;
  font-size: 18px;
  z-index: 1;
}</style>
<?php

$lifetime=600;
  session_set_cookie_params($lifetime);
  session_start();


 $ps=$_SESSION['pw'];
 //if($ps==""){
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$r=mysqli_query($con,'SELECT
admin.Emp_Fname,
admin.EmpPw
FROM
admin
WHERE
admin.EmpPw ="'.$ps.'"');
//echo $r;
//$r2 = mysql_fetch_assoc($r)
while($r2 = mysqli_fetch_array($r, MYSQLI_NUM))
{ 
echo "<div class='topright'><img src='../pics/iconpersontr2.png' width='43' height='47' /><h5 align='right'><font color='#FFFFFF' face='Trebuchet MS, Arial, Helvetica, sans-serif' >Welcome  : ". $r2[0]."</font></h5></div>";
}
?>
<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #13acb7;
}

li {
  float: left;
}

li a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}

.active {
  background-color: #0099CC;
}
</style>

</head>
<body>

<ul>
  <li>&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/icon50.png"></li></ul><ul><li><li><a href="inventoryAproductdata.php">Inventory</a></li>
  <li><a href="piechart.php">Monthly Report Agent Sales</a></li>
  <li><a href="product.php">Product</a></li>
  <li><a href="Suppliers.php">Suppliers</a></li>
  <li><a href="Customers.php">Customers</a></li>
</ul>

<img src="images/gui1.png" width="500" height="283" border="0" usemap="#Map">
<map name="Map"><area shape="rect" coords="22,31,143,120" href="inventoryAproductdata.php" ><area shape="rect" coords="196,31,313,119" href="Suppliers.php"><area shape="rect" coords="372,172,489,262" href="Customers.php">
  <area shape="rect" coords="194,174,313,260" href="select.php"><area shape="rect" coords="23,171,142,263" href="pai.php">
</map>
</body>
</html>
<?php
/* }else {

header('Location: ../index.html');
}*/
?>
