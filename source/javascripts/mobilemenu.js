$(document).ready(function() {
  $('.sideNav__mobileButton').click(function(e) {
  $(this).parent().parent().toggleClass('open');
  $(this).html($(this).html() == 'close' ? 'menu' : 'close');
    e.preventDefault();
  });
});
