window.addEventListener('load', inicio, true);

function inicio(){

	document.getElementById("enviar").addEventListener('click', comprueba, true);
	document.getElementById("escribir").addEventListener('keypress', compruebaPresion, true);

	function compruebaPresion(letra){

		var teclaPulsada = letra.keyCode;

        if (teclaPulsada == 13) {
			comprueba();
		}

	}


	function comprueba(){

		var textoEnviar = document.getElementById("escribir").value;

		if(textoEnviar == ""){
			alert("No se permite campos vacios");
		}
		else if(textoEnviar == " "){
			alert("No se permite enviar un espacio");
		}
		else{
			var user = document.getElementById("usuario").innerHTML;
			var men = document.getElementById("escribir").value;

			enviar();
			enviaDB(user, men);

		}

	}

	function enviar(){

		var texto = "<span class='mensaje'><p>" + document.getElementById("escribir").value + "</p></span>";

		document.getElementById("chat").innerHTML = document.getElementById("chat").innerHTML + texto;
		document.getElementById("escribir").value = "";
	}

	function enviaDB(user, men){
			var parametros = {
					"usuario" : user,
					"mensaje" : men
			};
			$.ajax({
					data:  parametros,
					url:   'php/enviarMensaje.php',
					type:  'post',
					beforeSend: function () {
					},
					success:  function (response) {
					},
					error: function (error) {
						alert(error);
					}
			});
	}


}
