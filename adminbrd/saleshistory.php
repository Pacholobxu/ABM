<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php
 include("conM.php");
 

//if ($Agnt!=""){
// $insrt=mysqli_query($con,"insert into agsales_cart VALUES ('$Agnt','$quan','$cmp','$ITcode','$date','')");

//}


echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr bgcolor="#33FF99">

  <td valign="top" width="<strong>38%</strong>">Agent Area</td>
  <td valign="top" width="<strong>62%</strong>">Quantity</td>
  
  <td valign="top" width="<strong>62%</strong>">Agent</td>
  <td valign="top" width="<strong>62%</strong>">Sales Code</td>
  
  <td valign="top" width="<strong>62%</strong>">Date Purchase</td>
  
</tr>
<?php
//$a=1;
//echo $Agnt;
$result=mysqli_query($con,'SELECT
agsales_cart.Agent_ID,
agsales_cart.Qty,
agsales_cart.C_id,
agsales_cart.Item_code,
agsales_cart.Date,
agsales_cart.Scode,
agsales_cart.AprvDiscount
FROM
agsales_cart
');
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td align="right"><?php echo $row[0]; ?>
  </td><td><?php echo $row['Scode']; ?></td><td><?php echo $_SESSION["agentsales"]=$row['Scode']; ?></td><td><?php echo $row['Item_code']; ?></td><td><?php echo $row['Date']; ?></td></tr>
  
	<?php
	
	
   }
   
  ?><tr></tr>
</body>
</html>
