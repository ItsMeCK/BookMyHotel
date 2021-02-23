// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require signature_pad
//= require chartkick
//= require Chart.bundle
//= require bootstrap-sprockets

//= require_tree .


$(function () {
  // Sorting and pagination links.
  
  // Search form.
  $('#customers_search').submit(function () {
    $.get(this.action, $(this).serialize(), null, 'script');
    return false;
  });

   $('#booking_check_out_1i').change(function () {
    $.get("/rooms/get_available_rooms", $(this).serialize(), null, 'script');
    return false;
  });

});