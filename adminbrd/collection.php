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

  <td valign="top" width="<strong>38%</strong>">Collection ID</td>
  <td valign="top" width="<strong>62%</strong>">Or date</td>
  <td valign="top" width="<strong>62%</strong>">Reference Number</td>
  <td valign="top" width="<strong>62%</strong>">Mode of Payment</td>
  <td valign="top" width="<strong>62%</strong>">Check Number</td>
  <td valign="top" width="<strong>62%</strong>">Check date</td>
  <td valign="top" width="<strong>62%</strong>">Tax</td>
  <td valign="top" width="<strong>62%</strong>">Penalty</td>
  <td valign="top" width="<strong>62%</strong>">Amount collected</td>
  <td valign="top" width="<strong>62%</strong>">Sales Order Number</td>
  <td valign="top" width="<strong>62%</strong>">Invoice Number</td>
  
 
  
</tr>
<?php


$result=mysqli_query($con,'SELECT
collection.id,
collection.ORdate,
collection.RefNo,
collection.checkcash,
collection.checkNo,
collection.checkdate,
collection.withheldtax,
collection.penalty,
collection.amountcoll,
collection.SONo,
collection.InvNo
FROM
collection
');
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td align="right"><?php echo $row[0]; ?>
  </td><td><?php echo $row[1]; ?></td><td><?php echo $row[2]; ?></td><td><?php echo $row[3]; ?></td><td><?php echo $row[4]; ?></td><td><?php echo $row[5]; ?></td><td><?php echo $row[6]; ?></td><td><?php echo $row[7]; ?></td><td><?php echo $row[8]; ?></td><td><?php echo $row[9]; ?></td><td><?php echo $row[10]; ?></tr>
  
	<?php
	
	
   }
   
  ?><tr></tr>

</body>
</html>
