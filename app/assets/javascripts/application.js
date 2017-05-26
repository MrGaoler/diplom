//= require jquery
//= require bootstrap-sprockets
//= require jquery.remotipart
//= require jquery_ujs
//= require lightbox-bootstrap
//= require_tree .

$(document).on('ready', function() {
  setTimeout("$('.alert').fadeOut('slow')", 3000);

  $(document).on('click', '[data-toggle="lightbox"]', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
  });
});
