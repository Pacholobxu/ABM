<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<?php
//session_start();
	include("conM.php");
	$agnt=$_POST['agent'];
	//setcookie("username",$agnt, time()+60);
	if(!isset($_COOKIE["username"])){
	//echo "not set";
	setcookie("username",$agnt, time()+5);
//echo "<a href='lgoad.php' target='_top'>Choose Agent Again</a>";
//	echo "Choose Agent Again";
	}else{
	//setcookie("username",$agnt, time()+60);
 $_COOKIE["username"];

include('salesAdmin.php');
//setcookie("username","",);
//setcookie("username", $agnt, time() - 360,'/');
//session_destroy();
//unset $_COOKIE["username"];
//setcookie("username","",time()-1);
//SETCOOKIE("username",'',0,"/");
	}
//setcookie("username","",);
//include('salesAdmin.php');
//setcookie("Cookiename", $value, NewExpirationTime) set new NewExpirationTime
//echo "<script type='text/javascript'>window.location.assign('/ABM/div1.html')</script>";
?>
</body>
</html>
