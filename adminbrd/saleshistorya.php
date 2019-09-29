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
<tr>

  <td valign="top" width="<strong>38%</strong>">Agent Area</td>
  <td valign="top" width="<strong>62%</strong>">Quantity</td>
  
  <td valign="top" width="<strong>62%</strong>">Agent</td>
  <td valign="top" width="<strong>62%</strong>">Sales Code</td>
  
  <td valign="top" width="<strong>62%</strong>">Date Purchase</td>
  
</tr>
<?php


$result=mysqli_query($con,'SELECT
salesinvoice.InvID,
salesinvoice.date,
salesinvoice.salesbill_add,
salesinvoice.description,
salesinvoice.discount,
salesinvoice.amnt_tax_inclusive,
salesinvoice.OS_No,
salesinvoice.PO_No,
salesinvoice.reference,
salesinvoice.sales_code,
salesinvoice.month_sales,
salesinvoice.terms,
salesinvoice.note,
salesinvoice.statusstock,
salesinvoice.reason_cancel,
salesinvoice.invoicecode,
salesinvoice.typeofbill,
salesinvoice.InvNo,
salesinvoice.`approval date`,
salesinvoice.companyname,
salesinvoice.SONo
FROM
salesinvoice

');
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td align="right"><?php echo $row[0]; ?>
  </td><td><?php echo $row['Scode']; ?></td><td><?php echo $_SESSION["agentsales"]=$row['Scode']; ?></td><td><?php echo $row['Item_code']; ?></td><td><?php echo $row['Date']; ?></td></tr>
  
	<?php
	
	
   }
   
  ?><tr></tr>
  <a href="saleshistorya.php?id=2" target="_self">2</a>
</body>
</html>
