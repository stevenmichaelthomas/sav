class Quiz
  constructor: ($el) ->
    @$el = $el

    @$options  = @$el.find('.question-options')
    @$question = @$el.find('.question')
    @$answer   = @$el.find('.answer')
    @answerKey = parseInt @$answer.data('key'), 10

    @$form = @$el.find('form').on('submit', @submit)

  submit: (e) =>
    e.preventDefault()

    if @answerSelected()
      @checkAnswer()
      @showAnswer()

  showAnswer: ->
    @$el.addClass('is-answered')

  answerSelected: ->
    !!@$options.find('input:checked').length

  answerIndex: ->
    @$options
      .find('input:checked')
      .closest('.form-input')
      .index('.form-input')

  checkAnswer: ->
    if @answerIndex() == @answerKey
      @$el.addClass('is-correct')
    else
      @$el.addClass('is-incorrect')


$ ->
  new Quiz $('.quiz')
