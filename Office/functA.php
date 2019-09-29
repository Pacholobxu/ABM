<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php


function writeMsg() {
$Agnt="101";
include("conM.php");
/* $con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  echo  $ahn=mysqli_query($con,'SELECT
agent.`Agent_ Lname`,
agent.Agent_Fname
FROM
agent
INNER JOIN agsales_cart ON agsales_cart.Agent_ID = agent.Agent_ID
WHERE
agsales_cart.Agent_ID = "'.$Agnt.'"');
//while($agn = mysqli_fetch_array($ahn)) {
while ($agn = $ahn->fetch_assoc()) {
mysqli_fetch_assoc($result);
//echo   $agent=$agn['companyname'];
echo   $agent=$agn['0'];
echo   $agent=$agn['1'];
 //$Ts['Tsale']
}*/
$query = 'SELECT
agent.`Agent_ Lname`,
agent.Agent_Fname
FROM
agent
INNER JOIN agsales_cart ON agsales_cart.Agent_ID = agent.Agent_ID
WHERE
agsales_cart.Agent_ID = "'.$Agnt.'" LIMIT 1';

if ($result = mysqli_query($con, $query)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_assoc($result)) {
   //   ("%s (%s)\n", $row["Agent_ Lname"], $row["Agent_Fname"])
   $agntln= $row["Agent_ Lname"]."&nbsp;".$row["Agent_Fname"];
echo   $_SESSION['agent_lastn']= $agntln;
	}

    /* free result set */
  //  mysqli_free_result($result);
}
}
writeMsg();
?>
</body>
</html>
