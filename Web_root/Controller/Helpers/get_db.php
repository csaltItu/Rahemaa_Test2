<?php

// function DBConn($servername = "127.0.0.1", $username = "root", $password = ""){
// 	$conn = new mysqli($servername, $username, $password, $db);
// 	if ($conn->connect_error) return false;
// 	return $conn;
// }

function DBConn($db = "raahemaa_test2", $servername = '58.27.220.110', $username = 'root', $password = 'GsRaTwsAg1', $port	  = '330'){

	$conn = new mysqli($servername, $username, $password, $db, $port);
	
	if ($conn->connect_error) {
	    die('Connection failed: ' . $conn->connect_error);
	}

	return $conn;
}

?>