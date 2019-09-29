<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="shortcut icon" href="aile_bioline_fabicon_D8i_icon.ico"  />
<title>Aile Bioline &#8211; Your Pathway to Good Healthcare</title>
<link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
<style>
.topnav {
    background-color:#0099FF;
    overflow: hidden;
	 margin: auto;
  width: 50%;
 
  padding: 8px;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

/* Right-aligned section inside the top navigation */
.topnav-right {
  margin: auto;
  width: 50%;
 
  padding: 10px;
}
</style>
</head>

<body><div class="topnav" align="center">
  <a href="empty_carthome.php">Home</a>
  <a href="empty_cart_G_Store.php">Book Another Customer Click HERE</a>
  
</div>
<p align="center">
<h4 align="center" style="font-family:'Trebuchet MS'">THANK YOU FOR YOUR TIME </h4>
<h3 align="center"  style=" font:'Trebuchet MS'; color:#0099FF;">The Items you bougth will be delevered to the delevery address you fill-up during the application for a membership to the company AILE BIOLINE MARKITING</h3>
<?php
session_start();
/* include('db.php');
$agent=$_SESSION['agent_id'];
$cmp_id=$_SESSION['ABMcusCom_id']; 
*/
$agent=$_SESSION['agent_id'];
//echo $rf=$_SESSION['ref'];
include('cart_list.php');
//$insrt=mysqli_query($con,"INSERT INTO `product_sale_agent` VALUES ('$agent', '$prd_cd', '$qty','$cmp_id','$date')");
echo "<h5 align='center' style='font-family:'Trebuchet MS''>The Total price of your items is"."   : </h5> <h1> P ".$_SESSION["t_price"]."<h1>";
?>
</body>
</html>
