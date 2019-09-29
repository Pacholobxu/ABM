<!DOCTYPE html>
<html>
<body>

<?php
$people = array("Peter", "Joe", "Glenn", "Cleveland");

if (in_array("Glenn", $people))
  {
 echo in_array("Glenn", $people)."Match found";
  }
else
  {
  echo "Match not found";
  }
?>

</body>
</html>
