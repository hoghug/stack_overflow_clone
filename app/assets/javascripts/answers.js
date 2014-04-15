$(document).ready(function() {

  $('.glyphicon-heart, .glyphicon-chevron-up, .glyphicon-chevron-down').on('click', function() {
    $(this).parent('form').submit();
  })

})
