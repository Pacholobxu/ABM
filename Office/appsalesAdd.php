<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-family: "Trebuchet MS"}
-->
</style>
</head>

<body ><?php
$Scd = $_GET["scode"];
 $Sales_Code  = explode("-", $Scd);
 $Sls_cd=$Sales_Code[0]."<br>";
 $agent_id=$Sales_Code[1]."<br>";
 $Sales_Code[2]."<br>";
 $Sales_Code[3]."<br>";
 $Sales_Code[4];
//$_POST[''];
//$_POST[''];
//$_POST[''];
//$_POST[''];
//$_POST[''];

?><br /><br /><br /><br /><br /><form method="post" action="apdscount.php">
<table width="261" border="0" cellspacing="1" align="center">
  <tr>
    <td colspan="2"><p align="center" class="style1">MANAGE DISCOUNT for Sales Code <?php echo $Sls_cd; ?> </p>
    <p align="center" class="style1">by Agent </p>
    <p align="center" class="style1"><?php echo $agent_id ?></p></td>
  </tr>
  <tr>
    <td width="107"><div align="right"><span class="style1">Customer Id : </span></div></td>
    <td width="147"><span class="style1"><input type="hidden" value="<?php echo $Sales_Code[4]; ?>" name="cust_id" /></span></td>
  </tr>
  <tr>
    <td><div align="right"><span class="style1">Item Name : </span></div></td>
    <td><span class="style1"><?php echo $Sales_Code[3]; ?></span></td>
  </tr>
  <tr>
    <td><div align="right"><span class="style1">Sales Price : </span></div></td>
    <td><span class="style1"><?php echo $Sales_Code[2]; ?></span></td>
  </tr>
  <tr>
    <td><div align="right"><span class="style1">Discount:</span></div></td>
    <td><span class="style1">
      <select name="discount">
            <option value="10">10%</option>
            <option value="15">15%</option>
            <option value="20">20%</option>
      </select>
    </span></td>
  </tr>
  <tr>
    <td><span class="style1"></span></td>
    <td><span class="style1"><input type="submit" /></span></td>
  </tr>
  <tr>
    <td><span class="style1"></span></td>
    <td><span class="style1"></span></td>
  </tr>
  <tr>
    <td><span class="style1"></span></td>
    <td><span class="style1"></span></td>
  </tr>
  <tr>
    <td><span class="style1"></span></td>
    <td><span class="style1"></span></td>
  </tr>
</table>
</form>
</body>
</html>
