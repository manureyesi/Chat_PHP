<DOCTYPE html>
<html>

	<head>

		<title>Chat - Login</title>
		<link href="css/style_login.css" rel="stylesheet" type="text/css">

		<link rel="icon" href="img/chat.png" type="image/png" sizes="16x16">

		<?php

			include "php/conexionDb.php";

			function volver(){

				header("location:index.php");
				exit();

			}

			function comprobar(){

				$conexion = conectate();

				$sql = $conexion -> prepare("select usuario from usuarios where usuario = (:user)");

				$sql -> bindParam(':user', $_POST["user"]);


				$sql -> execute();

				$contadorResultado = $sql -> rowCount();

				if($contadorResultado == 1){
					return true;
				}
				else{
					return false;
				}

			}

			function registrarse(){

				$usuario = strtolower($_POST["user"]);
				$contrasena = md5($_POST["pass1"]);
				$nombre = $_POST["name"];
				$apellidos = $_POST["apel"];
				$email = $_POST["mail"];

				$conexion = conectate();

				try{

					$sql = $conexion->prepare("INSERT INTO usuarios(usuario, contrasena, nombre, apellidos, email) VALUES ( ?, ?, ?, ?,?)");

					$datos = array($usuario, $contrasena, $nombre, $apellidos, $email);

					$sql -> execute($datos);

					session_start();

					$_SESSION[usuario] = $usuario;
					$_SESSION[contrasena] = $contrasena;

					header("location:usuarios.php");
					exit();

				}catch(PDOException $e){
					echo "Connection failed: " . $e->getMessage();
				}


			}

			if(isset($_POST["cancelar"])){

				volver();

			}
			if(isset($_POST["registro"])){

				if($_POST["pass1"] == $_POST["pass2"]){

					if(comprobar() == true){
						$erros = "Este usuario xa se encontra rexistrado.";
					}
					else{
						registrarse();
					}

				}
				else{
					$erros = "As contraseñas non son iguais.";
				}


			}
		?>


	</head>
	<body>



		<div id="contenedor">

			<form action="" method="post">

				<div class="con">

					<label for="login" title="Usuario">Usuario:</label><br/>
					<input type="text" id="login" placeholder="Usuario" title="Campo Usuario" name="user"/>

				</div>

				<div class="con">

					<label for="pass" title="Contrasena">Contraseña:</label><br/>
					<input type="password" id="pass" placeholder="Contraseña" title="Campo Contraseña" name="pass1"/>

				</div>

				<div class="con">

					<label for="pass2" title="Repite Contrasena">Repite Contraseña:</label><br/>
					<input type="password" id="pass2" placeholder="Contraseña" title="Campo Contraseña" name="pass2"/>

				</div>

				<div class="con">

					<label for="name" title="Nombre">Nombre:</label><br/>
					<input type="text" id="name" placeholder="Nombre" title="Campo nombre" name="name"/>

				</div>

				<div class="con">

					<label for="apel" title="Apellidos">Apellidos:</label><br/>
					<input type="text" id="apel" placeholder="Apellidos" title="Campo Apellidos" name="apel"/>

				</div>

				<div class="con">

					<label for="email" title="Nombre">Correo:</label><br/>
					<input type="email" id="email" placeholder="exemplo@exemplo.es" title="Campo email" name="mail"/>

				</div>

				<div class="con">

					<label class="erro">
						<?php
							isset($erros) ? print $erros : "";
						?>

					</label><br/>

				</div>

				<div class="con">

					<input type="submit" title="Registro" value="Registro" name="registro"/><br/>
					<input type="submit" title="Cancelar" value="Cancelar" name="cancelar"/>
				<div/>

			</form>

		</div>



	</body>

</html>
