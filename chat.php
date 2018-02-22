<!DOCTYPE html>
<html>
	<head>

		<?php
			session_start();
		?>


		<title>Chat -
			<?php

				echo $_SESSION["usuario"];
			?>
			</title>

		<link href="css/style_chat.css" rel="stylesheet" type="text/css">
		<link href="css/style_colores.css" rel="stylesheet" type="text/css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

		<script type="text/javascript" src="js/autoscroll.js"></script>
		<script type="text/javascript" src="js/enviarMensaje.js"></script>
		<script type="text/javascript" src="js/refrescoChat.js"></script>

		<link rel="icon" href="img/chat.png" type="image/png" sizes="16x16">

		<?php

			include "php/conexionDb.php";

			if($_SESSION["usuario"] != ""){

			}
			else{
				header("location:index.php");
				exit();

			}

		?>


	</head>
	<body>



		<div id="contenedor">

				<header><a href="usuarios.php"><img id="volver" src="img/ico/flechas.png"></a> <?php

					$conexion3 = conectate();

					$sql = $conexion3->prepare("SELECT * FROM usuarios");

					$sql -> execute();

					$resultado = $sql->fetchAll();

						foreach ($resultado as $row){

							if($row["usuario"] == $_GET["usuario"]){

								if($row["fotoPerfil"] == NULL){

									echo "<img id='perfil' src='img/perfil/fotodefecto.png'>";
								}
								else{

									echo "<img id='perfil' src='". $row["fotoPerfil"] ."'>";

								}

								echo "<h1 id='usuario'>". $row["usuario"] ."</h1>";

							}

						}


				?></header>

				<div id="chat">

					<?php
						include "php/colocarMensaje.php";
					?>

				</div>

				<div id="formulario">

					<input type="text" name="mensaje" id="escribir" autofocus>
					<input type="submit" title="Enviar" value="Enviar" name="enviar" id="enviar"/>
					
				</div>

		</div>

	</body>
</html>
