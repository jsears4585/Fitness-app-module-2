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
//= require rails-ujs
//= require turbolinks

//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables

//= require fusioncharts/fusioncharts
//= require fusioncharts/fusioncharts.charts
//= require fusioncharts/themes/fusioncharts.theme.fint

//= require_tree .

$(document).ready(function() {
  $('#user-history, #challenge-people, #activity-analytics, #all-users').DataTable();
  $('#ava').on('click', function() {
    var arr = window.location.href.split("/");
    var user_id = arr[arr.length - 1];
    var avatar_id = $('.avatar').attr('data');
    var params = {
      user_id : user_id,
      avatar_id : avatar_id
    };
    $.post('/avatar', params, function(){
      $('#ava').hide(400);
    });
  });
});
