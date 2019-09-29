<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><input type="text" name="discount" id="discount" /> 
<input type="button" onclick="prepare_link();" value="Do it!" /> 
 
<a href="test1.php" id="target_link" onclick="append_link()">Click Your New Link!</a>
<script type="text/javascript"> 
function append_link() { 
  var url_param = document.getElementById('discount'); 
  var target_link = document.getElementById('target_link'); 
 
  if ( ! url_param.value ) { 
      return false;   
  } 
 
  target_link.href = target_link.href + 'discount=' + escape(discount.value); 
} 
</script>
</body>
</html>
