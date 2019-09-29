<?php
$lifetime=600;
session_set_cookie_params( $lifetime);
session_start();
$con = mysqli_connect("localhost","root","","bioline");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


 //$usern=htmlEntities($_POST['username'],ENT_QUOTES);
 $usern="Admin";
 $pw=htmlEntities($_POST['password'],ENT_QUOTES);
  $ps=$_SESSION['pw']=$pw;
  //if($_GET['n']%2==0)
 
 //$user=htmlEntities($_POST['user1'],ENT_QUOTES);
 
if(!empty($pw) && !empty($usern) || $ps=="0421"){

$row1=mysqli_query($con,'SELECT
agent.Agent_ID,
agent.Agent_Fname,
agent.`Agent_ Mname`,
agent.Agent_Lname,
agent.Address,
agent.rank
FROM
agent
WHERE
agent.Agent_ID = "$ps"');
$num_rows = mysqli_num_rows($row1);
 $num_rows;

if($usern=="Agent"){
//echo "Agent"."<br>";
$row1=mysqli_query($con,'SELECT
agent.Agent_ID,
agent.Agent_Fname,
agent.`Agent_ Mname`,
agent.Agent_Lname,
agent.Address,
agent.rank
FROM
agent
WHERE
agent.Agent_ID = "$ps"');
$num_rows = mysqli_num_rows($row1);
//echo $num_rows;
header('Location: /ABM/allphptricks/index.php');
}else {
header('Location: /ABM/div1.php');

}


}
?>