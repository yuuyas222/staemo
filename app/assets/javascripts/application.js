// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(function(){
    // トップ画面スライド
    $("#title-area").skippr({
       transition: "slide",
       speed: 1000, 
       easing: "easeInOutQuart",
       navType: "bubble",
       childrenElementType: "div",
       arrows: false,
       autoPlay: true,
       autoPlayDuration: 8000,
       keyboardOnAlways: true,
       hidePrevious: false
    });
    $("#title").fadeToggle(6000)

    // ハンバーガーアイコン　425px以下時作動

    $('.menu-trigger').on('click', function(event){
        $(this).toggleClass('open');
        $('#hm-menu').fadeToggle();
        event.preventDefault();
    });
    
    
// ロード中にスピーナーのコード　確認要   
//  window.onload = function() {
//         let spinner = document.getElementById('preloader');
//         spinner.classList.add('loaded');
//     }
    
//     var _window = $(window),
//         _header = $('header'),
//         topBottom;
    
//     _window.on('scroll', function(){
//         topBottom = $('.top').height();
//         if(_window.scrollTop() > topBottom){
//             _header.addClass('fixed');
//         }
//         else{
//             _header.removeClass('fixed');
//         }
//     });

//     _window.trigger('scroll');
    
});
