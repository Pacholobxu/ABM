
<?php

session_start();
//echo $_SESSION['ABMcusCom_id']."<br>";
echo $agent=$_SESSION['agent_id'];
date_default_timezone_set('Asia/Manila');


echo $_SESSION['ABMcusCom_id']."<br>";
echo $date=date('l jS \of F Y h:i:s A')."<br>";
$date=date('l jS \of F Y h:i:s A');
echo "ref =".$shuffled=date(DATE_RFC2822)."<br>";
$shuffled=date(DATE_RFC2822);
//$cmp_id=$_SESSION['ABMcusCom_id'];
include('db.php');
//echo $agent=$_SESSION["agent_id"]."<br>";
//echo date(DATE_RFC2822)."<br>";
$status="";
if (isset($_POST['code']) && $_POST['code']!=""){
$code = $_POST['code'];
$result = mysqli_query($con,"SELECT * FROM `products` WHERE `code`='$code'");
$row = mysqli_fetch_assoc($result);
$name = $row['name'];
$code = $row['code'];
$price = $row['price'];
$image = $row['image'];

$cartArray = array(
	$code=>array(
	'name'=>$name,
	'code'=>$code,
	'price'=>$price,
	'quantity'=>1,
	'image'=>$image)
);

if(empty($_SESSION["shopping_cart"])) {
	$_SESSION["shopping_cart"] = $cartArray;
	$status = "<div class='box'>Product is added to your cart!</div>";
}else{
	$array_keys = array_keys($_SESSION["shopping_cart"]);
	if(in_array($code,$array_keys)) {
	
		$status = "<div class='box' style='color:red;'>
		Product is already added to your cart!</div>";	
	} else {
	$_SESSION["shopping_cart"] = array_merge($_SESSION["shopping_cart"],$cartArray);
	$shopingcart["sc"]=$_SESSION["shopping_cart"];
	foreach ($_SESSION["shopping_cart"] as $product){
	echo $product["name"]."<br>"; 
	//echo $product["price"]."<br>"; 
	//echo $product["quantity"]."<br>"; 
	echo $_POST['code']."<br>";
//$insrt=mysqli_query($con,"INSERT INTO `product_sale_agent` VALUES ('$agent', '$prd_cd', '1','$cmp_id','$date','$shuffled')");
	}
	$status = "<div class='box'>Product is added to your cart!</div>";
	}

	}
}
?>
<html>
<head>
<title>Aile - Bioline Marketing</title>
<link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
</head>
<body>
<div style="width:700px; margin:50 auto;">


<?php
if(!empty($_SESSION["shopping_cart"])) {
$cart_count = count(array_keys($_SESSION["shopping_cart"]));
?>
<div class="cart_div">
<a href="cart.php"><a href="cart.php"><img src="cart-icon.png" /></a> Cart<a href="cart.php"><span><?php echo $cart_count; ?></span></a></a></div>
<?php
}

$result = mysqli_query($con,"SELECT * FROM `products`");
while($row = mysqli_fetch_assoc($result)){
		echo "<div class='product_wrapper'>
			  <form method='post' action=''>
			  <input type='hidden' name='code' value=".$row['code']." />
			  <div class='image'><img src='".$row['image']."' width='100' height='100' /></div>
			  <div class='name'>".$row['name']."</div>
		   	  <div class='price'>P".$row['price']."</div>
			  <button type='submit' class='buy'>Buy Now</button>
			  </form>
		   	  </div>";
        }
mysqli_close($con);
?>

<div style="clear:both;"></div>

<div class="message_box" style="margin:10px 0px;">
<?php echo $status; ?>
</div>

<br />
</div>
</body>
</html>