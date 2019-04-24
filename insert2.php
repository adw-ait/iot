<?php
session_start();
include 'config.php';
$address2 = $_POST["address2"];
$city2 = $_POST["city2"];
$pin2 = $_POST["pin2"];
$username=$_SESSION["username"];

if($mysqli->query("update users set address2='$address2',city2='$city2',pin2='$pin2' where email='$username'")){
	echo 'Data inserted';
	echo '<br/>';
}

header ("location:orders-update.php");

?>
