class SupportForm
  constructor: (el) ->
    @$el = $(el)

    @$el.on 'submit', (e) =>
      e.preventDefault()
      @submit()

  submit: ->
    formData = @$el.serialize()

    unless @validate()
      @$el.addClass('with-errors')
      return false

    $.ajax
      url: '/supports'
      data: formData
      type: 'POST'
      success: =>
        @$el.addClass('success')
      error: (data) =>
        @$el.addClass('with-ajax-error')

  validate: ->
    emailRegex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

    $name    = @$el.find('#support_name')
    $email   = @$el.find('#support_email')
    $program = @$el.find('#support_program')

    @$el.removeClass('with-errors')
    @$el.find('.error').removeClass('error')

    if $name.val() == ''
      $name.addClass('error')

    if $email.val() == '' || !emailRegex.test($email.val())
      $email.addClass('error')

    if $program.val() == ''
      $program.addClass('error')

    if @$el.find('.error').length then false else true

$ ->
  new SupportForm(document.getElementById('new_support'))
