$(function(){

  $('#income-help-button').sidr({
    name: 'income-help',
    side: 'right'
  });

  $('#savings-help-button').sidr({
    name: 'savings-help',
    side: 'right'
  });

  $('#retirement-help-button').sidr({
    name: 'retirement-help',
    side: 'right'
  });

  $('.form-section').on('focusin', function(){
    $('.form-section').removeClass('active');
    $(this).addClass('active');
  });

  $('.form-section.active input').focus();

});
