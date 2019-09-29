<?php

$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();

include('db.php');
$agent=$_SESSION['agent_id'];
$cmp_id=$_SESSION['ABMcusCom_id']; 
//echo $_SESSION['ABMcusCom'];
//$cod=$_POST["code"];

//unset($_SESSION['showUpdated'];
//unset($_SESSION['shopping_cart']); to empty cart after transaction
date_default_timezone_set('Asia/Manila');
 $date = date('Y-m-d');
 function delproduct($pd_code1) {
 $con = mysqli_connect("localhost","root","","allphptricks");
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
		}
echo $pd_code1;
   // $sql = "DELETE FROM `product_sale_agent` WHERE code='$pd_code1'";
   $update=mysqli_query($con,"update product_sale_agent set qty = '0' where code= '$pd_code1'");
	
}
$status="";
if (isset($_POST['action']) && $_POST['action']=="remove"){
if(!empty($_SESSION["shopping_cart"])) {
	foreach($_SESSION["shopping_cart"] as $key => $value) {
		if($_POST["code"] == $key){
		//$pd_code=($_SESSION["shopping_cart"][$key]);
	 $pd_code1=$_POST["code"];
	//echo "<br>";
		unset($_SESSION["shopping_cart"][$key]);
		
		$status = "<div class='box' style='color:red;'>
		Product is removed from your cart!</div>";
		// $delete=mysqli_query($con,"DELETE FROM `product_sale_agent` WHERE code=$pd_code1");
		delproduct($pd_code1);
		}
		if(empty($_SESSION["shopping_cart"]))
		unset($_SESSION["shopping_cart"]);
			}		
		}
}

if (isset($_POST['action']) && $_POST['action']=="change"){
  foreach($_SESSION["shopping_cart"] as &$value){
    if($value['code'] === $_POST["code"]){
        $value['quantity'] = $_POST["quantity"];
		$pcode=$value['code'];
		$val_qty=$value['quantity'];
		$update=mysqli_query($con,"update product_sale_agent set qty = '$val_qty' where code= '$pcode'");
        break; // Stop the loop after we've found the product
    }
}
  	
}?>
<html>
<head><style>
body {
  margin: 0;
  font-size: 28px;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}

#navbar {
  overflow: hidden;
  background-color:#18acb7;
 
}

#navbar a {
  float: left;
  display: block;
  color:#000000;
  
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 14px;


}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar a.active {
  background-color: #4CAF50;
  color: white;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}
.style2 {font-size: 16px}

    </style>
<title>Aile - Bioline Marketing</title>
<link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
</head>
<body>

<script>
    $('title').html('Aile Bioline');

   </script>
  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
  <div style="width:1000px; margin:50 auto;">

<h2>Shopping Cart</h2>   

<?php
if(!empty($_SESSION["shopping_cart"])) {
$cart_count = count(array_keys($_SESSION["shopping_cart"]));
?>
<?php
$_SESSION["c_count"]=$cart_count;
}
?>
<div class="cart">
<?php
if(isset($_SESSION["shopping_cart"])){
    $total_price = 0;
?>	
<table class="table">
<tbody>
<tr>
<td></td>
<td>ITEM NAME</td>
<td>QUANTITY</td>
<td>UNIT PRICE</td>
<td>ITEMS TOTAL</td>
</tr>	
<?php		
foreach ($_SESSION["shopping_cart"] as $product){
?>
<tr>
<td><img src='<?php echo $product["image"]; ?>' width="50" height="40" /></td>
<td><?php echo $product["name"]; ?><br />
<form method='post' action=''>
<input type='hidden' name='code' value="<?php  echo $product["code"]; ?>" />
<input type='hidden' name='action' value="remove" />

</form>
</td>
<td align="center"><?php echo $product["quantity"]; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;X</td>
<td><?php  echo "P".$product["price"]; ?></td>
<td><?php echo "P".$product["price"]*$qty=$product["quantity"]; ?></td>
</tr>
<?php
$total_price += ($product["price"]*$product["quantity"]);
$prd_cd=$product["code"];
$_SESSION["pcode"]=$prd_cd;
$qty=$product["quantity"];
$_SESSION["qty"]=$qty;
//$agent;
$insrt=mysqli_query($con,"INSERT INTO `product_sale_agent` VALUES ('$agent', '$prd_cd', '$qty','$cmp_id','$date')");
}

?>
<tr>
<td colspan="5" align="right">
<strong>TOTAL: <?php $_SESSION["t_price"]=$total_price; echo "P &nbsp;".$total_price; ?></strong>
</td></td>
</tr>
</tbody>
</table>		
  <?php
}else{
	echo "<h3>Your cart is empty!</h3>";
	}
?>


<div style="clear:both;"></div>

<div class="message_box" style="margin:10px 0px;"><span class="message_box" style="margin:10px 0px;"><?php echo $status; ?></span></div>


<br />
<div align="center">
<a href="../index.html"> HOME</a></div></div>
</div>
</body>
</html>