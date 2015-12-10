
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
$(document).ready(function(){

      var newTop = $('.hdr-image').height();
    $('.main-content').css('top', newTop);
    $('.main-content').css('height', newTop);

});

$(window).resize(function(){

      var newTop = $('.hdr-image').height();
    $('.main-content').css('top', newTop);
    $('.main-content').css('height', newTop);

});



// $(document).ready(function(){

//     var animationSpeed = 1000;
//     var pause = 5000;
//     var currentSlide = 1;

//     var $slider = $('#slider');
//     var $sliderContainer = $slider.find('.slides');
//     var $slides = $slider.find('.slide');


//     var interval;

//     function startSlider(){
//         interval = setInterval(function(){
//             $sliderContainer.animate({'margin-top': '-='+$slides.find('img').height()}, animationSpeed, function() {
//                 currentSlide++;
//             if(currentSlide == $slides.length ){
//                 currentSlide = 1;
//                 $sliderContainer.css('margin-top', 0);
//                 }
//             });
//         }, pause);
//     }
//     function pauseSlider(){
//         clearInterval(interval);
//     }

//     $slider.on('mouseenter', pauseSlider).on('mouseleave', startSlider);
// });



