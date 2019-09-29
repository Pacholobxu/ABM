<?php
$a=array(1,2,3,4,5,6,7,8,9);

// Loop
$randomKey=array_rand($a);
unset($a[$randomKey]);

// Test
echo $randomKey."<br>";
var_dump($a);
?>
