<?php

	$sql = $conexion ->prepare("SELECT * FROM usuarios WHERE usuario = ?");

		$datos = array($_SESSION["usuario"]);

	$sql -> execute($datos);

	$resultado = $sql->fetchAll();

	foreach ($resultado as $row){

		$usuario = $row["usuario"];
		$nombre = $row["nombre"];
		$apellidos = $row["apellidos"];
		$email = $row["email"];
		$contrasena = $row["contrasena"];
		$fotoPerfil = "foto" . $usuario;

	}

	cambiaNombre($_POST["nombre"], $nombre);
	cambiaApellido($_POST["apellidos"], $apellidos);
	cambiaCorreo($_POST["email"], $email);
	cambiaPass($_POST["pass1"], $_POST["pass2"], $contrasena);

	function cambiaNombre($nom, $nombre){

		$conexion = conectate();

		trim($nom);

		if($nom != "" && $nom != $nombre){

			$update = $conexion->prepare("UPDATE usuarios SET nombre = ? WHERE usuario = ?");
				$datos = array($nom, $_SESSION["usuario"]);
			$update -> execute($datos);

		}
	}

	function cambiaApellido($apel, $apellidos){

		$conexion = conectate();

		trim($apel);

		if($apel != "" && $apel != $apellidos){

			$update = $conexion->prepare("UPDATE usuarios SET apellidos = ? WHERE usuario = ?");
				$datos = array($apel, $_SESSION["usuario"]);
			$update -> execute($datos);

		}


	}

	function cambiaCorreo($correo, $email){

		$conexion = conectate();

		trim($correo);

		if($correo != "" && $correo != $email){

			$update = $conexion->prepare("UPDATE usuarios SET email = ?, mailVerificado = 0 WHERE usuario = ?");
				$datos = array($correo, $_SESSION["usuario"]);
			$update -> execute($datos);

		}


	}

	function cambiaPass($pass1, $pass2, $contrasena){

		$conexion = conectate();

		trim($pass1);
		trim($pass2);

		if($pass1 != "" && md5($pass1) != $contrasena){

			if($pass1 === $pass2){

				$update = $conexion->prepare("UPDATE usuarios SET contrasena = ? WHERE usuario = ?");
					$datos = array(md5($pass1), $_SESSION["usuario"]);
				$update -> execute($datos);
			}

		}


	}
	

?>