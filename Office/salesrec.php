<?php
session_start();
$lifetime=600;
session_set_cookie_params( $lifetime);


  //$ps="101";
mysql_connect("localhost", "root", "") or die(mysql_error());
//echo "Connected to MySQL<br />";
mysql_select_db("bioline") or die(mysql_error());
echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr>

  <td valign="top" bgcolor="#0099FF" width="<strong>38%</strong>">Agent</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Quantity</td>
  
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Item Code</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Item Name</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">Date</td>
</tr>
<?php
$result=mysql_query('SELECT
agsales_cart.Agent_ID,
agsales_cart.Qty,
agsales_cart.C_id,
agsales_cart.Item_code,
agsales_cart.Date
FROM
agsales_cart
');
while($row = mysql_fetch_array($result, MYSQL_NUM)) {
    ?>
	<tr><td><?php echo $row[0]; ?></td><td><?php echo $row[1]; ?></td><td><?php echo $row[2]; ?></td><td><?php echo $row[3]; ?></td><td><?php echo $row[4]; ?></td></tr>
	<?php
   }


?>