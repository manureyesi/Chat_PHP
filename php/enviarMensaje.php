<?php

		include "conexionDb.php";

		$conexion = conectate();

		try{

			$sql = $conexion->prepare('INSERT INTO mensajes (emisor, receptor, mensaje) VALUES (?,?,?)');

				$datos = array($_POST["emisor"],$_POST["usuario"],$_POST["mensaje"]);

			$sql->execute($datos);

		}
		catch(PDOException $e){
			echo $e->getMessage();
		}



?>
