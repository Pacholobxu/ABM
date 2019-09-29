<?php

$valid_passwords = array ("pol" => "18");
$valid_users = array_keys($valid_passwords);

$user = $_SERVER['PHP_AUTH_USER'];
$pass = $_SERVER['PHP_AUTH_PW'];

$validated = (in_array($user, $valid_users)) && ($pass == $valid_passwords[$user]);

if (!$validated) {
  header('WWW-Authenticate: Basic realm="My Realm"');
  header('HTTP/1.0 401 Unauthorized');
  die ("Not authorized");
}
require_once('loginfile.html');
//header('home1.html');
//include('home.html');
//header('home.html');
// If arrives here, is a valid user.
//echo "<p>Welcome $user.</p>";
//echo "<p>Congratulation, you are into the system.</p>";
//include('home1.html');
//require_once('home1.html');
//header('home1.html');
?>