window.addEventListener('load', scroll, true);

function scroll(){

	var alto = $("#chat").height() + $("#chat").scrollTop()*5;
	$("#chat").animate({scrollTop:alto+"px"});
}
