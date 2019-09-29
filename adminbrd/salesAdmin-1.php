
<script>
function hide(){
var earrings = document.getElementById('earringstd');
earrings.style.visibility = 'hidden';
}</script>
<?php //ob_start();

$Agnt=$_COOKIE["username"];
function writeMsg() {
$Agnt="101";
include("conM.php");
/* $con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  echo  $ahn=mysqli_query($con,'SELECT
agent.`Agent_ Lname`,
agent.Agent_Fname
FROM
agent
INNER JOIN agsales_cart ON agsales_cart.Agent_ID = agent.Agent_ID
WHERE
agsales_cart.Agent_ID = "'.$Agnt.'"');
//while($agn = mysqli_fetch_array($ahn)) {
while ($agn = $ahn->fetch_assoc()) {
mysqli_fetch_assoc($result);
//echo   $agent=$agn['companyname'];
echo   $agent=$agn['0'];
echo   $agent=$agn['1'];
 //$Ts['Tsale']
}*/
$query = 'SELECT
agent.`Agent_ Lname`,
agent.Agent_Fname
FROM
agent
INNER JOIN agsales_cart ON agsales_cart.Agent_ID = agent.Agent_ID
WHERE
agsales_cart.Agent_ID = "'.$Agnt.'" LIMIT 1';

if ($result = mysqli_query($con, $query)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_assoc($result)) {
   //   ("%s (%s)\n", $row["Agent_ Lname"], $row["Agent_Fname"])
   $agntln= $row["Agent_ Lname"]."&nbsp;".$row["Agent_Fname"];
  $_SESSION['agent_lastn']= $agntln;
	}

    /* free result set */
  //  mysqli_free_result($result);
}
}
echo "<body>";
//$ps=$_SESSION['pw'];
//echo "<p align='center'>Agent Cart</p>";

  
$ahn=mysqli_query($con,'SELECT
agent.Agent_ID,
agent.`Agent_ Lname`
FROM
agent
WHERE
agent.Agent_ID  = "'.$Agnt.'"');
while($agn = mysqli_fetch_array($ahn)) {
  $agent=$agn['0'];
 //$Ts['Tsale']
} //ob_start();
echo "<p align='center'> AGENT ".$Agnt." SALES</p>";
///date_default_timezone_set('Asia/Manila');
 //$date = date('Y-m-d')."<br>";
//$ps=$_SESSION['pw'];
//$A_ID="101";
 // $c_id=$_SESSION['cmp'];
  $val = ""; //Initialization value; Examples
             //"" When you want to append stuff later
             //0  When you want to add numbers later
//isset()
//$val = isset($_GET['Item_code']) ? $_GET['Item_code'] : '';
  // $ITcode=$_GET['Item_code']=$val;
   //$val1 = ""; //Initialization value; Examples
             //"" When you want to append stuff later
             //0  When you want to add numbers later
//isset()
//$val1 = isset($_GET['custId_Q']) ? $_GET['custId_Q'] : '';
  // $ITcode=$_GET['Item_code']=$val;
  //$quan=$_GET['custId_Q']=$val1;
 ?>
 
 

 <?php
 
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
agsales_cart.Agent_ID = '$agnt'");
while($Ts = mysqli_fetch_array($Tsale)) {
 $_SESSION['Tsl']=$Ts['Tsale'];
 //$Ts['Tsale']
}

//if ($Agnt!=""){
// $insrt=mysqli_query($con,"insert into agsales_cart VALUES ('$Agnt','$quan','$cmp','$ITcode','$date','')");

//}


echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr>

  <td valign="top" width="<strong>38%</strong>">Price</td>
  <td valign="top" width="<strong>62%</strong>">Quantity</td>
  
  <td valign="top" width="<strong>62%</strong>">Agent</td>
  <td valign="top" width="<strong>62%</strong>">Item Name</td>
  
  <td valign="top" width="<strong>62%</strong>">Customer Id</td>

</tr>
<?php
//$a=1;
//echo $Agnt;
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
agsales_cart.Agent_ID="'.$agnt.'"
');
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td align="right"><?php echo $row[0]; ?>
  </td><td><?php echo $row['Qty']; ?></td><td><?php echo $_SESSION["agentsales"]=$row['Agent_ID']; ?></td><td><?php echo $row['Item_name']; ?></td><td><?php echo $_SESSION["cus_id1"]=$row['C_id']; ?></td></tr>
  
	<?php
	
	
   }
   
  ?><tr><td align="right"> <?php echo "TOTAL AMOUNT VALUE CART : ". $_SESSION['Tsl']; ?></td></tr>
 


</body>

