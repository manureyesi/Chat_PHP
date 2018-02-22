<!DOCTYPE html>
<html>
	<head>

		<title>Chat -
			<?php
			session_start();
				echo $_SESSION["usuario"];
			?>
			</title>

		<link href="css/style_usuario.css" rel="stylesheet" type="text/css">

		 <link rel="icon" href="img/chat.png" type="image/png" sizes="16x16">

		<?php

			include "php/conexionDb.php";

			if($_SESSION["usuario"] != ""){

				if(isset($_POST["cerrar"])){

					$_SESSION["usuario"] = "";
					$_SESSION["contrasena"] = "";
					$_SESSION["remitente"] = "";

					header("location:index.php");
					exit();

				}

				if(isset($_GET["usuario"])){

					$_SESSION["remitente"] = $_POST["usuario"];
					header("location:chat.php");
					exit();

				}

			}
			else{
				header("location:index.php");
				exit();

			}

		?>


	</head>
	<body>



		<div id="contenedor">

			<h1>
			<?php
				echo $_SESSION["usuario"];
			?>
			is Online in SexChat</h1>



				<div id="usuarios">
					<?php
						include "php/colocarUsuarios.php";
					?>
				</div>

			<form action="" method="post">

				<div class="con">

						<input type="submit" title="Cerrar Sesion" value="Cerrar Sesion" name="cerrar" id="cerrar"/>

				<div/>


			</form>

		</div>

	</body>
</html>
