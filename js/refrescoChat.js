$(document).ready(function() {
   var refreshId =  setInterval( function(){
        

        /*var comprobar = false;

        if($(window).scrollTop() + $(window).height() == alto) {
            comprobar = true;
        }*/

        var user = document.getElementById("usuario").innerHTML;

        realizaProceso(user);

        function realizaProceso(valorGet){
                var parametros = {
                        "usuario" : valorGet
                };
                $.ajax({
                        data:  parametros,
                        url:   'php/colocarMensajeNuevos.php',
                        type:  'get',
                        beforeSend: function () {
                        },
                        success:  function (response) {
                                $("#chat").html(document.getElementById("chat").innerHTML + response);
                        }
                });
        }

        /*if(comprobar == true){



        }*/


}, 1000 );
});