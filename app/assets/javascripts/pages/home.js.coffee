#= require lib/jquery.cookie

$body = $(document.body)

$ ->
  homeCarousel = new Carousel($('.home-about-carousel'))

  $('.home-splash').addClass('animate')

  $('.home-splash-choices').on 'click', 'a', (e) ->
    e.preventDefault()
    choice = $(e.currentTarget).data('choice')
    $.cookie('sav_choice', choice)
    $body.removeClass('with-choices')
    homeCarousel.start()
