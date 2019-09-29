<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php
$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();



 $cus_id=$_POST['customer_id'];
$pw=$_POST['pw'];
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
  $result=mysqli_query($con,"SELECT
customers.cusAccntPW,
customers.custID,
customers.CusR_lastname,
customers.companyname,
agent.Agent_ID,
agent.`Agent_ Lname`
FROM
customers
INNER JOIN agent ON agent.Area = customers.cusAccntPW
WHERE
customers.companyname = '".$cus_id."' AND
customers.cusAccntPW = '".$pw."'
");
while($row = $result->fetch_array(MYSQLI_NUM)){

$_SESSION['customer_id']=$row[3];  
$_SESSION['agentcart']= $row[4];     
}
header('Location: /aile/allphptricks/index.php');

?>
</body>
</html>
