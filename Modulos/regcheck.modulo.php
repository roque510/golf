<?php
require_once("config.php");


	$database->insert("players", [
	"Username" => $_POST["name"],
	"Email" => $_POST["email"],
	"Password" => $_POST["password"],
	"Birthday" => $_POST["birthday"]
]);


 ?>