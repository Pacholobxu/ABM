<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="aile_bioline_fabicon_D8i_icon.ico"  />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Aile Bioline &#8211; Your Pathway to Good Healthcare</title>
</head>

<body><?php
$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();
//$_SESSION['agent_id'];
echo "<div style='background-color:#00CCFF; margin: auto;
  width: 50%;' align='center' >";
echo "<br><br>AREA for Agent :".$ag_ID=$_SESSION['agent_id']."<br>";
echo "</div>";
//echo $_SESSION['agentLN'];
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

//echo $row[0]."<br>";

?><form method="" action="index.php"><div style="background-color:#00CCFF;  margin: auto;
  width: 50%; top: 50%;
  left: 50%;" align="center">
<select name="username" onChange="this.form.submit()">
    <?php $result=mysqli_query($con,"SELECT
customers.companyname,
agent_accnt.AG_ID,
customers.custID
FROM
agent_accnt
INNER JOIN customers ON agent_accnt.AG_ID = customers.`code`
WHERE
agent_accnt.AG_ID = customers.`code` AND
agent_accnt.AG_ID = '".$ag_ID."'
");
while($row = $result->fetch_array(MYSQLI_NUM))
{ ?>  
     <option value="<?php $_SESSION['ABMcusCom_id']=$row[2]; $_SESSION['agent_accnt.AG_ID']=$ag_ID;  echo $_SESSION['agent_id']; echo $_SESSION['ABMcusCom']=$row[0] ?>"><?php echo $row[0]; ?></option>
	 <?php }?>
    </select><input type="submit" /><br /><br /><br /><br /></div>
	</form>
</body>
</html>
