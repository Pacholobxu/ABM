<?php

$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();


//$_SESSION['agent_id']."<br>";
//$_SESSION['ABMcusCom_id']."<br>"; 
//$_SESSION['ABMcusCom'];
include('db.php');
//$product="";
$val = ""; //Initialization value; Examples
             //"" When you want to append stuff later
             //0  When you want to add numbers later
//isset()
$val = isset($_POST['prd']) ? $_POST['prd'] : '';
  $product=$_POST['prd']=$val;
$product="%".$_POST['prd']."%";

//session_start();


//echo $rf=$_SESSION['ref'];


//include('db.php');
//$product="%".$_POST['prd']."%";


//include('db.php');
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
	//print_r(array_values($cartArray)
	$_SESSION["shopping_cart"] = array_merge($_SESSION["shopping_cart"],$cartArray);
	$status = "<div class='box'>Product is added to your cart!</div>";
	//echo $cartArray[2];
	//print_r(array_values($code);
	}

	}
}
?>
<html>
<head>
<title>Aile Bioline &#8211; Your Pathway to Good Healthcare</title>
<link rel="shortcut icon" href="../wp-content/uploads/2018/04/aile-bioline-fabicon.png"  />
<link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
</head>
<body>


<h2><form method="post" action="indexscrP.php">
<input type="text" name="prd" />
<input type="submit" value="Search"  /></h2>   
</form>
<?php
if(!empty($_SESSION["shopping_cart"])) {
$cart_count = count(array_keys($_SESSION["shopping_cart"]));
?>
<div class="cart_div">
<a href="cart.php"><img src="cart-icon.png" /> Cart<span><?php echo $cart_count; ?></span></a></div>
<div style="width:80%; margin:50 auto;">
<?php
}

$result = mysqli_query($con,'SELECT
products.id,
products.`name`,
products.`code`,
products.price,
products.image
FROM
products
WHERE
products.`name` LIKE "'.$product.'"

');
while($row = mysqli_fetch_assoc($result)){
		echo "<div class='product_wrapper'>
			  <form method='post' action=''>
			  <input type='hidden' name='code' value=".$row['code']." />
			  <div class='image'><img src='".$row['image']."' /></div>
			  <div class='name'>".$row['name']."</div>
		   	  <div class='price'>$".$row['price']."</div>
			  <button type='submit' class='buy'>Buy Now</button>
			  </form>
		   	  </div>";
        }
mysqli_close($con);

?>
</div>
<div style="clear:both;"></div>

<div class="message_box" style="margin:10px 0px;">
<?php echo $status; ?>
</div>
<a href="../allphptricks/empty_cartap.php" target="_self">Cont shopping</a>
<a href="../allphptricks/empty_cartap.php">|| HOME</a><a href="../allphptricks/index.php">|| Store</a><a href="indexscrP.php" target="_self">|| ProSearch</a>

<br />


</body>
</html>