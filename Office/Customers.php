<li><a href="admDasboard1.php" target="_parent">Admin Dash Board</a></li>

<?php
session_start();
$lifetime=600;
session_set_cookie_params( $lifetime);
$connection = mysql_connect("localhost", "root", "");
// Selecting Database by passing "database_name" and above connection variable.
$db = mysql_select_db("ailibioline", $connection);

//echo "CUSTOMERS LIST";
echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border='1' >"; ?>

<tr>

  <td valign="top" bgcolor="#0099FF" width="<strong>38%</strong>">Customer ID</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Reference</td>
  
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">First Name</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Last Name</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">Company Name</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Business identifier</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">Billing Address</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Delivery address</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Email Address</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">Creditlimit</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Type</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Prop_president/Owner/CEO</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">Line Business</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Cor_num</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Business Phone</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">Home Phone</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Mobile Number</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Faxnumber</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">State/Province</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Zip Code</td>
  <td valign="top" bgcolor="#0099FF" width="<strong>62%</strong>">Notes</td>
  <td valign="top"  bgcolor="#0099FF" width="<strong>62%</strong>">Attachment</td>
  
</tr>
<?php
$result=mysql_query('SELECT
customers.ID,
customers.custID,
customers.reference,
customers.firstname,
customers.lastname,
customers.companyname,
customers.`code`,
customers.bus_identifier,
customers.billing_address,
customers.del_address,
customers.email_add,
customers.creditlimit,
customers.type,
customers.prop_president,
customers.line_bus,
customers.cor_num,
customers.Busphone,
customers.homephone,
customers.mobilenum,
customers.faxnumber,
customers.stateprovince,
customers.zipcode,
customers.notes,
customers.attachments
FROM
customers
');
while($row = mysql_fetch_array($result, MYSQL_NUM)) {
    ?>
	<tr><<td><?php echo $row[1]; ?></td><td><?php echo $row[2]; ?></td><td><?php echo $row[3]; ?></td><td><?php echo $row[4]; ?></td><td><?php echo $row[5]; ?></td><td><?php echo $row[7]; ?></td><td><?php echo $row[8]; ?></td><td><?php echo $row[9]; ?></td><td><?php echo $row[10]; ?></td><td><?php echo $row[11]; ?></td><td><?php echo $row[12]; ?></td><td><?php echo $row[13]; ?></td><td><?php echo $row[14]; ?></td><td><?php echo $row[15]; ?></td><td><?php echo $row[16]; ?></td><td><?php echo $row[17]; ?></td><td><?php echo $row[18]; ?></td><td><?php echo $row[19]; ?></td><td><?php echo $row[20]; ?></td><td><?php echo $row[21]; ?></td><td><?php echo $row[21]; ?></td></tr>
	<?php
   }



?>