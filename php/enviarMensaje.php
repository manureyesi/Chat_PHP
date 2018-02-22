<?php

	function enviar(){

		$conexion = conectate();

		$sql = $conexion->prepare("INSERT INTO mensajes (emisor, receptor, mensaje) VALUES (?,?,?)");

			$datos = array($_post["emisor"],$_POST["usuario"],$_POST["mensaje"]);

		$sql->execute($datos);


	}

?>
