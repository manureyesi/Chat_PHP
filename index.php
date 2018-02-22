<DOCTYPE html>
<html>

	<head>

		<title>Chat - Login</title>
		<link href="css/style_login.css" rel="stylesheet" type="text/css">

		<link rel="icon" href="img/chat.png" type="image/png" sizes="16x16">

		<?php
			include "php/conexionDb.php";

			function cargarRexistro(){

				header("location:rexistrar.php");
				exit();
			}

			function iniciarSesion(){

				$usuario = $_POST["user"];
				$contrasena = md5($_POST["pass"]);

				try{

					$conexion = conectate();


				}catch(PDOException $e){
					echo "Connection failed: " . $e->getMessage();
				}

				$sql = $conexion -> prepare("select usuario, contrasena from usuarios where usuario = (:user)");

				$sql -> bindParam(':user', $usuario);

				$sql -> execute();

				$resultado = $sql->fetchAll();

				$contadorResultado = $sql -> rowCount();

				if($contadorResultado == 1){

					foreach ($resultado as $row){
						$valores = $row[1];
					}

					if($valores == $contrasena){

			            $erros = "";
			            comprobarCheck();

						session_start();

						$_SESSION[usuario] = $usuario;
						$_SESSION[contrasena] = $contrasena;

						header("location:usuarios.php");

						include "php/insertaLog.php";

						$myfile = fopen("logUsuarios.txt", "a");
						
						date_default_timezone_set('ES');

						$fecha = date('h:i:s l jS F Y');

						$txt = $usuario . " inicio sesion a las " . $fecha . " desde IP: " . $_SERVER['REMOTE_ADDR'] . "\r\n";
						fwrite($myfile, $txt);
						fclose($myfile);

						exit();


					}
					else{

						$erros = "Contraseña incorrecta.";

					}


				}
				else{

					$erros = "Usuario non encontrado";

				}


			}

      function comprobarCheck(){

          if($_POST["guardar"] == "yes"){

            setcookie("user", $_POST["user"], time() + (365 * 24 * 60 * 60));
            setcookie("pass", $_POST["pass"], time() + (365 * 24 * 60 * 60));

          }
          else{

            setcookie('user', $_POST["user"], time() + 1);
            setcookie('pass', $_POST["pass"], time() + 1);

          }



      }

			if(isset($_POST["registro"])){

				cargarRexistro();

			}
			if(isset($_POST["iniciar"])){

          iniciarSesion();

			}

		?>

	</head>
	<body>

		<div id="contenedor">

			<form action="" method="post">

				<div class="con">

					<label for="login" title="Usuario">Usuario:</label><br/>

          <?php
            if(isset($_COOKIE["user"])){
              echo '<input type="text" id="login" title="Campo Usuario" name="user" value="' . $_COOKIE["user"] .'"/>';
            }
            else{
              echo '<input type="text" id="login" placeholder="Usuario" title="Campo Usuario" name="user"/>';
            }
          ?>

				</div>

				<div class="con">

					<label for="pass" title="Contrasena">Contraseña</label><br/>

          <?php
            if(isset($_COOKIE["user"])){
              echo '<input type="password" id="pass" title="Campo Contraseña" name="pass" value="' . $_COOKIE["pass"] . '"/>';
            }
            else{
              echo '<input type="password" id="pass" placeholder="Contraseña" title="Campo Contraseña" name="pass"/>';
            }
          ?>

				</div>

				<div class="con">

					<h5 class="erro">
            <?php
						/*
							isset($erros)?print $erros: "";
							*/
						?>
					</h5>


				</div>

				<div class="con">

          <?php

          if(isset($_COOKIE["user"])){

            echo '<label for="guardar" id="lguarda">';
            echo '  <input type="checkbox" title="Guardar" id="guardar" checked="checked" value="yes" name="guardar"/>Guardar Usuario';
            echo '</label>';


          }
          else{
            echo '<label for="guardar" id="lguarda">';
            echo '  <input type="checkbox" title="Guardar" id="guardar" value="yes" name="guardar"/>Guardar Usuario';
            echo '</label>';
          }

          ?>

					<input type="submit" title="Iniciar Sesion" value="Iniciar sesion" name="iniciar"/><br/>
					<input type="submit" title="Registro" value="Registro" name="registro"/>
				<div/>

			</form>

		</div>



	</body>

</html>
