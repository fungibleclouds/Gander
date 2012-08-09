requireFormFill = (e) ->
  canContinue = true
  locationOfError = 0
  for field in $('input')
    if not $(field).hasClass('optional-field') and not $(field).val()?.length
      $(field).addClass('error')
      if canContinue
        locationOfError = $(field).prev()[0].offsetTop #position of label for field
      canContinue = false
    else
      $(field).removeClass('error')
  if not canContinue
    window.scrollTo(0, locationOfError)
    e.preventDefault()

$('#sign-up').click requireFormFill
$('#log-in').click requireFormFill
