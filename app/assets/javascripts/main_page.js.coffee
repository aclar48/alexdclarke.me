$(window).scroll ->
  scroll_pos = $(window).scrollTop()
  if scroll_pos < 300
    $('.navbar').css('background-color', 'rgba(51, 70, 78,' + (400 - scroll_pos)/400 + ')' )
  else
    $('.navbar').css('background-color', 'rgba(51, 70, 78, 0.25)' )
