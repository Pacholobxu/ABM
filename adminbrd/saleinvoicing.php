<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="shortcut icon" href="../wp-content/uploads/2018/04/aile-bioline-fabicon.png"  />
<title>Aile Bioline &#8211; Your Pathway to Good Healthcare</title>
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

  <td valign="top" width="<strong>38%</strong>">Invoice ID</td>
  <td valign="top" width="<strong>62%</strong>">date</td>
  
  <td valign="top" width="<strong>62%</strong>">Sales billing address</td>
  <td valign="top" width="<strong>62%</strong>">Description</td>
  
  <td valign="top" width="<strong>62%</strong>">Discount</td>
  <td valign="top" width="<strong>62%</strong>">Tax inclusive</td>
  <td valign="top" width="<strong>62%</strong>">OS Number</td>
  <td valign="top" width="<strong>62%</strong>">PO Number</td>
  <td valign="top" width="<strong>62%</strong>">Reference</td>
  <td valign="top" width="<strong>62%</strong>">Sales Code</td>
  <td valign="top" width="<strong>62%</strong>">Month sales</td>
  <td valign="top" width="<strong>62%</strong>">Terms</td>
  <td valign="top" width="<strong>62%</strong>">Note</td>
  <td valign="top" width="<strong>62%</strong>">Status Stock</td>
  <td valign="top" width="<strong>62%</strong>">Reason Cancellation</td>
  <td valign="top" width="<strong>62%</strong>">Invoice Code</td>
  <td valign="top" width="<strong>62%</strong>">Type of bill</td>
  <td valign="top" width="<strong>62%</strong>">Invoice Number</td>
  <td valign="top" width="<strong>62%</strong>">Approval date</td>
  <td valign="top" width="<strong>62%</strong>">Company Name</td>
  <td valign="top" width="<strong>62%</strong>">S.O. Number</td>
 
  
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
  </td><td><?php echo $row[1]; ?></td><td><?php echo $row[2]; ?></td><td><?php echo $row[3]; ?></td><td><?php echo $row[4]; ?></td><td><?php echo $row[5]; ?></td><td><?php echo $row[6]; ?></td><td><?php echo $row[7]; ?></td><td><?php echo $row[8]; ?></td><td><?php echo $row[9]; ?></td><td><?php echo $row[10]; ?></td><td><?php echo $row[11]; ?></td><td><?php echo $row[12]; ?></td><td><?php echo $row[13]; ?></td><td><?php echo $row[14]; ?></td><td><?php echo $row[15]; ?></td><td><?php echo $row[16]; ?></td><td><?php echo $row[17]; ?></td><td><?php echo $row[18]; ?></td><td><?php echo $row[19]; ?></td><td><?php echo $row[20]; ?></td></tr>
  
	<?php
	
	
   }
   
  ?><tr></tr>

</body>
</html>
