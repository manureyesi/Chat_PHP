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
			var emiso = document.getElementById("emisor").innerHTML;

			enviar();
			enviaDB(emiso, user, men);

		}

	}

	function enviar(){

		var texto = "<span class='mensaje'><p>" + document.getElementById("escribir").value + "</p></span>";

		document.getElementById("chat").innerHTML = document.getElementById("chat").innerHTML + texto;
		document.getElementById("escribir").value = "";

		var alto = $("#chat").height() + $("#chat").scrollTop()*5;
		$("#chat").animate({scrollTop:alto+"px"});
		
	}

	function enviaDB(emiso, user, men){
			var parametros = {
					"emisor" : emiso,
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
