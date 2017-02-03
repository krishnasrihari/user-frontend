`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from 'user-frontend/tests/helpers/start-app'`

module 'Acceptance: User',
  beforeEach: ->
    @application = startApp()
    ###
    Don't return anything, because QUnit looks for a .then
    that is present on Ember.Application, but is deprecated.
    ###
    return

  afterEach: ->
    Ember.run @application, 'destroy'

test 'visiting /users', (assert) ->
  visit '/users'

  andThen ->
    assert.equal currentURL(), '/users'
