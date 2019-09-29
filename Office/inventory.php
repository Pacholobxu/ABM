<?php

mysql_connect("localhost", "root", "") or die(mysql_error());
//echo "Connected to MySQL<br />";
mysql_select_db("bioline") or die(mysql_error());
//echo "Connected to Database";

//echo "</table>";
$rows1 = mysql_query("SELECT
inventory.ItemCode,
inventory.ItemName,
inventory.UnitName,
inventory.brand,
inventory.Sales_price
FROM
inventory");
echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border='1'>"; ?>
<tr>
  <td valign="top" width="<strong>38%</strong>">Item Code</td>
  <td valign="top" width="<strong>62%</strong>">Item Name</td>
  <td valign="top" width="<strong>62%</strong>">Unit Name</td>
  <td valign="top" width="<strong>62%</strong>">Brand</td>
  <td valign="top" width="<strong>62%</strong>">Sales Price</td>
</tr>
<?php
while($row2 = mysql_fetch_array($rows1, MYSQL_NUM))
{
echo "<tr><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[0] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[1] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[2] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[3] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[4] . "</td></tr>";  //$row['index'] the index here is a field name
}

echo "</table>";
//echo "<br>".$rows;
?>