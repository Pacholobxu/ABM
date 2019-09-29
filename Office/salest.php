<?php
session_start();

echo "<div align='center'>Agent Pacholo Cart</div>";
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
//$month = date('m');
date_default_timezone_set('Asia/Manila');
 $date = date('Y-m-d')."<br>";
//$ps=""
$A_ID="101";
 $c_id="abcCM";
 $ITcode=$_GET['Item_code'];
 $quan=$_GET['custId_Q'];
$insrt=mysqli_query($con,"insert into agsales_cart VALUES ('$A_ID','$quan','$c_id','$ITcode','$date','')");



echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr>

  <td valign="top" width="<strong>38%</strong>">Agent</td>
  <td valign="top" width="<strong>62%</strong>">Quantity</td>
  
  <td valign="top" width="<strong>62%</strong>">Item Code</td>
  <td valign="top" width="<strong>62%</strong>">Item Name</td>
  <td valign="top" width="<strong>62%</strong>">Date</td>
</tr>
<?php
$result=mysqli_query($con,'SELECT
inventory.Sales_price,
agsales_cart.Agent_ID,
agsales_cart.Qty,
agsales_cart.C_id,
inventory.Item_name,
inventory.Item_code,
agsales_cart.Scode,
agsales_cart.Date
FROM
agsales_cart
INNER JOIN inventory ON agsales_cart.Item_code = inventory.Item_code
WHERE
agsales_cart.Agent_ID="'.$A_ID.'"
');
/*$result=mysqli_query($con'SELECT
inventory.Item_name,
agsales_cart.Agent_ID,
agsales_cart.Qty,
agsales_cart.C_id,
agsales_cart.Item_code,
agsales_cart.Date
FROM
agsales_cart
INNER JOIN inventory ON agsales_cart.Item_code = inventory.Item_code
WHERE
agsales_cart.Agent_ID = "'.$A_ID.'" AND
agsales_cart.Item_code = inventory.Item_code
');*/
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td><?php echo $row[1]; ?></td><td><?php echo $row[2]; ?></td><td><?php echo $row[4]; ?></td><td><?php echo $row[0]; ?></td><td><?php echo $row[5]; ?></td></tr>
	<?php
   }
   
  
?>
<div align="center"><a href="inventoryAgent.php" target="_parent">Back to  product list click here</a></div>

