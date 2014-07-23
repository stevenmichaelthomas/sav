class ContactForm
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
      url: '/contacts'
      data: formData
      type: 'POST'
      success: =>
        @$el.addClass('success')
      error: (data) =>
        @$el.addClass('with-ajax-error')

  validate: ->
    emailRegex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

    $name    = @$el.find('#contact_name')
    $email   = @$el.find('#contact_email')
    $message = @$el.find('#contact_message')

    @$el.removeClass('with-errors')
    @$el.find('.error').removeClass('error')

    if $name.val() == ''
      $name.addClass('error')

    if $email.val() == '' || !emailRegex.test($email.val())
      $email.addClass('error')

    if $message.val() == ''
      $message.addClass('error')

    if @$el.find('.error').length then false else true

$ ->
  new ContactForm(document.getElementById('new_contact'))
