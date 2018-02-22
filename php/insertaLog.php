<?php
	
	try{

			$sql = $conexion->prepare('INSERT INTO logusuarios (usuario, ip) VALUES (?,?)');

				$datos = array($_SESSION[usuario] ,$_SERVER['REMOTE_ADDR']);

			$sql->execute($datos);

		}
		catch(PDOException $e){
			echo $e->getMessage();
		}

?>