$(function(){

  var help_displayed = false;

  /* Set the width of the help menu bar */
  var help_menu_width = 320;



  /* Ensure that the help menu is as tall as the document */

  $('.slide-out-help').css('height', $(document).height());



  /* Show sidebar when question mark icon is clicked */

  $('.help-button').on('click', 1500, function(){
    help_menu_id = $(this).attr("href");
    help_menu = $(help_menu_id);
    toggle_sidebar(help_menu);
  });



  /* Dismiss sidebar when arrow icon is pressed */

  $('.dismiss-arrow').on('click', function(){
    toggle_sidebar($(this).parent().parent());
  });



  /* Highlight form section with focus */

  $('.form-section').on('focusin', function(){
    $('.form-section').removeClass('active');
    $(this).addClass('active');
  });



  /* Place cursor in first form field on page load */

  $('.form-section.active input').focus();


  /*** Helper Functions ***/

  function toggle_sidebar(sidebar) {
    resizing_operation = help_displayed ? "-=" : "+=";
    sidebar.animate({ width: resizing_operation + help_menu_width });
    help_displayed = !help_displayed
  }

});
