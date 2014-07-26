#= require jquery
#= require jquery_ujs

#= require carousel
#= require lib/jquery.autosize

$body = $(document.body)

$ ->
  $("textarea").autosize()

  $(document.getElementById('mobile-nav-trigger')).on 'click', (e) ->
    e.preventDefault()
    $body.toggleClass('with-mobile-nav')
