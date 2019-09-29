<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php


//function writeMsg() {
$Agnt='101';
//$a=1;
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
   $ahn=mysqli_query($con,'SELECT
customers.companyname
FROM
agsales_cart
INNER JOIN customers ON customers.custID = agsales_cart.C_id
WHERE
agsales_cart.C_id = customers.custID AND
agsales_cart.Agent_ID = '.$Agnt.'');
while($agn = mysqli_fetch_array($ahn)) {
echo  $comname=$agn['companyname']."<br>";
//echo   $agent=$agn['0'];
//echo   $agent=$agn['1'];
 //$Ts['Tsale']
 //$a++;
}

//}
?>
</body>
</html>
