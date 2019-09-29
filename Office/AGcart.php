<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php
mysql_connect("localhost", "root", "") or die(mysql_error());
mysql_select_db("bioline") or die(mysql_error());
$A_id="101";
/*
$result=mysql_query("select count(*) as total from agsales_cart where Agent_ID='$A_id'");
$data=mysql_fetch_assoc($result);
echo "Agent ".$A_id." have a total number of sale ".$data['total']."<br>";
*/?>
<?php
$row=mysql_query("select * from agsales_cart where Agent_ID='$A_id'");
while($row1 = mysql_fetch_array($row, MYSQL_NUM))
{


echo $row1[0]."<br>";

}
?>
</body>
</html>
