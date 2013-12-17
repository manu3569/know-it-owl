$(function(){

  var help_displayed = false;

  /* Set the width of the help menu bar */
  var help_menu_width = 320;

  /* Ensure that the help menu is as tall as the document */
  $('.slide-out-help').css('height', $(document).height());

  $('.help-button').on('click', 1500, function(){
    help_menu_id = $(this).attr("href");
    help_menu = $(help_menu_id);
    toggle_sidebar(help_menu);
  });

  $('.dismiss-arrow').on('click', function(){
    toggle_sidebar($(this).parent().parent());
  });

  function toggle_sidebar(sidebar) {
    resizing_operation = help_displayed ? "-=" : "+=";
    sidebar.animate({ width: resizing_operation + help_menu_width });
    help_displayed = !help_displayed
  }



  $('.form-section').on('focusin', function(){
    $('.form-section').removeClass('active');
    $(this).addClass('active');
  });


  $('.form-section.active input').focus();

});
