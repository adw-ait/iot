<?php
/*
if(session_id() == '' || !isset($_SESSION)){session_start();}

if (isset($_SESSION["username"])) {include 'config.php';}
*/
session_start();
include 'config.php';
$cardno = $_POST["cardno"];
$cardexp = $_POST["cardexp"];
$bankname = $_POST["bankname"];
$cvv = $_POST["cvv"];
$username=$_SESSION["username"];
/*
update users set address2='$address2',city2='$city2',pin2='$pin2' where email='$username'*/
if($mysqli->query("update users set cardno='$cardno',cardexp='$cardexp',bankname='$bankname',cvv='$cvv' where email='$username'")){
	echo 'Data inserted';
	echo '<br/>';
}

header ("location:orders-update.php");

?>
