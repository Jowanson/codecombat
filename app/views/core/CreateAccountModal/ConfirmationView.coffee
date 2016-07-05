CocoView = require 'views/core/CocoView'
State = require 'models/State'
template = require 'templates/core/create-account-modal/confirmation-view'
forms = require 'core/forms'

module.exports = class ConfirmationView extends CocoView
  id: 'confirmation-view'
  template: template
  
  events:
    'click #start-btn': 'onClickStartButton'

  initialize: ({ @signupState } = {}) ->

  onClickStartButton: ->
    classroom = @signupState.get('classroom')
    if @signupState.get('path') is 'student'
      application.router.navigate('/', {replace: true})
      application.router.navigate('/courses')
    else
      application.router.navigate('/play')
    document.location.reload()
