$( document ).on('turbolinks:load', function() {
  var $navbarBurgers = Array.prototype.slice.call(
    document.querySelectorAll('.navbar-burger'), 0
  );
  // Check if there are any nav burgers
  if ($navbarBurgers.length > 0) {
    // Add a click event on each of them
    $navbarBurgers.forEach(function ($el) {
      $el.addEventListener('click', function () {
        // Get the target from the "data-target" attribute
        var target = $el.dataset.target;
        var $target = document.getElementById(target);
        // Toggle the class on both the "navbar-burger" and the "navbar-menu"
        $el.classList.toggle('is-active');
        $target.classList.toggle('is-active');
      });
    });
  };

  // It shows the effect Smooth scrolling.
  $(function() {
    $('a[href*=\\#]:not([href=\\#])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') &&
        location.hostname == this.hostname) {
        var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length){
          $('html,body').animate( {
              scrollTop: target.offset().top
          }, 1000);
          return false;
        }
      }
    });
  });

  // Add return to top button
  $(function() {
      var scrollArrow = $("#container-floating");
      $(window).scroll(function(event) {
          height = $(event.target).scrollTop();
          if (height > 250) {
            scrollArrow.removeClass("scrollArrowActive");
          }   else {
            scrollArrow.addClass("scrollArrowActive");
          }
      });
  });

  // jQuery(document).ready(function($){
  // 	var $timeline_block = $('.cd-timeline-block');
  //
  // 	// hide timeline blocks which are outside the viewport
  // 	$timeline_block.each(function(){
  // 		if($(this).offset().top > $(window).scrollTop()+$(window).height()*0.75) {
  // 			$(this).find('.cd-timeline-img, .cd-timeline-content').addClass('is-hidden');
  // 		}
  // 	});
  //
  // 	// on scolling, show/animate timeline blocks when enter the viewport
  // 	$(window).on('scroll', function(){
  // 		$timeline_block.each(function(){
  // 			if( $(this).offset().top <= $(window).scrollTop()+$(window).height()*0.75 && $(this).find('.cd-timeline-img').hasClass('is-hidden') ) {
  // 				$(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden').addClass('bounce-in');
  // 			}
  // 		});
  // 	});
  // });


  // Produces width of .barChart
  // $(document).ready(function() {
  //   $('.graph-bar').each(function() {
  //      var dataWidth = $(this).data('value');
  //      $(this).css("width", dataWidth + "%");
  //   });
  // });
  //
  // // Positioning of .bubbleChart
  // $(document).ready(function() {
  //   $('.chart-bubble').each(function() {
  //     // Bubble Size
  //     var bubbleSize = $(this).data('value');
  //     $(this).css("width", function() {
  //       return (bubbleSize * 10) + "px"
  //     });
  //     $(this).css("height", function() {
  //       return (bubbleSize * 10) + "px"
  //     });
  //
  //     // Bubble Position
  //     var posX = $(this).data('x');
  //     var posY = $(this).data('y');
  //     $(this).css("left", function() {
  //       return posX - (bubbleSize * 0.5) + "%"
  //     });
  //     $(this).css("bottom", function() {
  //       return posY - (bubbleSize * 0.5) + "%"
  //     });
  //   });
  // });
  //
  //



  var donutEl = document.getElementById("donut").getContext("2d");
  var donut = new Chart(donutEl).Doughnut(
    data = {
      datasets: [{
          data: [10, 20, 30]
      }],

      // These labels appear in the legend and in the tooltips when hovering different arcs
      labels: [
          'Red',
          'Yellow',
          'Blue'
      ]
  });
});
