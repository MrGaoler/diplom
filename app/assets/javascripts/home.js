$(window).scroll(function (){

  //Header Paralax
  var wScroll = $(this).scrollTop();

  $('header h1').css({
    'transform' : 'translate(0px, '+ wScroll / 3 +'px)'
  });

  //Landing Elements
  if(wScroll > $('.clothes').offset().top - ($(window).height() / 1.2)) {

    $('.clothes figure').each(function(i){

      //Delay
      setTimeout(function(){
        $('.clothes figure').eq(i).addClass('show');
      }, 150 * (i+1));

    });

  }


});
