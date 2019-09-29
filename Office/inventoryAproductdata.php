<ul><li><a href="admDasboard1.php" target="_parent">Admin Dash Board</a></li><li><a href="logout.php" target="_parent">Log Out</a></li></ul>
<?php
//if($pw=="" or $ps == ""){
$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();
$con = mysqli_connect("localhost","root","","ailebioline");

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

//echo "</table>";
$rows1=mysqli_query($con,"SELECT
inventory.purchase_price,
inventory.sales_price,
inventory.item_descript,
inventory.item_brand,
inventory.itemCode,
inventory.item_name,
inventory.unit_name,
inventory.tax_code,
inventory.custom_inc_acct,
inventory.custom_exp_acct,
inventory.max_disc,
inventory.pricefloor,
inventory.Qty_rec,
inventory.Qty_onhand,
inventory.Qty_todeliver,
inventory.Qty_owned,
inventory.Ave_Cost,
inventory.Tot_cost,
inventory.reference,
inventory.ID,
inventory.dateexpire,
inventory.deldate,
inventory.suppID,
inventory.supp_name
FROM
inventory
");
echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border='1'>"; ?>

<tr>
  <td valign="top" width="&lt;strong&gt;38%&lt;/strong&gt;">Item Code</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Item Name</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Sales Price</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Brand</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Tax Code</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Unit Name</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Customer Income Account</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Customer Expense Account</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Max Discount</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;">Price Floor</td>
</tr>
<?php
while($row2 = mysqli_fetch_array($rows1))

{
echo "<tr><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[4] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[5] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[1] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[3] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[4] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[6] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[8] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[9] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[10] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[11] . "</td></tr>";  //$row['index'] the index here is a field name
}

echo "</table>";
/*}else {

header('Location: ../index.html');
}
*/
//echo "<br>".$rows;
?>