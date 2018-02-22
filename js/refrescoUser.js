$(document).ready(function() {
   var refreshId =  setInterval( function(){
    $('#usuarios').load('php/colocarUsuarios.php');
}, 10 );
});
