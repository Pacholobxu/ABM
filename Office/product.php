<?php
$connection = mysql_connect("localhost", "root", "");
// Selecting Database by passing "database_name" and above connection variable.
$db = mysql_select_db("ailibioline", $connection);

echo "PRODUCTS LIST";

?>
