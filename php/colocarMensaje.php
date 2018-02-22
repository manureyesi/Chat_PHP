<?php

	$conexion = conectate();

	$sql = $conexion->prepare("SELECT * FROM mensajes");

	$sql -> execute();

	$resultado = $sql->fetchAll();

	foreach ($resultado as $row){

		if(($row["emisor"] == $_GET["usuario"] && $row["receptor"] == $_SESSION["usuario"] && $row["visto"] == 1)||($row["emisor"] == $_SESSION["usuario"] && $row["receptor"] == $_GET["usuario"])){

			if($row["emisor"] == $_SESSION["usuario"] && $row["receptor"] == $_GET["usuario"]){

				echo "<span class='mensaje'><p>" .  $row["mensaje"] . "</p></span>";

			}
			else if($row["emisor"] == $_GET["usuario"] && $row["receptor"] == $_SESSION["usuario"]){

				echo "<span class='mensaje2'><p>" .  $row["mensaje"] . "</p></span>";

			}



		}



	}

?>
