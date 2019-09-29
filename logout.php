<?php
//unset(COOKIE['Agent']);
setcookie("Agent", "", time()-3600);
setcookie("Company", "", time()-3600);
session_destroy();
ob_get_clean();
//header('Location:.././index.html');
header('Location: .../../index.php');
?>