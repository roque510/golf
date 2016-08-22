<?php 
	require_once("medoo.php");
	global $SVR, $USR, $PW, $DB, $database;

	 $SVR = 'localhost';
	 $USR = 'root';
	 $PW  = '';
	 $DB  = 'golf';

	$database = new medoo([
	// required
	'database_type' => 'mysql',
	'database_name' => $DB,
	'server' => $SVR,
	'username' => $USR,
	'password' => $PW,
	'charset' => 'utf8'
]);

	 
?>