<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><script type="text/javascript">
function showMe (it, box) {
var vis = (box.checked) ? "block" : "none";
document.getElementById(it).style.display = vis;
}
</script><form method="post" action="search.php" target="prodDisply">
<input type="text" name="prd" />
<input type="submit" value="Search" onclick="" />
</form>

<!--CORPORATION:<input type="radio" value="Male" name="CORPORATION">:<br />
SINGLE PROPRIETORSHIP :<input type="radio" value="SINGLE_PROPRIETORSHIP " name="gender">:<br />-->
<iframe src="emp.html" name="prodDisply" height="300" width="200"  frameborder="0" scrolling="yes" ></iframe>

</body>
</html>
