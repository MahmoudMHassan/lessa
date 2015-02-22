$(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);

$(document).ready(function() {
	var div = $('fawzy');
	$(document).click(function(){
		if (div.hasClass("abc")) {
			div.animate({height: '0px', width: '0px',opacity: '0.4' , }, "slow",function(){
        		div.hide();
        	});
        	div.removeClass("abc");
		};
	});
  $(".trigger").click(function() {
    $(".menu").toggleClass("active"); 
        
  });
});



$(document).ready(function(){

    $(".rotater").click(function(){

         $("fawzy").css({"font-size": "200%" , "  border-radius":"50%" , "background": "rgba(255, 255, 255, 0.5)"} );

        var div = $("fawzy");
        if (div.hasClass("abc")){
        	div.animate({height: '0px', width: '0px',opacity: '0.1' , }, "slow",function(){
        		div.hide();
        		div.removeClass("abc");
        		div.css('z-index', '15');
        	});
        } else {
        	div.show();
        	div.animate({height: '200px',width:'400px',opacity: '1' }, "slow", function(){
				div.addClass("abc");
        	});
        }
    });

});

$(document).ready(function(){
    $(".rotater").click(function(){
        if (!$('fawzy').hasClass("abc")) {
            if ($(this).hasClass("ahmed")) {
            
            $(".text2").html("Ahmed Raafat " );
            $(".text2").prepend('<img src="img/ahmed.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')


        } else if ($(this).hasClass("osh")) {
            $(".text2").text("Ahmed Hesham");
            $(".text2").prepend('<img src="img/osh.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')

        }else  if ($(this).hasClass("amal")) {
            $(".text2").text("Amal Lasheen");
            $(".text2").prepend('<img src="img/amal.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')

        } else if ($(this).hasClass("gohar")) {
            $(".text2").text("Mostafa Gohar");
            $(".text2").prepend('<img src="img/gohar.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')

        }else  if ($(this).hasClass("weam")) {
            $(".text2").text("Weam Mahmoud");
            $(".text2").prepend('<img src="img/weam.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')

        } else if ($(this).hasClass("kareem")) {
            $(".text2").text("Kareem Saleh");
            $(".text2").prepend('<img src="img/kareem.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')

        }else  if ($(this).hasClass("amr")) {
            $(".text2").text("Amr");
            $(".text2").prepend('<img src="img/amr.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')

        } else if ($(this).hasClass("bassem")) {
            $(".text2").text("Bassem");
            $(".text2").prepend('<img src="img/bassem.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')

        } else if ($(this).hasClass("mahmoud")) {
            $(".text2").text("Mahmoud");
            $(".text2").prepend('<img src="img/mahmoud.jpg" style= "width:100px ;height:100px ; margin: 10px 10px; border-radius: 10%">')
        }
        };
    });
});



