<?php

session_start();
include('db.php');
$status="";
function delproduct($pd_code1) {
 $con = mysqli_connect("localhost","root","","allphptricks");
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
		}
 $pd_code1;
   // $sql = "DELETE FROM `product_sale_agent` WHERE code='$pd_code1'";
   $update=mysqli_query($con,"update product_sale_agent set qty = '0' where code= '$pd_code1'");
 //  $update=mysqli_query($con,"update product_sale_agent set qty = '$val_qty' where code= '$pcode'");
	
}
if (isset($_POST['action']) && $_POST['action']=="remove"){
if(!empty($_SESSION["shopping_cart"])) {
	foreach($_SESSION["shopping_cart"] as $key => $value) {
		if($_POST["code"] == $key){
		$pd_code1=$_POST["code"];
	//echo "<br>";
		unset($_SESSION["shopping_cart"][$key]);
		
		$status = "<div class='box' style='color:red;'>
		Product is removed from your cart!</div>";
		// $delete=mysqli_query($con,"DELETE FROM `product_sale_agent` WHERE code=$pd_code1");
		delproduct($pd_code1);
		//unset($_SESSION["shopping_cart"][$key]);
		$status = "<div class='box' style='color:red;'>
		Product is removed from your cart!</div>";
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
  	
}

?>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="shortcut icon" href="aile_bioline_fabicon_D8i_icon.ico"  />
<title>Aile Bioline &#8211; Your Pathway to Good Healthcare</title>
<link rel='stylesheet' href='css/style.css' type='text/css' media='all' />

</head>

<body>
<div style="width:700px; margin:50 auto;">

<h2>Shopping Cart</h2>   

<?php
if(!empty($_SESSION["shopping_cart"])) {
$cart_count = count(array_keys($_SESSION["shopping_cart"]));
?>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
<script type="text/javascript">
var auto_refresh = setInterval(
function ()
{
$('#load_tweets').load('aglist.php').fadeIn("slow");
}, 1000); // refresh every 10000 milliseconds
</script>
<div id="load_tweets" style="position: fixed;
  right: 10;
  top: 20%;
  width: 15em;
  margin-top: -2.5em;"> </div>
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
<input type='hidden' name='code' value="<?php echo $product["code"]; ?>" />
<input type='hidden' name='action' value="remove" />
<button type='submit' class='remove'>Remove Item</button>
</form>
</td>
<td>
<form method='post' action=''>
<input type='hidden' name='code' value="<?php echo $product["code"]; ?>" />
<input type='hidden' name='action' value="change" />
<input type="text" value="" name="quantity" class="quantity" onChange="this.form.submit()">

</form>
</td>
<td><?php echo "P".$product["price"]; ?></td>
<td><?php echo "P".$product["price"]*$product["quantity"]; ?></td>
</tr>
<?php

$captcha_num = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz';
$shuffled = substr(str_shuffle($captcha_num), 0, 6);

//getName($n); 
$total_price += ($product["price"]*$product["quantity"]);
$prd_cd=$product["code"];
$_SESSION["pcode"]=$prd_cd;
$qty=$product["quantity"];
$_SESSION["qty"]=$qty;
//$ref="S2019-".$agent;
//$_SESSION['ref']=$ref;
//$agent;
//$insrt=mysqli_query($con,"INSERT INTO `product_sale_agent` VALUES ('$agent', '$prd_cd', '$qty','$cmp_id','$date','$shuffled')");
}


?>
<tr><form method="post" action="check_out.php">
<td colspan="5" align="right">
<strong>TOTAL: <?php $_SESSION["t_price"]=$total_price; echo "P".$total_price; ?></strong>&nbsp;&nbsp;&nbsp;<input style="width:200px; height:50px; background-color:#FFCC33; border-radius: 15px" type="submit" value="Poceed to Check Out <?php $_SESSION["CC"]=$cart_count; echo $cart_count; ?>"
</td></td></form>
</tr>
</tbody>
</table>		
  <?php
  }
else{
	echo "<h3>Your cart is empty!</h3>";
	}
?>

<a href="../allphptricks/empty_cartap.php"> HOME</a><a href="../allphptricks/index.php">|| Store</a><a href="indexscrP.php" target="_self">|| ProSearch</a></div></div>

<div style="clear:both;"></div>

<div class="message_box" style="margin:10px 0px;">
<?php echo $status; ?>
</div>


<br />
</div>
</body>
</html>