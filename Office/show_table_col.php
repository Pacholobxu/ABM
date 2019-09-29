<?php

mysql_connect("localhost", "root", "") or die(mysql_error());
//echo "Connected to MySQL<br />";
mysql_select_db("bioline") or die(mysql_error());
//echo "Connected to Database";
//$rows = mysql_query("SHOW COLUMNS FROM inventory");
//echo "<table border='1'>";
/*while($row = mysql_fetch_assoc($rows))
{
   echo "<input type='checkbox' name='Field_N[]' value='".$row['Field']."'>".$row['Field'];
   
}*/
//echo "</table>";
$rows1 = mysql_query("Select * FROM inventory");
echo "<table border='1' align='center'><tr><th>Item Code</th><th>Unit Name</th><th>Purchase_price</th><th>Sales_price</th><th>Description</th><th>taxCode</th><th>tracking_code</th><th>custom_income_accnt</th><th>custom_expense_accnt</th><th>brand</th><th>max_discount</th><th>Price Floor</th></tr>";
while($row2 = mysql_fetch_array($rows1, MYSQL_NUM))
{
echo "<tr><td>" . $row2[0] . "</td><td>" . $row2[1] . "</td><td>" . $row2[3] . "</td><td>" . $row2[4] . "</td><td>" . $row2[2] . "</td><td>" . $row2[6] . "</td><td>" . $row2[7] . "</td><td>" . $row2[8] . "</td><td>" . $row2[9] . "</td><td>" . $row2[10] . "</td><td>" . $row2[11] . "</td><td>" . $row2[11] . "</td><td></tr></tr></tr></tr></tr>";  //$row['index'] the index here is a field name
}

echo "</table>";
//echo "<br>".$rows;
?>