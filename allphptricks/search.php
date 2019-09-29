<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php 
if (isset($_POST['prd'])) {
include('dbase.php');
$_POST['prd'];

//session_start();


//echo $rf=$_SESSION['ref'];


//include('db.php');
$product="%".$_POST['prd']."%";


echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr bgcolor="#33FF99">

  <td valign="top" width="<strong>38%</strong>">Agent ID</td>
  <td valign="top" width="<strong>62%</strong>">Product</td>
  
 
  
 
  
</tr>
<?php

//echo "<strong>".$agnt."  AGENT SALES</strong>";

$result=mysqli_query($con,'SELECT
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
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td><?php echo $row[1]; ?></td><td><?php echo $row[3]; ?></td></tr>
  
	<?php
	
	
   }
   
  ?><tr></tr>
</div><?php

}


?>
</body>
</html>
