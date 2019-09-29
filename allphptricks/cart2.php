<?php

session_start();
$status="";
if (isset($_POST['action']) && $_POST['action']=="remove"){
if(!empty($_SESSION["shopping_cart"])) {
	foreach($_SESSION["shopping_cart"] as $key => $value) {
		if($_POST["code"] == $key){
		unset($_SESSION["shopping_cart"][$key]);
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
        break; // Stop the loop after we've found the product
    }
}
  	
}
?>
<html>
<head>
<title>Aile - Bioline Marketing</title>
<link rel='stylesheet' href='../../allphptricks/css/style.css' type='text/css' media='all' />
</head>
<body>
<div style="width:700px; margin:50 auto;">

<h2>Shopping Cart</h2>   

<?php
if(!empty($_SESSION["shopping_cart"])) {
$cart_count = count(array_keys($_SESSION["shopping_cart"]));
?>
<div class="cart_div">
<a href="../../allphptricks/cart.php">
<img src="../../allphptricks/cart-icon.png" /> Cart
<span><?php echo $cart_count; ?></span></a>
</div>
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
<td><img src='<?php echo $product["../../allphptricks/image"]; ?>' width="50" height="40" /></td>
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
$total_price += ($product["price"]*$product["quantity"]);
}
?>
<tr><form method="post" action="loginform1.html">
<td colspan="5" align="right">
<strong>TOTAL: <?php $_SESSION["t_price"]=$total_price; echo "P".$total_price; ?></strong>&nbsp;&nbsp;&nbsp;<input style="width:200px; height:50px; background-color:#FFCC33; border-radius: 15px" type="submit" value="Poceed to Check Out <?php $_SESSION["CC"]=$cart_count; echo $cart_count; ?>"
</td></td></form>
</tr>
</tbody>
</table>		
  <?php
}else{
	echo "<h3>Your cart is empty!</h3>";
	}
?>
<a href="../../allphptricks/index.php" target="_self">Cont shopping</a>
<a href="../index.html">|| HOME</a></div>

<div style="clear:both;"></div>

<div class="message_box" style="margin:10px 0px;">
<?php echo $status; ?>
</div>


<br />
</div>
</body>
</html>