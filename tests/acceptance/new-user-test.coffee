`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from 'user-frontend/tests/helpers/start-app'`

module 'Acceptance: NewUser',
  beforeEach: ->
    @application = startApp()
    ###
    Don't return anything, because QUnit looks for a .then
    that is present on Ember.Application, but is deprecated.
    ###
    return

  afterEach: ->
    Ember.run @application, 'destroy'

test 'visiting /new-user', (assert) ->
  visit 'users/new'

  andThen ->
    assert.equal currentURL(), 'users/new'

