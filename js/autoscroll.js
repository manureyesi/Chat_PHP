window.addEventListener('load', scroll, true);

function scroll(){

	var alto = $("#chat").height() + $("#chat").scrollTop();
	$("#chat").animate({scrollTop:alto+"px"});
}
