<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<div class="field-group">
    <div>Select Agent to Show Sales:<br />

<script type="text/javascript">
function showMe (it, box) {
var vis = (box.checked) ? "block" : "none";
document.getElementById(it).style.display = vis;
}
</script>
<h3>AGENT</h3>
 
 
 101<input type="radio" name="CustomerT" value="Establishment" onclick="showMe('div1', this)">
 102<input type="radio" name="CustomerT" value="Establishment" onclick="showMe('div2', this)">
 
 

<div id="div1" style="display:none">
<?php
include("salesrec101.php");
?>
</div>

</div><br />
</body>
</html>
