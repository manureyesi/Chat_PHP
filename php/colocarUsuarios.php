<?php

	$conexion2 = conectate();

	$sql = $conexion2->prepare("SELECT * FROM usuarios");

	$sql -> execute();

	$resultado = $sql->fetchAll();

	echo "<form action='chat.php' method='GET'>";

		foreach ($resultado as $row){

			if($row["usuario"] != $_SESSION["usuario"]){
				echo "<input type='submit' name='usuario' class='usuario' value='" . $row["usuario"] . "'><br/>";
			}

		}
	echo "</form>";

?>
