#= require active_admin/base

$(document).ready ->
  console.log 'ready!'
  audio = $('#word')
  $('.play').click ->
    audio.get(0).play()
