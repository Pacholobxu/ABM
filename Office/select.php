<li><a href="admDasboard1.php" target="_parent">Admin Dash Board</a></li>
<html> 
	<body> 
		<form method = "post" action = "name.php"> 
			<h4><font color="#0099FF">SELECT AGENT AREA</font></h4> 
			<!--Using multiple to select multiple value-->
			<select name = "subject"> 
				<option value = "101">101</option> 
				<option value = "102">102</option> 
				<option value = "103">103</option> 
				<option value = "104">104</option> 
				<option value = "105">105</option> 
				
			</select> 
			<input type = "submit" name = "submit" value = Submit> 
		</form> 
	</body> 
</html> 
<?php
include('pai.php');
?>