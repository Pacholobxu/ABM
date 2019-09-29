<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php
$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();
echo $ps=$_SESSION['pw'];
setcookie("Agent", $ps, time()+30*24*60*60,'/');
 $con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  $query = mysqli_query($con,"SELECT
customers.companyname,
customers.custID
FROM
customers");

//echo $row2['companyname'];
//echo $row2['custID']."<br>";


?>
<form method="post" action="inventoryAgent.php">
<select name="Company"><?php while($row2 = mysqli_fetch_array($query)){ ?>
  <option value="<?php echo $row2['custID']; ?>"><?php echo $cmp=$row2['companyname']; ?></option>
  <?php }
  setcookie("Company", $cmp, time()+30*24*60*60,'/');
  ?>
</select>
<input type="submit" />
</form>
</body>
</html>
