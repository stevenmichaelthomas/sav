$ ->
  homeCarousel = new Carousel($('.home-carousel'))
  homeCarousel.start()

  $('.gbv-stat').each (i, el) ->
    $(el).waypoint () ->
      $(el).addClass('active')
    , {
      offset: 300
    }
