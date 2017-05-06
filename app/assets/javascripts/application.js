//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
    setTimeout("$('.alert').fadeOut('slow')", 3000);
});
