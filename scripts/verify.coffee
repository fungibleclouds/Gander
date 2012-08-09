saveEmail = (email) ->
  expiryDate = new Date()
  expiryDate.setMinutes(expiryDate.getMinutes() + 20)
  document.cookie = 
    'email=' + email + '; ' +
    'expires=' + expiryDate.toGMTString() + '; path=/'

readEmail = ->
  for cookie in document.cookie.split(';')
    if cookie?
      [name, value] = cookie.split('=')
      if name == 'email'
        return value
  null

requireFormFill = (e) ->
  canContinue = true
  locationOfError = 0
  for field in $('input')
    if not $(field).hasClass('optional-field') and not $(field).val()?.length
      $(field).addClass('error')
      $(field).prev().addClass('error')
      if canContinue
        locationOfError = $(field).prev()[0].offsetTop #position of label for field
      canContinue = false
    else
      $(field).prev().removeClass('error')
      $(field).removeClass('error')
  if not canContinue
    window.scrollTo 0, locationOfError
    e.preventDefault()
  canContinue

$('#log-in-email-field').blur (e) ->
  if (not readEmail()) or not (readEmail() == $(this).val()) and $(this).val().length > 0
    $('.new-account-helper').css('display', 'block')

$('#log-in-email-field').keypress (e) ->
  setTimeout (->
    if readEmail() == $('#log-in-email-field').val()
      $('.new-account-helper').css('display', 'none')),
    0

$('#sign-up').click (e) ->
  if requireFormFill e
    saveEmail $('#new-email-field').val()

    console.log(readEmail())
    alert readEmail()

$('#log-in').click requireFormFill
