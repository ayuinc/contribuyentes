// Ancor scroll
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
   if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        	}, 1000);
        			return false;
      }
    }
  });
});


$(document).ready(function(){
  var link = $(".imgClass"),
      modal = $(".modal"),
      img = $(".modal img");

  link.click(function(){
      modal.css({"display":"block"});
       img.attr("src", $(this).find("img").attr("src"));
  });

  modal.click(function(){
      modal.css({"display":"none"});
  });
});