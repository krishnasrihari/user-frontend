`import Ember from 'ember'`

UsersNewController = Ember.Controller.extend
	actions:
		save: ->
			@get('model').save().then =>
				@transitionToRoute 'users.index'

		cancel: -> @transitionToRoute 'users.index'

`export default UsersNewController`