class Quiz
  constructor: ($el) ->
    @$el = $el

    @$options      = @$el.find('.question-options')
    @$question     = @$el.find('.question')
    @$answer       = @$el.find('.answer')
    @answerKey     = parseInt @$answer.data('key'), 10
    @$nextQuestion = @$el.find('.next-question')
    console.log @$nextQuestion

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
      @addParam()
    else
      @$el.addClass('is-incorrect')

  addParam: ->
    @$nextQuestion.attr 'href', (i, h) ->
      return h + (if h.indexOf('?') != -1 then "&correct=1" else "?correct=1")

$ ->
  new Quiz $('.quiz')
