<style>
.body {background-color:#00CCFF;
}
html {
  background-color: #00CCFF; 
}

}
</style>
<?php
session_start();
echo "<body>";
$ps=$_SESSION['pw'];
echo "<p align='center'>Agent Pacholo Cart</p>";
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
date_default_timezone_set('Asia/Manila');
 $date = date('Y-m-d')."<br>";

//$A_ID="101";
 $c_id=$_SESSION['cmp'];
$val = ""; //Initialization value; Examples
             //"" When you want to append stuff later
             //0  When you want to add numbers later
//isset()
$val = isset($_GET['Item_code']) ? $_GET['Item_code'] : '';
 $ITcode=$_GET['Item_code']=$val;
 $valq = ""; //Initialization value; Examples
             //"" When you want to append stuff later
             //0  When you want to add numbers later
//isset()
$valq = isset($_GET['custId_Q']) ? $_GET['custId_Q'] : '';
$quan=$_GET['custId_Q']=$valq;
 
 $Tsale=mysqli_query($con,"SELECT
agsales_cart.Item_code,
inventory.Item_code,
Sum(inventory.Sales_price*agsales_cart.Qty) AS Tsale,
agsales_cart.Agent_ID,
agsales_cart.Qty
FROM
inventory
INNER JOIN agsales_cart ON agsales_cart.Item_code = inventory.Item_code
WHERE
agsales_cart.Agent_ID = '$ps'");
while($Ts = mysqli_fetch_array($Tsale)) {
 $_SESSION['Tsl']=$Ts['Tsale'];
// $Ts['Tsale']
}

if ($ps!=""){
$insrt=mysqli_query($con,"insert into agsales_cart VALUES ('$ps','$quan','$c_id','$ITcode','$date','')");
}


echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr>

  <td valign="top" width="<strong>38%</strong>">Price</td>
  <td valign="top" width="<strong>62%</strong>">Quantity</td>
  
  <td valign="top" width="<strong>62%</strong>">Agent</td>
  <td valign="top" width="<strong>62%</strong>">Item Name</td>
  <td valign="top" width="<strong>62%</strong>">Item Code</td>
  <td valign="top" width="<strong>62%</strong>">Customer Id</td>
  <td valign="top" width="<strong>62%</strong>">Action</td>
</tr>
<?php
$a=1;
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
agsales_cart.Agent_ID="'.$ps.'"
');
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td align="right"><?php echo $row[0]; ?></td><td><?php echo $row['Qty']; ?></td><td><?php echo $row['Agent_ID']; ?></td><td><?php echo $row['Item_name']; ?></td><td><?php echo $row['Item_code']; ?></td><td><?php echo $row['C_id']; ?></td><td><a onClick="return confirm('Are you sure to you want to cancel your order?')" href="delsales.php?scode=<?php echo $row[6]; ?>">cancel</a></td></tr>
	<?php
	
	
   }
   
  ?><tr><td align="right"> <?php echo "TOTAL AMOUNT VALUE CART : ". $_SESSION['Tsl']; ?></td></tr>
 

<div align="center"><a href="inventoryAgent.php" target="_parent">Back to  product list click here</a></div>

<body>
