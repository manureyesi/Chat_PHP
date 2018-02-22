<!DOCTYPE html>
<html>
	<head>

		<?php
			session_start();
		?>


		<title>Perfil -
			<?php

				echo $_SESSION["usuario"];
			?>
		</title>

		<link rel="icon" href="img/chat.png" type="image/png" sizes="16x16">

		<?php

			include "php/conexionDb.php";
			$conexion = conectate();

			if($_SESSION["usuario"] != ""){


				if(isset($_POST["volver"])){
					header("location:usuarios.php");
					exit();
				}
				if(isset($_POST["modificar"])){
					
					include "php/modificarPerfil.php";

					
				}


			}
			else{
				header("location:index.php");
				exit();

			}

		?>

	</head>

	<body>

		<?php


			$sql = $conexion ->prepare("SELECT * FROM usuarios WHERE usuario = ?");

				$datos = array($_SESSION["usuario"]);

			$sql -> execute($datos);

			$resultado = $sql->fetchAll();

			foreach ($resultado as $row){

				$nombre = $row["nombre"];
				$apellidos = $row["apellidos"];
				$email = $row["email"];

			}

		?>

		<div id="contenedor">

			<h1>Modificando Perfil de <?php echo $nombre; ?></h1>

			<form method="post" action="pruebaPHP.php">
				
				<label for="nombre">Nombre:</label>
				<input type="text" id="nombre" name="nombre" placeholder="Nombre" value="<?php echo $nombre; ?>"><br>

				<label for="apellidos">Apellidos:</label>
				<input type="text" id="apellidos" name="apellidos" placeholder="Apellidos" value="<?php echo $apellidos; ?>"><br>

				<label for="contrasena">Contraseña:</label>
				<input type="password" id="contrasena" name="pass1" placeholder="Contraseña"><br>

				<label for="repContrasena">Repetir Contraseña:</label>
				<input type="password" id="repContrasena" name="pass2" placeholder="Repetir Contraseña"><br>

				<label for="email">Email:</label>
				<input type="email" id="email" name="email" placeholder="Email" value="<?php echo $email; ?>"><br>

				<label for="perfil">Foto Perfil:</label>
				<input type="file" id="perfil" name="archivo-a-subir"><br>

				<input type="submit" name="modificar" id="modificar" value="Modificar Datos"><br>
				<input type="submit" name="volver" id="volver" value="Volver">

			</form>

			<span id="errores"></span>
				
			
		</div>
		
	</body>

</html>