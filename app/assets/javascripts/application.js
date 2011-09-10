

// FIXME: Tell people that this is a manifest file, real code should go into discrete files
// FIXME: Tell people how Sprockets and CoffeeScript works
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
   $('#notice').delay(500).fadeIn('normal', function() {
      $(this).delay(2500).fadeOut();
   });
});