<?php

	session_start();

	include "conexionDb.php";

	$conexion = conectate();

	$sql = $conexion->prepare("SELECT * FROM mensajes where visto = 0");

	$sql -> execute();

	$resultado = $sql->fetchAll();

	foreach ($resultado as $row){

		if($row["emisor"] == $_GET["usuario"] && $row["receptor"] == $_SESSION["usuario"]){

			echo "<span class='mensaje2'><p>" .  $row["mensaje"] . "</p></span>";

		}
		
        $update = $conexion->prepare("UPDATE mensajes SET visto=1 WHERE cod = ?");
        	$datos = array($row["cod"]);
        $update->execute($datos);

	}

?>
