// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
function menuFilterResponsive(menuFilter, displayButton) {
  if (menuFilter.className.match(/after/)) {
    menuFilter.className = 'col-sm-3 col-xs-12 text-center-xs menu-filter';
    console.log(menuFilter.className);
  } else {
    menuFilter.className += ' after';
    console.log(menuFilter.className);
  }
}
window.onload = function() {
  //Si le menu existe alors on est sur une page correspondante
  if (document.getElementsByClassName('menu-filter')[0]) {
    var menuFilter = document.getElementsByClassName('menu-filter')[0];
    var displayButton = document.getElementsByClassName('display-filter')[0];
    displayButton.addEventListener('click', function() {
      if (window.innerWidth < 768) {
        menuFilterResponsive(menuFilter, displayButton);
      }
    }, false);
  }
}
