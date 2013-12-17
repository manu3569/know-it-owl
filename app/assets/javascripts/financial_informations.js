$(function(){

  /* Help Menu Configuration Options */

  var help_menu_width = 320;
  var help_menu_slide_out_time = 1000;
  var help_text_crossfade_time = 200;




  /* Set the width of the help menu bar */

  var help_displayed = false;
  var current_help_text_id = null;


  /* Ensure that the help menu is as tall as the document */

  $('#slide-out-help').css('height', $(document).height());



  /* Show sidebar when question mark icon is clicked */

  $('.help-button').on('click', help_menu_slide_out_time, function(){
    help_text_id = $(this).attr("href").substring(1);
    toggle_help_text(help_text_id);
  });



  /* Dismiss sidebar when arrow icon is pressed */

  $('.dismiss-arrow').on('click', function(){
    toggle_help_text($(this).parent().attr("id"));
  });



  /* Highlight form section with focus */

  $('.form-section').on('focusin', function(){
    $('.form-section').removeClass('active');
    $(this).addClass('active');
  });



  /* Place cursor in first form field on page load */

  $('.form-section.active input').focus();



  /*** Helper Functions ***/

  function toggle_help_text(help_text_id) {

    help_text = $('#'+help_text_id);
    sidebar = help_text.parent();

    if (help_displayed) {
      if (current_help_text_id == help_text_id) {
        // hide menu
        sidebar.animate(
          { width: "-=" + help_menu_width },
          'swing',
          function(){
            help_text.hide();
          }
        );
        help_displayed = !help_displayed;
        current_help_text_id = null;
      } else {
        swap_help_texts(current_help_text_id, help_text_id);
        current_help_text_id = help_text_id;
      }

    } else {
      // show menu
      help_text.show();
      sidebar.animate({ width: "+=" + help_menu_width });
      help_displayed = !help_displayed;
      current_help_text_id = help_text_id;
    }

  }


  function swap_help_texts(before_id, after_id) {
    $('#' + before_id).fadeOut(help_text_crossfade_time, function(){
      $('#' + after_id).fadeIn(help_text_crossfade_time);
    });
  }

});
