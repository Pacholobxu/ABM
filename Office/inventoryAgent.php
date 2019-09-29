
<a href="logout.php" target="_parent">Log Out</a>
<div align="right"><a href="sales.php" target="_self">
<img border="0" alt="W3Schools" src="Cart-128s.png" width="80" height="80">View Cart</a></div>
<?php
$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();
$ps=$_SESSION['pw'];
//setcookie("Agent", $ps, time()+30*24*60*60,'/');
//setcookie("Company", $ps, time()+30*24*60*60,'/');
$Agnt=$_COOKIE["Agent"];
$cmp=$_COOKIE["Company"];
$val = ""; //Initialization value; Examples
             //"" When you want to append stuff later
             //0  When you want to add numbers later
//isset()
$val = isset($_SESSION['pw']) ? $_SESSION['pw'] : '';
  $ps=$_SESSION['pw']=$val;
$value = ""; //Initialization value; Examples
             //"" When you want to append stuff later
             //0  When you want to add numbers later
//isset()

$c_id=$_SESSION['cmp']=$value;
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
/*$r=mysqli_query($con,'SELECT
agent.Agent_ID,
agent.Agent_Fname,
agent.`Agent_ Mname`,
agent.Agent_Lname,
agent.Address,
agent.rank
FROM
agent
WHERE
agent.Agent_ID = "'.$ps.'"');
while($r2 = mysqli_fetch_array($r, MYSQLI_NUM))
{ 
echo "<h3>Welcome Agent : ". $r2[1]."</h3>";
}*/

echo "<h3>Welcome Agent : ".$Agnt."</h3>";
$Agent=$_SESSION['agent']=$ps;
//echo "</table>";
$rows1 = mysqli_query($con,"SELECT
inventory.Item_code,
inventory.Item_name,
inventory.Unit_Name,
inventory.Sales_price,
inventory.brand
FROM
inventory");
echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border='1'>"; ?>
<tr>
<td valign="top" width="<strong>38%</strong>">&nbsp;&nbsp;&nbsp;</td>
  <td valign="top" width="<strong>38%</strong>">Item Code</td>
  <td valign="top" width="<strong>62%</strong>">Item Name</td>
  
  <td valign="top" width="<strong>62%</strong>">Brand</td>
  <td valign="top" width="<strong>62%</strong>">Sales Price</td>
</tr>
<?php

?><style type="text/css">
.popup {
	zoom:1.0;
	position:relative;
	text-decoration:none;
}
.popup span {
	position:absolute;
	top:0;
	left:500px;
	width:350px;
	padding:0px;
	
	left:-999em;
	z-index:0;
        
}
.popup:hover {visibility:visible}
.popup:hover span {left:350px;}
* html .popup span {position:absolute;}
.submit_btn {
  background: url(image1.png) 0 0 transparent;
  border: medium none !important;
  width: 150px;
  height: 45px;
  color: transparent;
}
</style><?php
while($row2 = mysqli_fetch_array($rows1))
{ 
echo "<tr><form method='get' action='sales.php' name='myForm'><td width='<strong>38%</strong>' height= '<strong>38%</strong>'><input type='hidden' name='Item_code' value='$row2[0]' ><input type='text' name='custId_Q' value='' maxlength='8' size='8' placeholder='quantity'><input type='image' src='Add2Cart.png' ></td></form><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[0] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'><p class='popup'>"  . $row2[1] . "<span><img src='pic/". $row2[0] .".jpg'></span></p></td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[4] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[3] . "</td></tr>";  //$row['index'] the index here is a field name
}

echo "</table>";

//echo "<br>".$rows;
//session_destroy();
?>
