<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php

$con = mysqli_connect("localhost","root","","ailebioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
//if ($Agnt!=""){
// $insrt=mysqli_query($con,"insert into agsales_cart VALUES ('$Agnt','$quan','$cmp','$ITcode','$date','')");

//}


echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr bgcolor="#33FF99">

  <td valign="top" width="<strong>38%</strong>">Sales ID</td>
  <td valign="top" width="<strong>62%</strong>">Date Issue</td>
  <td valign="top" width="<strong>62%</strong>">Sales billing addess</td>
  <td valign="top" width="<strong>62%</strong>">Description</td>
  <td valign="top" width="<strong>62%</strong>">Discount</td>
  <td valign="top" width="<strong>62%</strong>">Amnt tax inclusive</td>
  <td valign="top" width="<strong>62%</strong>">Sales Order Number</td>
  
  
 
  
</tr>
<?php


$result=mysqli_query($con,"SELECT
salesorder.salesID,
salesorder.dateissue,
salesorder.salesbill_add,
salesorder.description,
salesorder.discount,
salesorder.amnt_tax_inclusive,
salesorder.OS_No
FROM
salesorder
WHERE
salesorder.reason_cancel = 'Return'
");
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td align="right"><?php echo $row[0]; ?>
  </td><td><?php echo $row[1]; ?></td><td><?php echo $row[2]; ?></td><td><?php echo $row[3]; ?></td><td><?php echo $row[4]; ?></td><td><?php echo $row[5]; ?></td><td><?php echo $row[6]; ?></td></tr>
  
	<?php
	
	
   }
   
  ?><tr></tr>

</body>
</html>
