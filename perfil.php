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

		<link href="css/style_perfil.css" rel="stylesheet" type="text/css">

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

				$existe = false;

				if($row["fotoPerfil"] != NULL){
					$existe = true;
					$dirFoto = $row["fotoPerfil"];
				}

			}

		?>

		<div id="contenedor">

			<h1>Modificando Perfil de <?php echo $nombre; ?></h1>

			<div id="fotoPerfil">

				<?php

					if($existe == false){

						echo "<img id='perfil' src='img/perfil/fotodefecto.png'>";
					}
					else{

						echo "<img id='perfil' src='". $row["fotoPerfil"] ."'>";

					}

				?>
				
			</div>

			<div id="formulario">
				<form method="post">

					<label for="nombre">Nombre:</label><br>
					<input type="text" id="nombre" name="nombre" placeholder="Nombre" value="<?php echo $nombre; ?>"><br>

					<label for="apellidos">Apellidos:</label><br>
					<input type="text" id="apellidos" name="apellidos" placeholder="Apellidos" value="<?php echo $apellidos; ?>"><br>

					<label for="contrasena">Contraseña:</label><br>
					<input type="password" id="contrasena" name="pass1" placeholder="Contraseña"><br>

					<label for="repContrasena">Repetir Contraseña:</label><br>
					<input type="password" id="repContrasena" name="pass2" placeholder="Repetir Contraseña"><br>

					<label for="email">Email:</label><br>
					<input type="email" id="email" name="email" placeholder="Email" value="<?php echo $email; ?>"><br>

					<input type="submit" name="modificar" value="Modificar Datos">

				</form>

				<br>
				<br>

				<form action="php/subirFotoPerfil.php" method="post" enctype="multipart/form-data">
					
					<?php
						if($existe == true){
							echo "<label for='fotoPerfil'>Cambiar foto Perfil:</label>"; 
						}
						else{
							echo "<label for='fotoPerfil'>Sube foto de Perfil:</label>"; 
						}
					?>
					<input type="file" name="fotoPerfil" id="fotoPerfil">
					<br/>
					<br/>

					<?php
						if($existe == true){
							echo "<input type='submit' value='Cambia Foto' name='submit'>"; 
						}
						else{
							echo "<input type='submit' value='Subir Foto' name='submit'>"; 
						}
					?>

				</form>

				<br>
				<br>
				
				<form method="post">
					<input type="submit" name="volver" value="Volver">
				</form>
			</div>
			<span id="errores"></span>
				
			
		</div>
		
	</body>

</html>