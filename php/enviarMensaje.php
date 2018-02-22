<?php
			session_start();

		include "conexionDb.php";

		$conexion = conectate();

		try{

			$sql = $conexion->prepare('INSERT INTO mensajes (emisor, receptor, mensaje) VALUES (?,?,?)');

				$datos = array($_SESSION["emisor"],$_GET["usuario"],$_GET["mensaje"]);

			$sql->execute($datos);

		}
		catch(PDOException $e){
			echo $e->getMessage();
		}



?>
