<?php 
$Cus_id=uniqid();
if(isset($_POST['fname'],$_POST['code'],$_POST['bus_id'],$_POST['blling_add'],$_POST['email'],$_POST['C_limit'],$_POST['status'],$_POST['tlNum'])) {
$full_name = $_POST['fname'];
$code = $_POST['code'];
$bid = $_POST['bus_id'];
$badd = $_POST['blling_add'];
$bemail = $_POST['email'];
$bC_limit = $_POST['C_limit'];
$bstatus = $_POST['status'];
$btlNum = $_POST['tlNum'];
require("connection.php");
mysqli_query($con,"INSERT INTO customer (customer.C_id,
customer.Fname,
customer.Code,
customer.`Business Identifier`,
customer.`Billing address`,
customer.`Email address`,
customer.`Credit limit`,
customer.Telephone,
customer.Status)
 VALUES('$Cus_id','$full_name','$code','$bid','$badd','$bemail','$bC_limit','$bstatus','$btlNum') ");  }
?>