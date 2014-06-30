#-----------------------------------------------------------------------------
# General purpose carousel
#-----------------------------------------------------------------------------

class @Carousel

  duration: 8000

  #-----------------------------------------------------------------------------
  # Constructor
  #-----------------------------------------------------------------------------

  constructor: (el) ->
    @$el = $(el)

    @$carouselItems = @$el.find('.carousel-item')
    @$navItems      = @$el.find('.carousel-nav-item')

    @$el.on('click', '.carousel-nav-item',    @_onClick)
    @$el.on('click', '.carousel-arrow-left',  @_arrowPrev)
    @$el.on('click', '.carousel-arrow-right', @_arrowNext)

    @currentIndex = 0
    @carouselSize = @$carouselItems.size()


  #-----------------------------------------------------------------------------
  # Instance Methods
  #-----------------------------------------------------------------------------

  start: =>
    @to(@currentIndex)

    if @carouselSize > 1
      @timeout = setTimeout(@_loop, @duration)

  stop: ->
    clearTimeout(@timeout)

  to: (index) ->
    @currentIndex =
      if index >= @carouselSize
        0
      else if index < 0
        @carouselSize - 1
      else
        index

    @$navItems.removeClass('active')
    @$carouselItems.removeClass('active')

    @$carouselItems.eq(@currentIndex).addClass('active')
    @$navItems.eq(@currentIndex).addClass('active')

  prev: =>
    @to(@currentIndex - 1)

  next: =>
    @to(@currentIndex + 1)


  #-----------------------------------------------------------------------------
  # Private Methods
  #-----------------------------------------------------------------------------

  _loop: =>
    @next()
    @timeout = setTimeout(@_loop, @duration)

  _arrowPrev: (event) =>
    event.preventDefault()
    @stop()
    @prev()

  _arrowNext: (event) =>
    event.preventDefault()
    @stop()
    @next()

  _onClick: (event) =>
    event.preventDefault()

    if state = event.currentTarget.getAttribute('data-state')
      @to(~~parseInt(state, 10))
      @stop()
