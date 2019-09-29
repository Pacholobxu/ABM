<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php
echo $comp=$_POST['companyname'];
$con = mysqli_connect("localhost","root","","ailebioline");
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
		}
		
		$result = mysqli_query($con,'SELECT
customers.creditlimit,
customers.custID,
customers.companyname
FROM
customers
WHERE custID = "'.$comp.'"');
while($row = mysqli_fetch_array($result)) {
echo $row['creditlimit'];

}
?>


</body>
</html>
