<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>Untitled Document</title>
</head>

<body><div >
<?php
session_start();


//$rf=$_SESSION['ref'];


include('db.php');
$agent=$_SESSION['agent_id'];
//$agnt="101";


echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr bgcolor="#33FF99">

 
  <td valign="top" width="<strong>62%</strong>">Product Code</td>
  
  <td valign="top" width="<strong>62%</strong>"><a href="cart.php" >Quantity</a></td>
  
 
  
</tr>
<?php


//echo "<strong>".$agnt."  AGENT SALES</strong>";

$result=mysqli_query($con,'SELECT
product_sale_agent.AG_ID,
product_sale_agent.`code`,
product_sale_agent.qty,
product_sale_agent.company_id,
product_sale_agent.P_date,
product_sale_agent.SO_ref,
products.`name`
FROM
product_sale_agent
INNER JOIN products ON products.`code` = product_sale_agent.`code`
WHERE
product_sale_agent.AG_ID = "'.$agent.'" AND
product_sale_agent.qty !="0"

');
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td><?php echo $row[6]; ?></td><td><?php echo $row[2]; ?></td></tr>
  
	<?php
	
	
   }
   
  ?><tr></tr>
</div>
</body>
</html>
