$(document).ready ->
  $('.main-button').click ->
    $('html, body').animate { scrollTop: 0 }, 'slow'


  $('.exp-button').click ->
    $('html, body').animate { scrollTop: $('.experience-page').offset().top }, 'slow'


  $('.projects-button').click ->
    $('html, body').animate { scrollTop: $('.projects-page').offset().top }, 'slow'


  $('.resume-button').click ->
    $('html, body').animate { scrollTop: $('.resume-page').offset().top }, 'slow'


  $('.contact-button').click ->
    $('html, body').animate { scrollTop: $('.contact-page').offset().top }, 'slow'