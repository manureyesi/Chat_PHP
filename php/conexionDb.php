<?php

	function conectate(){

		$servername = "localhost";
		$username = "chat_php";
		$password = "XJLdjyyCJhroPhKp";
		$dbname = "chat_php";

		try{

			$conexion = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

		}catch(PDOException $e){
			echo "Connection failed: " . $e->getMessage();
		}

		return $conexion;

	}

?>
