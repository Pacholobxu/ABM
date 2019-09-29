<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><?php 

$dir    = '../ABM/product_Img';

 
//Get a list of file paths using the glob function.
$fileList = glob('C:/xampp/htdocs/ABM/product_Img/*');
 echo "2) ".basename("$fileList[1]").PHP_EOL;
 // echo $fileList[1];
//Loop through the array that glob returned.
/* foreach($fileList as $filename){
   //Simply print them out onto the screen.
   echo $filename, '<br>'; 
}
/*$files1 = scandir($dir);
//$files2 = scandir($dir, 1);

print_r($files1);
*/
?>
</body>
</html>
