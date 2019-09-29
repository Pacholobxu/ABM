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



 $ag_id=$_POST['username'];
 $_SESSION["agent_id"]=$ag_id;
$pw=$_POST['pw'];
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
  $result=mysqli_query($con,"SELECT
agent_accnt.AG_ID,
agent_accnt.Lname,
agent_accnt.Add_designation,
agent_accnt.`Password`
FROM
agent_accnt
WHERE
agent_accnt.AG_ID = '".$ag_id."' AND
agent_accnt.`Password` = '".$pw."'
");
while($row = $result->fetch_array(MYSQLI_NUM)){

$_SESSION['agent_id']=$row[0];  
$_SESSION['agentLN']= $row[1];   
  
}
header('Location: /allphptricks/company.php');
?>
</body>
</html>
