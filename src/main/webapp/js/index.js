/*	$(".icon_play").hover( 
		function() {
		$(this).addClass("fa fa-play-circle");
	}, function(){
		$(this).removeClass("fa fa-play-circle");
	}
	);
*/
$().ready(function(){

$(".playlist_cover").hover(
  function() {

    $(this).find("i").addClass( "fa fa-play-circle fa-5x" );
    $(this).find("i").animate({opacity:0.7},600);
    $(this).find("img").animate({width:"106%",height:"106%",marginTop:"-3%",marginLeft:"-3%",opacity:0.75},300);
  }, function() {
    $(this).find("i").animate({opacity:0},600);
    $(this).find("i").removeClass( "fa fa-play-circle fa-5x" );
    $(this).find("img").animate({width:"100%",height:"100%",marginTop:0,marginLeft:0,opacity:1},300);
  }
);

$(".playlist-cover").hover(
  function() {

    $(this).find("i").addClass( "fa fa-play-circle fa-5x" );
    $(this).find("i").animate({opacity:0.7},600);
    $(this).find("img").animate({width:"106%",height:"106%",marginTop:"-3%",marginLeft:"-3%",opacity:0.75},300);
  }, function() {
  	$(this).find("i").animate({opacity:0},600);
    $(this).find("i").removeClass( "fa fa-play-circle fa-5x" );
    $(this).find("img").animate({width:"100%",height:"100%",marginTop:0,marginLeft:0,opacity:1},300);
  }
);

})
