# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('a.fancybox').fancybox({
    'transitionIn'  :   'fade',
    'transitionOut' :   'fade',
    'speedIn'       :   300,
    'speedOut'      :   200,
    'overlayShow'   :   false
    });
