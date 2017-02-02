`import Ember from 'ember'`

UsersEditController = Ember.Controller.extend
	actions:
		save: ->
			@get('model').save().then =>
				@transitionToRoute 'users.index'

		cancel: -> @transitionToRoute 'users.index'

`export default UsersEditController`