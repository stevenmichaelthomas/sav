#= require lib/jquery.cookie

$body = $(document.body)

$ ->
  homeCarousel = new Carousel($('.home-carousel'))
  homeCarousel.start()
