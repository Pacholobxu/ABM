<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="shortcut icon" href="aile_bioline_fabicon_D8i_icon.ico"  />
<title>Aile Bioline &#8211; Your Pathway to Good Healthcare</title>
<link rel='stylesheet' href='css/style.css' type='text/css' media='all' />

</head>
<?php

session_start();
date_default_timezone_set('Asia/Manila');
$shuffled=date(DATE_RFC2822)."<br>";
$shuffled=date(DATE_RFC2822);
$_SESSION['ref']=date(DATE_RFC2822);
$date=date('l jS \of F Y h:i:s A')."<br>";
$_SESSION['ABMcusCom_id']."<br>";
$agent=$_SESSION['agent_id'];
$cmp_id=$_SESSION['ABMcusCom_id'];

include('db.php');
?>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
<script type="text/javascript">
var auto_refresh = setInterval(
function ()
{
$('#load_tweets').load('aglist.php').fadeIn("slow");
}, 1000); // refresh every 10000 milliseconds
</script>
<div class="cart_div" style="position:relative;
  right: 10;
  top: 8%;
  width: 15em;
  margin-top: -2.5em;">
<a href="cart.php" ><a href="cart.php"><img src="cart-icon.png" /> Cart - EDIT QUANTITY </a><a href="cart.php"><span><?php echo $cart_count; ?></span></a></a></div>
<div id="load_tweets" style="position: fixed;
  right: 0;
  top: 20%;
  width: 15em;
  margin-top: -2.5em;"> </div>
<?php
$status="";
if (isset($_POST['code']) && $_POST['code']!=""){
$code = $_POST['code'];
$result = mysqli_query($con,"SELECT * FROM `products` WHERE `code`='$code'");
$row = mysqli_fetch_assoc($result);
$name = $row['name'];
$code = $row['code'];
$price = $row['price'];
$image = $row['image'];
$prd_cd=$code; 
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
	$date=date('l jS \of F Y h:i:s A');
	$insrt=mysqli_query($con,"INSERT INTO `product_sale_agent` VALUES ('$agent', '$prd_cd', '1','$cmp_id','$date','$shuffled')");
		$status = "<div class='box' style='color:red;'>
		Product is already added to your cart!</div>";	
	} else {
	$date=date('l jS \of F Y h:i:s A');
	$_POST['code'];
	$_SESSION["shopping_cart"] = array_merge($_SESSION["shopping_cart"],$cartArray);
	$shopingcart["sc"]=$_SESSION["shopping_cart"];
	foreach ($_SESSION["shopping_cart"] as $product){
	$product["name"]."<br>"; 
	 
	$product['quantity']."<br>"; 
	
	$prd_cd=$product["code"];
	

	}
	$date=date('l jS \of F Y h:i:s A');
	$insrt=mysqli_query($con,"INSERT INTO `product_sale_agent` VALUES ('$agent', '$prd_cd', '1','$cmp_id','$date','$shuffled')");
	
	
	$status = "<div class='box'>Product is added to your cart!</div>";
	}

	}
}
?>


<body>
<h5><a href="indexscrP.php" target="_self"><p size="+1" face="Trebuchet MS">Search Product </p><img src="srcIcon.jpg" width="50px" height="50px"></a></h5>   



<?php
if(!empty($_SESSION["shopping_cart"])) {
$cart_count = count(array_keys($_SESSION["shopping_cart"]));
?>

<?php
}

$result = mysqli_query($con,"SELECT * FROM `products`");
while($row = mysqli_fetch_assoc($result)){
		echo "<div class='product_wrapper'>
			  <form method='post' action=''>
			  <input type='hidden' name='code' value=".$row['code']." />
			  <div class='image'>   <img src='".$row['image']."' width='100' height='100' /></div>
			  <div class='name'>".$row['name']."</div>
		   	  <div class='price'>P".$row['price']."</div>
			  <button type='submit'  class='buy'>Buy Now</button>
			  </form>
		   	  </div>";
			
        }
mysqli_close($con);
?>

<div style="clear:both;"></div>

<div class="message_box" style="margin:10px 0px;">
<?php echo $status; ?>


<br />
</div>
</body>
</html>