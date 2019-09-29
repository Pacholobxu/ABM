<?php
session_start();
  $ps=$_SESSION['pw'];
mysql_connect("localhost", "root", "") or die(mysql_error());
//echo "Connected to MySQL<br />";
mysql_select_db("bioline") or die(mysql_error());
$r=mysql_query('SELECT
agent.Agent_ID,
agent.Agent_Fname,
agent.`Agent_ Mname`,
agent.Agent_Lname,
agent.Address,
agent.rank
FROM
agent
WHERE
agent.Agent_ID = "'.$ps.'"');
echo $num_rows = mysql_num_rows($r);
//echo $r;
while($r2 = mysql_fetch_array($r, MYSQL_NUM))
{ 
echo $r2[1];
}
?>