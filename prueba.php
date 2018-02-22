<?php
	
	$servername = "beta.fiandeira.es";
		$username = "root";
		$password = "1q2w3e4r5t.";
		$dbname = "chat_php";

		try{

			$conexion = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

		}catch(PDOException $e){
			echo "Connection failed: " . $e->getMessage();
		}


		$sql = $conexion->prepare("INSERT INTO 'mensajes' ('emisor', 'receptor', 'mensaje') VALUES (?,?,?)");

			$datos = array("dewdewdwde","ssxsxaxs","sxsxsxsaxsax");

		$sql->execute($datos);

?>