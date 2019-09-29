<?php
mysql_connect("localhost", "root", "") or die(mysql_error());
//echo "Connected to MySQL<br />";
mysql_select_db("bioline") or die(mysql_error());
//echo "Connected to Database";

 //$usern=htmlEntities($_POST['username'],ENT_QUOTES);
 $pw=htmlEntities($_POST['password'],ENT_QUOTES);
 $user=htmlEntities($_POST['user1'],ENT_QUOTES);
if(!empty($pw) && !empty($user)){
/*
$row1=mysql_query('SELECT
agent.Agent_ID,
agent.Agent_Fname,
agent.`Agent_ Mname`,
agent.Agent_Lname,
agent.Address,
agent.rank
FROM
agent
WHERE
agent.Agent_ID = 101');
$num_rows = mysql_num_rows($row1);
echo $num_rows;
*/
if($user=="Agent"){
echo "Agent"."<br>";
$row1=mysql_query('SELECT
agent.Agent_ID,
agent.Agent_Fname,
agent.`Agent_ Mname`,
agent.Agent_Lname,
agent.Address,
agent.rank
FROM
agent
WHERE
agent.Agent_ID = 101');
$num_rows = mysql_num_rows($row1);
//echo $num_rows;
header('Location: inventoryAgent.php');
}else{

$row=mysql_query('SELECT
admin.Admin_ID,
admin.Ad_Name,
admin.Ad_M,
admin.Ad_LN,
admin.Autorization
FROM
admin
WHERE
admin.Admin_ID = "1"');
$admn = mysql_num_rows($row);
echo $admn;

//echo "Admin";
header('Location: inventoryAdmin.php');
}
}
?>