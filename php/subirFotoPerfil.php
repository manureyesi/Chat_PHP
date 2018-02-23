<?php

	session_start();

	if($_SESSION["usuario"] != ""){

	}
	else{

		header("../location:index.php");
		exit();

	}

	
	include "conexionDb.php";
	$conexion = conectate();

	$target_dir = "../img/perfil/";
	$target_file = $target_dir . basename($_FILES["fotoPerfil"]["name"]);

	$nombreArchivo = "perfil" . $_SESSION["usuario"];
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

	$uploadOk = 1;

	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
    	$uploadOk = 0;
	}

	if($uploadOk == 1){

		$target_file = $target_dir . $nombreArchivo . "." . $imageFileType;

		if(isset($_POST["submit"])) {
		   if (move_uploaded_file($_FILES["fotoPerfil"]["tmp_name"], $target_file)) {
		        
		        $target_file = "img/perfil/" . $nombreArchivo . "." . $imageFileType;

		   		$update = $conexion ->prepare("UPDATE usuarios SET fotoPerfil= ? WHERE usuario = ?");

					$datos = array($target_file, $_SESSION["usuario"]);

				$update -> execute($datos);

		    }
		}

	}


	header("location:../perfil.php");
	exit();

?>