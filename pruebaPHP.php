<?php

	echo $_SERVER['DOCUMENT_ROOT'];
	$target_path = "img/";
	$target_path = $target_path . basename( $_FILES['archivo-a-subir']['name']);

	if(move_uploaded_file($_SERVER['DOCUMENT_ROOT']."Chat_PHP/".$_FILES['archivo-a-subir']['tmp_name'], $target_path)) { 
		echo "El archivo ". basename( $_FILES['archivo-a-subir']['name'])." ha sido subido exitosamente!"; 
	} 
	else{ 
		echo "Hubo un error al subir tu archivo! Por favor intenta de nuevo."; 
	}

?>