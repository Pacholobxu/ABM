<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php
session_start();
//echo "<h3>Thank you for your time</h3>";
session_destroy();
ob_get_clean();
//header('Location: /aile/allphptricks/logstoreA.html');
header('Location: /allphptricks/logstoreA.html');
?><br />

</body>
</html>
