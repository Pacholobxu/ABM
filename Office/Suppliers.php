<ul><li><a href="admDasboard1.php" target="_parent">Admin Dash Board</a></li><li><a href="logout.php" target="_parent">Log Out</a></li></ul>
<?php

mysql_connect("localhost", "root", "") or die(mysql_error());
//echo "Connected to MySQL<br />";
mysql_select_db("ailibioline") or die(mysql_error());
//echo "Connected to Database";

//echo "</table>";
$rows1 = mysql_query("SELECT
supplier.supp_name,
supplier.supp_code,
supplier.supp_add,
supplier.supp_email,
supplier.supp_creditlimit,
supplier.supp_bankacct,
supplier.supp_contact,
supplier.suppID
FROM
supplier");
echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border='1'>"; ?>

<tr>
  <td valign="top" width="&lt;strong&gt;38%&lt;/strong&gt;" bgcolor="#0099FF">Supplier Name</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;" bgcolor="#0099FF">Supplier Code</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;" bgcolor="#0099FF">Supplier Address</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;" bgcolor="#0099FF">Supplier Email</td>
  <td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;" bgcolor="#0099FF">Supplier Creditlimit</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;" bgcolor="#0099FF">Supplier Bankacct</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;" bgcolor="#0099FF">Supplier Contact</td>
<td valign="top" width="&lt;strong&gt;62%&lt;/strong&gt;" bgcolor="#0099FF">Supplier ID</td>

</tr>
<?php
while($row2 = mysql_fetch_array($rows1, MYSQL_NUM))
{
echo "<tr><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[0] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[1] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[2] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[3] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[4] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[5] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[6] . "</td><td width='<strong>38%</strong>' height= '<strong>38%</strong>'>" . $row2[7] . "</td></tr>";  //$row['index'] the index here is a field name
}

echo "</table>";
//echo "<br>".$rows;
?>