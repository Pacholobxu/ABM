<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
session_start();
	include("connection.php");
	//$myusername = $_POST['username'];
     // $mypassword = $_POST['password'];
	if(get_magic_quotes_gpc())
	stripslashes($_POST['username']);
	stripslashes($_POST['password']);
	//stripslashes($_POST['CustomerT'])
	$myusername = $_POST['username'];
      $mypassword = $_POST['password'];
 $Customer = $_POST["CustomerT"];
 $ES_T = $_POST["Establishment_Type"];
	
    $result = mysql_query("SELECT * FROM users WHERE user_name = '$myusername' and password = '$mypassword'");
     // $row = mysql_fetch_array($result,MYSQL_BOTH);
     $row = mysql_fetch_array($result) or die(mysql_error());
      
    $count = mysql_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
   if($count == 1 && $Customer== "Walk-In"){
       echo $Customer.'<br>';
		 // $_SESSION['myusername'] 
         $_SESSION['login_user'] = $myusername;
        header('Location: form.php');
	  // echo $Customer.'<br>';
         //header("location: welcome.php");
      }elseif ($Customer=="Establishment" && $ES_T=="CORPORATION")
	  {
        // echo $Customer.'<br>';
		// echo $ES_T.'<br>';
		 //$error = "Your Login Name or Password is invalid";
		header('Location: formcorp1.html');
      } else {
		  
		 // echo $Customer.'<br>';
		// echo $ES_T.'<br>';
		 header('Location: formSINGLEPROPRIETORSHIP.html');
		 // header('formSINGLEPROPRIETORSHIP.html');
	  }
   
?>
</body>
</html>