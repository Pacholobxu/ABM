<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Aile Bioline</title>
</head>

<body ><div align="center">
<?php
//session_start();


//$rf=$_SESSION['ref'];


include('db.php');
$agnt=$_SESSION['agent_id'];


echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border=''>"; ?>
<tr bgcolor="#33FF99">

  <td valign="top" width="<strong>38%</strong>">Agent ID</td>
  <td valign="top" width="<strong>62%</strong>">Product</td>
  
  <td valign="top" width="<strong>62%</strong>">Quantity</td>
  
 
  
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
INNER JOIN products ON product_sale_agent.`code` = products.`code`
WHERE
product_sale_agent.AG_ID = "'.$agnt.'" AND
product_sale_agent.qty != "0" 

');
while($row = mysqli_fetch_array($result)) {
    ?>
	<tr><td><?php echo $row[0]; ?></td><td><?php echo $row[6]; ?></td><td><?php echo $row[2]; ?></td></tr>
  
	<?php
	
	
   }
  
  ?><tr></tr><div align="center">

<?php echo "<strong>".$agnt."  AGENT SALES</strong>"; ?> 
</div>
</body>
</html>
