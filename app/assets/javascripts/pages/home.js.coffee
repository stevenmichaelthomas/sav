#= require lib/jquery.cookie

$body = $(document.body)

$ ->
  homeCarousel = new Carousel($('.home-carousel'))
  homeCarousel.start()

  $(document.getElementById('mobile-nav-trigger')).on 'click', (e) ->
    e.preventDefault()
    $body.toggleClass('with-mobile-nav')
